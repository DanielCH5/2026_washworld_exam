from flask import Flask, render_template, request, jsonify
import uuid
import time
from werkzeug.security import generate_password_hash
from werkzeug.security import check_password_hash
import x
from flask_jwt_extended import JWTManager, create_access_token, jwt_required, get_jwt_identity
from flask_cors import CORS
import requests

from icecream import ic
ic.configureOutput(prefix=f"_____ | ", includeContext=True)

app = Flask(__name__)
CORS(app)  # allows everything

# Secret key (change this in production!)
app.config["JWT_SECRET_KEY"] = "super-secret-key"
jwt = JWTManager(app)

# Setting up .env variables
import os
from dotenv import load_dotenv 
load_dotenv() # Loads the .env variables

##############################
@app.post("/login")
def login():
    # Email
    # Password

    email = x.validate_email(request.form.get("email", ""))
    password = x.validate_user_password(request.form.get("password", ""))

    ic(password)
    db, cursor = x.db()
    q = "SELECT user_name, user_password, user_last_name FROM users WHERE user_email = %s"
    cursor.execute(q, (email,))
    user = cursor.fetchone()
    ic(user)
    if not user:
        return "Invalid credentials", 400
    if not check_password_hash(user["user_password"], password):
            return "Invalid credentials", 400

    user_logged_in = {
        "name" : user["user_name"],
        "last_name" : user["user_last_name"]
    }

    access_token = create_access_token(identity=str(user_logged_in))

    return jsonify(access_token=access_token)
##############################
@app.get("/profile")
@jwt_required()
def show_profile():
    return "profile"

##############################
@app.get("/login")
def show_login():
    return render_template("page_login.html")

##############################
@app.get("/")
def index():
    return jsonify({"status":"ok", "message":"Connected"})


##############################
@app.route("/people")
def get_people():
    return jsonify({
        "people": [
            {"first_name" : "Daniel", "last_name" : "Hansen", "cpr" : "1234567890"},
            {"first_name" : "A", "last_name" : "Aa", "cpr" : "2"},
            {"first_name" : "Bb", "last_name" : "BBB", "cpr" : "1"},
            ]
    })    
##############################
@app.get("/signup")
def show_signup():
    try:
        signup_page = render_template("page_signup.html")
        return signup_page
    except Exception as ex:
        ic(ex)
        str(ex), 500
##############################
@app.post("/signup")
def signup():
    try:
        # TODO: Validate user data
        user_pk = uuid.uuid4().hex
        user_name = x.validate_user_name(request.form.get("user_name", ""))
        user_last_name = x.validate_user_name(request.form.get("user_last_name", ""))
        email = x.validate_email(request.form.get("em", ""))
        verification_key = uuid.uuid4().hex
        password = x.validate_user_password(request.form.get("password", ""))
        hashed_password = generate_password_hash(password)
        ic(verification_key)
        
        user_reset_password_key = uuid.uuid4().hex + uuid.uuid4().hex
        ic(user_reset_password_key)
        
        db, cursor = x.db()
        q = "INSERT INTO users VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"

        cursor.execute(q, (user_pk, user_name, verification_key, 0, user_reset_password_key, email, hashed_password, user_last_name))

        db.commit()

        html = render_template("email_welcome.html", verification_key=verification_key)

        x.send_email("Please verify your account", html)
        return "Please check email maybe it arrived in spam folder"
    except Exception as ex:
        ic(ex)
        if "company_exception user_name" in str(ex): 
            return "user name invalid", 400
        if "company_exception email" in str(ex):
            return "Invalid email", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()


##############################
@app.get("/verify/<key>")
def verify_account(key):
    try:
        # TODO: Validate the key
        user_verification_key = x.validate_uuid4(key)
        user_verified_at = int(time.time())
        # TODO: Connect to the db
        db, cursor = x.db()
      
        
        
        # TODO: Update the verified_at column
        # TODO: Update the verification_key column

        q = "UPDATE users SET user_verification_key = 0, user_verified_at = %s WHERE user_verification_key = %s AND user_verified_at = 0"

        cursor.execute(q, (user_verified_at, key))
        rows = cursor.rowcount
        ic(rows)
        if not rows:
            raise Exception("company_exception no_user")
        db.commit()
        # TODO: Check for previous verification



        return f"User is verified with key {key}"
    except Exception as ex:
        ic(ex)
        if "company_exception key" in str(ex):
            return "Invalid verification key", 400

        if "company_exception no_user" in str(ex):
            return "User already verified", 400
        
        return str(ex), 500

    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
##############################

@app.get("/forgot-password")
def show_forgot_password():
    return render_template("page_forgot_password.html")
