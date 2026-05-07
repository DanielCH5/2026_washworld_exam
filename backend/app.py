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


############################################################
############################################################
#############      CAR API FUNCTIONS    ####################
############################################################
############################################################
############################################################
@app.post("/car")
def create_car():
    #TODO USER_FK FROM SESSION
    try:
        #user_fk = session["user"]["user_pk"]
        user_fk = x.validate_uuid4(request.form.get("user_pk", "",))
        car_pk = x.validate_license_plate(request.form.get("car_pk", "",))
        model_fk = x.validate_uuid4(request.form.get("model_pk", "",))
        car_nickname = x.validate_nickname(request.form.get("car_nickname", ""))
        car_electric = x.validate_electric(request.form.get("car_electric", ""))
        car_deleted_at = 0
        db, cursor = x.db()

        q = "INSERT INTO `cars`(`car_pk`, `user_fk`, `model_fk`, `car_nickname`, `car_electric`, `car_deleted_at`) VALUES (%s,%s,%s,%s,%s,%s)"
        cursor.execute(q, (car_pk, user_fk, model_fk, car_nickname, car_electric, car_deleted_at))
        db.commit()

        return "car created", 201
    except Exception as ex:
        if "company_exception key" in str(ex):
            return "Invalid key", 400
        if "company_exception license plate" in str(ex):
            return "Invalid license plate", 400
        if "company_exception nickname" in str(ex):
            return f"Nickname must be between {x.NICKNAME_MIN} to {x.NICKNAME_MAX}", 400
        if "company_exception electric" in str(ex):
            return "Car electric must be 0 or 1", 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
        

##############################
@app.get("/car/<car_pk>")
def get_car(car_pk):
    try:
        db, cursor = x.db()
        car_pk = x.validate_license_plate(car_pk)
        q = "SELECT * FROM `cars` WHERE car_pk=%s"
        cursor.execute(q, (car_pk,))
        car = cursor.fetchone()
        return car
    except Exception as ex:
        if "company_exception license plate" in str(ex):
            return "Invalid license plate", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()



##############################
@app.get("/cars/<user_fk>")
def get_cars(user_fk):
    try:
        db, cursor = x.db()
        user_fk = x.validate_uuid4(user_fk)
        q = "SELECT * FROM `cars` WHERE user_fk=%s"
        cursor.execute(q, (user_fk,))
        cars = cursor.fetchall()

        return cars
    except Exception as ex:
        if "company_exception key" in str(ex):
            return "Invalid key", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

@app.patch("/car/<car_pk>")
def update_car(car_pk):
    try:
        car_nickname = x.validate_nickname(request.form.get("car_nickname", ""))
        car_pk = x.validate_license_plate(car_pk)
        db, cursor = x.db()
        q = "UPDATE `cars` SET car_nickname=%s WHERE car_pk=%s"
        cursor.execute(q, (car_nickname, car_pk))
        db.commit()

        return "car updated"
    except Exception as ex:
        if "company_exception nickname" in str(ex):
            return f"Nickname must be between {x.NICKNAME_MIN} to {x.NICKNAME_MAX}", 400
        if "company_exception license plate" in str(ex):
            return "Invalid license plate", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()


@app.delete("/car/<car_pk>")
def delete_car(car_pk):
   try: 
        db, cursor = x.db()
        car_pk = x.validate_license_plate(car_pk)
        q = 'DELETE FROM `cars` WHERE car_pk=%s'
        cursor.execute(q, (car_pk, ))
        db.commit()
        return "car deleted", 200
   except Exception as ex:
       if "company_exception license plate" in str(ex):
            return "Invalid license plate", 400
       return str(ex), 500
   finally:
       if "cursor" in locals(): cursor.close()
       if "db" in locals(): db.close()
   
############################################################
############################################################
#############     USER API FUNCTIONS    ####################
############################################################
############################################################
############################################################


######################### SIGN UP APIs AND VERIFICATION #########################
@app.post("/user-signup")
def user_signup():
    try:
        # TODO: Validate user input
        user_first_name = x.validate_name(request.form.get("user_first_name", ""), "user_first_name").capitalize()
        user_last_name = x.validate_name(request.form.get("user_last_name", ""), "user_last_name").capitalize()
        user_email = x.validate_email(request.form.get("user_email", ""))
        user_password = x.validate_user_password(request.form.get("user_password", ""))

        user_pk = uuid.uuid4().hex
        user_hashed_password = generate_password_hash(user_password)

        user_created_at = int(time.time())
        user_verified_at = 0
        user_changed_at = 0
        user_deleted_at = 0
        user_reset_at = 0

        user_reset_password_key = uuid.uuid4().hex
        user_verification_key = uuid.uuid4().hex


        
        
        db, cursor = x.db()
        q = "INSERT INTO users VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

        cursor.execute(q, (user_pk, user_first_name, user_last_name, 
        user_email, user_hashed_password, user_created_at, user_verified_at, user_changed_at,
        user_deleted_at, user_reset_at, user_reset_password_key, user_verification_key))

        db.commit()

        html = render_template("email_welcome.html", user_verification_key=user_verification_key, user_first_name=user_first_name, user_last_name=user_last_name)

        x.send_email("Please verify your account", html, user_email)
        # TODO: Specify return values and the structure of the json objects we should return
        return "User created", 201
    except Exception as ex:
        ic(ex)
        if "company_exception user_first_name" in str(ex): 
            return f"First name must be between {x.NAME_MIN} and {x.NAME_MAX}", 400
        if "company_exception user_last_name" in str(ex): 
            return f"Last name must be between {x.NAME_MIN} and {x.NAME_MAX}", 400
        if "company_exception email" in str(ex):
            return "Please enter a valid email", 400
        if "company_exception user_password" in str(ex):
            return f"Password must be between {x.USER_PASSWORD_MIN} to {x.USER_PASSWORD_MAX}", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()


##############################
@app.get("/verify/<key>")
def user_verify_account(key):
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

        if not rows:
            return "User already verified", 400 # If the user clicks the link again, this will get returned
        
        db.commit()
        return f"User is verified with key {key}"
    except Exception as ex:
        ic(ex)
        if "company_exception key" in str(ex):
            return "Invalid verification key", 400         
        
        return str(ex), 500

    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

######################### LOGIN API AND RESET/CHANGE    #########################
@app.post("/login")
def login():
    # Email
    # Password

    user_email = x.validate_email(request.form.get("user_email", ""))
    user_password = x.validate_user_password(request.form.get("user_password", ""))

    ic(password)
    db, cursor = x.db()
    q = "SELECT user_first_name, user_hashed_password, user_last_name FROM users WHERE user_email = %s"
    cursor.execute(q, (email,))
    user = cursor.fetchone()
    ic(user)
    if not user:
        return "Invalid email or password", 400
    if not check_password_hash(user["user_hashed_password"], user_password):
            return "Invalid email or password", 400

    user_logged_in = {
        "name" : user["user_first_name"],
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
@app.get("/get-data")
def get_data():
    try:
        db, cursor = x.db()

        q = "SELECT * FROM locations"
        cursor.execute(q)
        locations = cursor.fetchall()



        return locations
    except Exception as ex:
        ic(ex)
        return "ups", 500
    
##############################
@app.get("/get-locations_da")
def get_locations_da():
    try:
        # TODO: Connect to db
        api_url = "https://washworld.dk/wp-json/ww/v1/locations?country=da" # Import location data from Washworld
        locations = requests.get(api_url).json() # Use request module to extract json data from the url = JSON objects with all the locations
        #count = 0
        db, cursor = x.db()

        
        for location in locations:
            location_pk = uuid.uuid4().hex
            location_name = location["name"]
            location_address = location["address"]
            location_lat = location["coordinates"]["y"]
            location_lon = location["coordinates"]["x"]
            location_open_hours = location["open_hours"] # Should we split this into open and close?
            location_wash_halls = location["service_units"]["hall"]["total_count"]
            location_empty_wash_halls = location["service_units"]["hall"]["total_count"] # Skal rettes til live updates
            location_self_wash = location["service_units"]["self_wash"]["total_count"]
            location_mat_cleaner = location["service_units"]["mat_cleaner"]["total_count"]
            location_vacuum = location["service_units"]["vacuum"]["total_count"]
            location_pre_wash = location["service_units"]["pre_wash"]["total_count"]

            # Washworld inserted decimals with a ",", split strings apart and insert comma for db

            location_max_meters_comma = location["max_height"].split(",")
            location_max_meters = ".".join(location_max_meters_comma)
            ic(location_max_meters)
            ic(location_name)
            location_max_mirror_width_meters_comma = location["mirror_length"].split(",")
            location_max_mirror_width_meters = ".".join(location_max_mirror_width_meters_comma)

            location_region = location["region_name"] # Could be in a regions table instead, idk

            location_end_url = location["url"]
            if location_end_url:
                split_string = location_end_url.split("/find-wash-world-vaskehal")
                location_end_url = split_string[1]
            
            location_image_end_url = location["image"]
            if location_image_end_url:
                split_string = location_image_end_url.split("/uploads")
                location_image_end_url = split_string[1]
                        
            
            match location_region:
                case "Sjælland":
                    region_fk = "1"
                case "Jylland":
                    region_fk = "2"
                case "Fyn":
                    region_fk = "3"

            q = "INSERT INTO locations VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
            cursor.execute(q, (location_pk, location_name, location_address, location_lat, location_lon,
            location_open_hours, location_wash_halls, location_empty_wash_halls, location_self_wash, location_mat_cleaner, location_vacuum,
            location_pre_wash, location_max_meters, location_max_mirror_width_meters, region_fk, location_end_url, location_image_end_url))
            db.commit()



            # Add to DB, should wait till we've designed the DB
            #ic(name, address, lat, lon, open_hours, wash_halls, self_wash, max_height_meters, max_mirror_width_meters, region, url,image_url,
            #mat_cleaner,
            #vacuum,
            #pre_wash)
            
        ic("done")
        #ic(count)
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