##############################
@app.get("/reset-password/<key>")
def show_reset_password(key):
    try:
        # TODO: Validate the key
        key_split = key.split("-")
        key = x.validate_uuid4_paranoia(key_split[0]) 
        key_time_stamp = key_split[0] + "-" + key_split[1]
        current_time = int(time.time())
        key_time = int(key_split[1])
        if current_time > (key_time + 3600):
            return "Link expired"
        # TODO: Connect to the db
        db, cursor = x.db()
        # TODO: Update the verified_at column
        # TODO: Update the verification_key column

        q = """SELECT user_reset_password_key FROM users WHERE user_reset_password_key = %s"""

        cursor.execute(q, (key,))
        row = cursor.fetchone()
        if not row: return "ups...", 400

        return render_template("page_reset_password.html", key=key_time_stamp)


        return f"User is verified with key {key}"
    except Exception as ex:
        ic(ex)
        if "company_exception key" in str(ex):
            return "Invalid key", 400

        if "company_exception no_user" in str(ex):
            return "Ups", 400
        
        return str(ex), 500

    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
##############################
@app.post("/reset-password")
def reset_password():
    try:
        key_split = request.form.get("key", "").split("-")
        ic(key_split)
        key = x.validate_uuid4_paranoia( key_split[0] )
        password = x.validate_user_password( request.form.get("password", "") ).strip()
        ic(password)
        confirm_password = x.validate_user_password( request.form.get("confirm-password","") ).strip()
        new_password = generate_password_hash(confirm_password)
        if password != confirm_password:
            return "Passwords do not match", 400

        new_key = uuid.uuid4().hex + uuid.uuid4().hex 
        # Check if key is in DB
        db, cursor = x.db()

        q = "UPDATE users SET user_password = %s, user_reset_password_key = %s WHERE user_reset_password_key = %s "
        cursor.execute(q, (new_password, new_key, key))

        if cursor.rowcount == 0:
            return "Ups...", 400
        db.commit()
        return "Password changed, please login"

    except Exception as ex:
        ic(ex)

        if "company_exception user_password" in str(ex):
            return f"Password must be between {x.USER_PASSWORD_MIN} to {x.USER_PASSWORD_MAX}", 400

        if "company_exception paranoia" in str(ex):
            return "Invalid key", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
##############################

@app.post("/forgot-password")
def forgot_password():
    try:
        email = x.validate_email( request.form.get("email", "") )
        db, cursor = x.db()
        q = "SELECT user_reset_password_key AS 'key' FROM users WHERE user_email = %s"
        cursor.execute(q, (email,))
        row = cursor.fetchone()
        ic(row)
        paranoia_uuid4 = row["key"]
        
        new_key_time_stamp = paranoia_uuid4 + "-" + str(int(time.time()))
        ic(new_key_time_stamp)
        if not row: return "Email not found", 400
        
        html = render_template("email_forgot_password.html", user_reset_password_key=new_key_time_stamp)

        x.send_email("Reset your password", html)

        return "Check your email"

    except Exception as ex:
        ic(ex)
        if "company_exception email" in str(ex):
            return "Invalid email", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()



##############################
@app.get("/get-locations_da")
def get_locations_da():
    try:
        # TODO: Connect to db
        api_url = "https://washworld.dk/wp-json/ww/v1/locations?country=da" # Import location data from Washworld
        locations = requests.get(api_url).json() # Use request module to extract json data from the url = JSON objects with all the locations
        count = 0

        
        for location in locations:
            location_pk = uuid.uuid4().hex
            name = location["name"]
            address = location["address"]
            lat = location["coordinates"]["y"]
            lon = location["coordinates"]["x"]
            open_hours = location["open_hours"] # Should we split this into open and close?
            wash_halls = location["service_units"]["hall"]["total_count"]
            self_wash = location["service_units"]["self_wash"]["total_count"]
            mat_cleaner = location["service_units"]["mat_cleaner"]["total_count"]
            vacuum = location["service_units"]["vacuum"]["total_count"]
            pre_wash = location["service_units"]["pre_wash"]["total_count"]
            max_height_meters = location["max_height"]
            max_mirror_width_meters = location["mirror_length"]
            region = location["region_name"] # Could be in a regions table instead, idk
            url = location["url"]
            image_url = location["image"]
            if wash_halls == 1:
                count = count + 1



            # Add to DB, should wait till we've designed the DB
            #ic(name, address, lat, lon, open_hours, wash_halls, self_wash, max_height_meters, max_mirror_width_meters, region, url,image_url,
            #mat_cleaner,
            #vacuum,
            #pre_wash)
            

        ic(count)
        return locations    

    except Exception as ex:
        ic(ex)
        return "xd", 400
    
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()


 

 

##############################

 

"""
##############################
@app.route("/forgot-password", methods=["GET", "POST"])
def show_forgot_password():
    if request.method == "GET":
        return render_template("page_forgot_password.html")
    
    if request.method == "POST":
        try:
        
        except Exception as ex:
            
        finally:
"""

