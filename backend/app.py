from flask import Flask, render_template, request, jsonify
import uuid
import time
from datetime import datetime, timedelta
from werkzeug.security import generate_password_hash
from werkzeug.security import check_password_hash
import x
from flask_jwt_extended import JWTManager, create_access_token, jwt_required, get_jwt, get_jwt_identity, set_access_cookies, unset_jwt_cookies
from flask_cors import CORS
import requests

from icecream import ic
ic.configureOutput(prefix=f"_____ | ", includeContext=True)

app = Flask(__name__)
CORS(app, supports_credentials=True, origins=["http://localhost:3000"])  # Change in Prod to actual domain

# Secret key (change this in production!)
app.config["JWT_TOKEN_LOCATION"] = ["cookies", "headers"]
app.config["JWT_SECRET_KEY"] = "super-secret-key"
app.config["JWT_COOKIE_SECURE"] = True # Cookies skal være sikre for at tillade CSRF i browser
app.config["JWT_COOKIE_SAMESITE"] = "None" # Tillader CSRF
app.config["JWT_COOKIE_CSRF_PROTECT"] = True

jwt = JWTManager(app)

# Setting up .env variables
import os
from dotenv import load_dotenv 
load_dotenv() # Loads the .env variables



##############################
@app.get("/addons")
def get_adddons():
    try:
        db, cursor = x.db()
        q = "SELECT * from addons"
        cursor.execute(q, ())
        addons = cursor.fetchall()
        ic(addons)

        return jsonify(addons), 200

    except Exception as ex:
        return ex, 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.get("/addons/<wash_pk>")
def get_addons_for_wash(wash_pk):
    try:
        wash_pk = x.validate_one_number(wash_pk)
        db, cursor = x.db()
        q = """SELECT a.addon_pk, a.addon_name FROM washes_addons wa
    JOIN addons a ON wa.addon_fk = a.addon_pk WHERE wa.wash_fk = %s;"""
        cursor.execute(q, (wash_pk,))
        addons = cursor.fetchall()
        ic(addons)

        return jsonify(addons), 200

    except Exception as ex:
        if "company_exception number" in str(ex):
            return jsonify({"message": "Invalid wash type"}),  400
        return ex, 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
##############################
@app.get("/location-status/<location_pk>")
def get_location_status(location_pk):
    try: 
        location_pk = x.validate_uuid4(location_pk)
        db, cursor = x.db()
        q = "SELECT location_status_message FROM `locations` WHERE location_pk = %s"
        cursor.execute(q, (location_pk,))
        location_status = cursor.fetchone()
        return jsonify(location_status), 200
    except Exception as ex:
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}),  400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()



##############################
@app.post("/order")
@jwt_required()
def create_order():
    try:
        order_pk = uuid.uuid4().hex
        user_fk = x.validate_uuid4(get_jwt_identity())
        order_time_at = int(time.time())
        location_fk = x.validate_uuid4(request.form.get("location_pk", "",))
        car_fk = x.validate_license_plate(request.form.get("car_pk", "",))
        addon_list = [x.validate_numbers_upto_12(a) for a in request.form.getlist("addon_pk")]
        car_status = "1"
        
        if x.check_car_active_order(car_fk):
            return jsonify({"message": "This car already has an active order"}), 400
        
        db, cursor = x.db()
        q = "INSERT INTO `orders` VALUES (%s, %s, %s, %s, %s, %s)"
        cursor.execute(q, (order_pk, user_fk, order_time_at, location_fk, car_fk, car_status ))
        db.commit()
        
        q = "Insert into `addons_orders` VALUES(%s, %s)"
        for addon_fk in addon_list:
            cursor.execute(q, (order_pk, addon_fk))
        db.commit()
        
        return jsonify({"message": "Order created"}), 201
    except Exception as ex:
        if "company_exception license plate" in str(ex):
            return jsonify({"message": "Invalid license plate"}), 400
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}),  400
        if "company_exception number" in str(ex):
            return jsonify({"message": "Invalid wash type"}), 400 
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.get("/order/<order_pk>")
@jwt_required() 
def get_order(order_pk):
    try:
        db, cursor = x.db()
        order_pk = x.validate_uuid4(order_pk)
        q = """SELECT 
    o.*,
    GROUP_CONCAT(ao.addon_fk) AS addon_list
FROM orders o
LEFT JOIN addons_orders ao 
    ON o.order_pk = ao.order_fk
WHERE o.order_pk = %s
GROUP BY o.order_pk
"""
        cursor.execute(q, (order_pk,))
        order = cursor.fetchone()

        return jsonify(order)
    except Exception as ex:
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.patch("/order/status/<car_pk>")
@jwt_required() 
def change_order_status(car_pk):
    try:
        car_pk = x.validate_license_plate(car_pk)

        db, cursor = x.db()
        q = "SELECT * FROM `orders` WHERE car_fk = %s AND NOT status_fk = %s LIMIT 1"
        cursor.execute(q, (car_pk, "3"))
        order = cursor.fetchone()
        if not order:
           return jsonify({"message": "This car does not have an active order"}), 400

        order_pk = order["order_pk"]
        order_status = order["status_fk"]
        location_fk = order["location_fk"]
    
        q = "SELECT location_empty_wash_halls FROM `locations` WHERE location_pk=%s"
        cursor.execute(q, (location_fk,))
        location = cursor.fetchone()
        location_empty_wash_halls = location["location_empty_wash_halls"]

        

        if order_status == 1:
            order_status = 2
            location_empty_wash_halls = location_empty_wash_halls-1
        else:
            order_status = 3
            location_empty_wash_halls = location_empty_wash_halls+1

        q = "UPDATE `orders` SET status_fk=%s WHERE order_pk=%s"
        cursor.execute(q, (order_status, order_pk))

        q = "UPDATE `locations` SET location_empty_wash_halls=%s WHERE location_pk=%s"
        cursor.execute(q, (location_empty_wash_halls, location_fk))
        db.commit()

        return jsonify({"message": "Order status updated"}), 200
    except Exception as ex:
        if "company_exception license plate" in str(ex):
            return jsonify({"message": "Invalid license plate"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.delete("/order/<order_pk>")
@jwt_required()
def delete_order(order_pk):
   try: 
        db, cursor = x.db()
        order_pk = x.validate_uuid4(order_pk)
        q = 'DELETE FROM `orders` WHERE order_pk=%s and status_fk=1'
        cursor.execute(q, (order_pk, ))
        db.commit()

        if cursor.rowcount == 0:
            return jsonify({"message": "Order not deleted(Not found or status not reserved)"}), 400

        return jsonify({"message": "Order deleted"}), 200
   except Exception as ex:
       if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}), 400
       
       return str(ex), 500
   finally:
       if "cursor" in locals(): cursor.close()
       if "db" in locals(): db.close()
   

##############################
@app.post("/subscription")
@jwt_required()
def create_subscription():
    try:
        subscription_pk = uuid.uuid4().hex
        wash_fk = x.validate_one_number(request.form.get("wash_pk", "",))
        car_fk = x.validate_license_plate(request.form.get("car_pk", "",))
        all_locations = x.validate_01(request.form.get("all_locations", ""))
        location_fk = x.validate_uuid4(request.form.get("location_pk", ""))

        db, cursor = x.db()
        q = "INSERT INTO `subscriptions` VALUES (%s, %s, %s, %s, %s)"
        cursor.execute(q, (subscription_pk, wash_fk, location_fk, all_locations, car_fk ))
        db.commit(),

        return jsonify({"message": "Subscription created"}), 201
    except Exception as ex:
        if "Duplicate entry" in str(ex):
            return jsonify({"message": "This car already has a subscription"}), 400
        if "company_exception license plate" in str(ex):
            return jsonify({"message": "Invalid license plate"}), 400
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}), 400
        if "company_exception 01" in str(ex):
            return jsonify({"message": "All locations must be 0 or 1"}), 400
        if "company_exception number" in str(ex):
            return jsonify({"message": "Wash ID is incorrect"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
        
##############################
@app.patch("/subscription/<subscription_pk>")
@jwt_required()
def update_subscription(subscription_pk):
    try:
        parts = []
        values = []

        subscription_pk = x.validate_uuid4(subscription_pk)

        if "wash_pk" in request.form:
            wash_fk = x.validate_one_number(request.form.get("wash_pk", ""))
            parts.append("wash_fk = %s")
            values.append(wash_fk)

        if "location_pk" in request.form:
            location_fk = x.validate_uuid4(request.form.get("location_pk", ""))
            parts.append("location_fk = %s")
            values.append(location_fk)
        
        if "all_locations" in request.form:
            all_locations = x.validate_01(request.form.get("all_locations", ""))
            parts.append("all_locations = %s")
            values.append(all_locations)
        
        if "wash_pk" not in request.form and "location_pk" not in request.form and "all_locations" not in request.form:
            return jsonify({"message": "Nothing to update"}), 400
        
        partial_query = ", ".join(parts)
        values.append(subscription_pk)

        db, cursor = x.db()
        q = f"""
            UPDATE subscriptions
            SET	{partial_query}
            WHERE subscription_pk = %s
        """
        cursor.execute(q, values)
        db.commit()

        return jsonify({"message": "Subscription updated"}), 200
    except Exception as ex:

        if "company_exception number" in str(ex):
            return jsonify({"message": "Wash_pk is invalid"}), 400
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}), 400
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}), 400
        if "company_exception 01" in str(ex):
            return jsonify({"message": "All_locations must be 0 or 1"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.delete("/subscription/<subscription_pk>")
@jwt_required()
def delete_subscription(subscription_pk):
   try: 
        db, cursor = x.db()
        subscription_pk = x.validate_uuid4(subscription_pk)
        q = 'DELETE FROM `subscriptions` WHERE subscription_pk=%s'
        cursor.execute(q, (subscription_pk, ))
        db.commit()

        return jsonify({"message": "Subscription deleted"}), 200
   except Exception as ex:
       if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}), 400
       
       return str(ex), 500
   finally:
       if "cursor" in locals(): cursor.close()
       if "db" in locals(): db.close()
   


##############################
@app.post("/car")
@jwt_required()
def create_car():
    try:
        user_fk = x.validate_uuid4(get_jwt_identity())
        car_pk = x.validate_license_plate(request.form.get("car_pk", "",))
        model_fk = x.validate_uuid4(request.form.get("model_pk", "",))
        car_nickname = x.validate_nickname(request.form.get("car_nickname", ""))
        db, cursor = x.db()

        q = "INSERT INTO `cars`(`car_pk`, `user_fk`, `model_fk`, `car_nickname`) VALUES (%s,%s,%s,%s)"
        cursor.execute(q, (car_pk, user_fk, model_fk, car_nickname))
        db.commit()

        return jsonify({"message": "Car created"}), 201
    except Exception as ex:
        if "Duplicate entry" in str(ex):
            return jsonify({"message": "License plate already exists"}), 400
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}),400
        if "company_exception license plate" in str(ex):
            return jsonify({"message": "Invalid license plate"}), 400
        if "company_exception nickname" in str(ex):
            return jsonify({"message": f"Nickname must be between {x.NICKNAME_MIN} to {x.NICKNAME_MAX} characters"}), 400
        if "company_exception 01" in str(ex):
            return jsonify({"message": "Car electric must be 0 or 1"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
        

##############################
@app.get("/car/<car_pk>")
@jwt_required()
def get_car(car_pk):
    try:
        db, cursor = x.db()
        car_pk = x.validate_license_plate(car_pk)
        q = """SELECT
    cars.*,
    models.car_electric,
    subscriptions.subscription_pk,
    subscriptions.wash_fk,
    subscriptions.location_fk,
    subscriptions.all_locations,
    washes.wash_name AS wash_name,
    locations.location_name AS location_name
FROM cars
LEFT JOIN models
    ON cars.model_fk = models.model_pk
LEFT JOIN subscriptions
    ON subscriptions.car_fk = cars.car_pk
LEFT JOIN washes
    ON subscriptions.wash_fk = washes.wash_pk
LEFT JOIN locations
    ON subscriptions.location_fk = locations.location_pk
WHERE cars.car_pk = %s"""
        cursor.execute(q, (car_pk,))
        car = cursor.fetchone()

        if not car:
            return jsonify({"message": "The user doesn't have a car with this license plate"}), 400

        return jsonify(car)
    except Exception as ex:
        if "company_exception license plate" in str(ex):
            return jsonify({"message": "Invalid license plate"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()



##############################
@app.get("/cars")
@jwt_required() 
def get_cars():
    try:
        db, cursor = x.db()
        user_fk = x.validate_uuid4(get_jwt_identity())
        q = """SELECT
    cars.*,
    models.car_electric,
    subscriptions.subscription_pk,
    subscriptions.wash_fk,
    subscriptions.location_fk,
    washes.wash_name AS wash_name,
    locations.location_name AS location_name
FROM cars
LEFT JOIN models
    ON cars.model_fk = models.model_pk
LEFT JOIN subscriptions
    ON subscriptions.car_fk = cars.car_pk
LEFT JOIN washes
    ON subscriptions.wash_fk = washes.wash_pk
LEFT JOIN locations
    ON subscriptions.location_fk = locations.location_pk
WHERE cars.user_fk = %s"""
        cursor.execute(q, (user_fk,))
        cars = cursor.fetchall()

        return jsonify(cars)
    except Exception as ex:
        if "company_exception key" in str(ex):
            return jsonify({"message": "Invalid key"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.patch("/car/<car_pk>")
def update_car(car_pk):
    try:
        car_nickname = x.validate_nickname(request.form.get("car_nickname", ""))
        car_pk = x.validate_license_plate(car_pk)
        db, cursor = x.db()
        q = "UPDATE `cars` SET car_nickname=%s WHERE car_pk=%s"
        cursor.execute(q, (car_nickname, car_pk))
        db.commit()

        return jsonify({"message": "Car updated"}), 200
    except Exception as ex:
        if "company_exception nickname" in str(ex):
            return jsonify({"message": f"Nickname must be between {x.NICKNAME_MIN} to {x.NICKNAME_MAX}"}), 400
        if "company_exception license plate" in str(ex):
            return jsonify({"message": "Invalid license plate"}), 400
        
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.delete("/car/<car_pk>")
@jwt_required()
def delete_car(car_pk):
   try: 
        db, cursor = x.db()
        car_pk = x.validate_license_plate(car_pk)
        q = 'DELETE FROM `cars` WHERE car_pk=%s'
        cursor.execute(q, (car_pk, ))
        db.commit()
        
        return jsonify({"message": "Car deleted"}), 200
   except Exception as ex:
       if "company_exception license plate" in str(ex):
            return jsonify({"message": "Invalid license plate"}), 400
       
       return str(ex), 500
   finally:
       if "cursor" in locals(): cursor.close()
       if "db" in locals(): db.close()
   

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
@app.post("/api/user-signup")
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
        response = jsonify({"message": "User created"})
        access_token = create_access_token(identity=user_pk)
        set_access_cookies(response, access_token)
        x.send_email("Please verify your account", html, user_email)
        return response, 201
    except Exception as ex:
        ic(ex)
        if "Duplicate entry" in str(ex):
            return jsonify({"error": f"User already exists", "error_field": "email"}), 400
        if "company_exception user_first_name" in str(ex): 
            return jsonify({"error": f"First name must be between {x.NAME_MIN} and {x.NAME_MAX}", "error_field": "user_first_name"}), 400
        if "company_exception user_last_name" in str(ex):
            return jsonify({"error": f"Last name must be between {x.NAME_MIN} and {x.NAME_MAX}", "error_field": "user_last_name"}), 400 
        if "company_exception email" in str(ex):
            return jsonify({"error": "Please enter a valid email", "error_field": "email"}), 400
        if "company_exception user_password" in str(ex):
            return jsonify({"error": f"Password must be between {x.USER_PASSWORD_MIN} to {x.USER_PASSWORD_MAX}", "error_field": "password"}), 400
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
    try:
        user_email = x.validate_email(request.form.get("user_email", ""))
        user_password = x.validate_user_password(request.form.get("user_password", ""))
    
        db, cursor = x.db()
        q = "SELECT user_pk, user_first_name, user_last_name, user_hashed_password FROM users WHERE user_email = %s"
        cursor.execute(q, (user_email,))
        user = cursor.fetchone()
        #ic(user)
        if not user:
            return jsonify({"error": "Forkert email eller adgangskode", "error_field": "form"}), 401
        if not check_password_hash(user["user_hashed_password"], user_password):
            return jsonify({"error": "Forkert email eller adgangskode", "error_field": "form"}), 401
        
        response = jsonify({"message": "login successful"})
        additional_claims = {"user_first_name": user["user_first_name"], "user_last_name": user["user_last_name"]}
        access_token = create_access_token(identity=user["user_pk"], additional_claims=additional_claims)
        set_access_cookies(response, access_token)
        return response, 200
    except Exception as ex:
        ic(ex)
        if "company_exception email" in str(ex):
            return jsonify({"error": "Please enter a valid email", "error_field": "email"}), 400
        if "company_exception user_password" in str(ex):
            return jsonify({"error": "Please enter a valid password", "error_field": "password"}), 400
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
##############################
@app.post("/api/logout")
@jwt_required()
def logout_user():
    try:
        response = jsonify({"message": "logout successful"})
        unset_jwt_cookies(response)
        return response
    except Exception as ex:
        ic(ex)

        return str(ex), 500
@app.get("/api/me")
@jwt_required()
def get_me():
    try:
        user_id = x.validate_uuid4(get_jwt_identity())
        q = "SELECT user_first_name, user_last_name, user_email FROM users where user_pk = %s"

        db, cursor = x.db()

        cursor.execute(q, (user_id,))
        user = cursor.fetchone()
        ic(user)
        return jsonify(id=user_id, name=user["user_first_name"] + " " + user["user_last_name"], email=user["user_email"])

    except Exception as ex:
        # JWT library kinda handles the exceptions here?
        ic(ex)
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
##############################
@app.get("/login")
def show_login():
    return render_template("page_login.html")

##############################
@app.get("/")
def index():
    return jsonify({"status":"ok", "message":"Connected"})

##############################

@app.get("/forgot-password")
def show_forgot_password():
    return render_template("page_forgot_password.html")

##############################

@app.post("/api/forgot-password")
def forgot_password():
    try:
        user_email = x.validate_email( request.form.get("user_email", "") )
        db, cursor = x.db()
        q = "SELECT user_reset_password_key AS 'key' FROM users WHERE user_email = %s"
        cursor.execute(q, (user_email,))
        row = cursor.fetchone()
        if not row: return jsonify ({"message": "ok"}), 200 # Still sends a 200, as to not leak potential emails in DB

        ic(row)
        user_reset_password_key = row["key"]
        user_reset_at = int(time.time())
        key_time_stamp = user_reset_password_key + "-" + str(user_reset_at)
        ic(key_time_stamp)
        update_time_q = "UPDATE users SET user_reset_at = %s WHERE user_reset_password_key = %s AND user_email = %s"
        cursor.execute(update_time_q, (user_reset_at, user_reset_password_key, user_email))
        db.commit()

        html = render_template("email_forgot_password.html", user_reset_password_key=key_time_stamp)

        x.send_email("Reset your password", html, user_email)

        return jsonify ({"message": "ok"}), 200

    except Exception as ex:
        ic(ex)
        if "company_exception email" in str(ex):
            return jsonify ({"error": "Invalid email", "error_field": "email"}), 400
        return jsonify ({"error": "Something went wrong", "error_field": "form"}), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()


##############################
@app.get("/api/reset-password/<key>")
def show_reset_password(key):
    try:

        # TODO:
        key_split = key.split("-")
        user_reset_password_key = x.validate_uuid4(key_split[0])
        key_time = int(key_split[1])
        ic(key_time)
        current_time = int(time.time())
        if current_time > (key_time + 3600):
            return jsonify({"error" : "link_expired", "message": "Link expired, please request a new one"}), 410
        # TODO: Connect to the db
        db, cursor = x.db()

        # Query to check that the epoch in the link and in the DB are the same, so an unwanted user can't access the link after expiry.
        q = """SELECT user_reset_password_key FROM users WHERE user_reset_password_key = %s AND user_reset_at = %s"""

        cursor.execute(q, (user_reset_password_key, key_time))
        row = cursor.fetchone()
        # User has messed with the epoch in the link sent to them (potential malicious behavior)
        if not row: return jsonify({"error": "link_manipulated", "message": "Please click the link in the email again."}), 400 

        # short-lived JWT, e.g. 15 minutes
        token = create_access_token(identity=user_reset_password_key, expires_delta=timedelta(minutes=15))

        

        # Change this to work with React/Nextjs
        return jsonify({"token": token})


    except Exception as ex:
        ic(ex)
        if "company_exception key" in str(ex):
            return jsonify({"message":"Invalid key"}), 400

        
        return str(ex), 500

    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()
##############################
@app.post("/api/reset-password")
@jwt_required()
def reset_password():
    try:
        key = x.validate_uuid4(get_jwt_identity())
        ic(key)
        password = x.validate_user_password( request.form.get("password", "") ).strip()
        ic(password)
        confirm_password = x.validate_user_password( request.form.get("confirm-password","") ).strip()
        new_password = generate_password_hash(confirm_password)
        if password != confirm_password:
            return jsonify({"error":"Passwords do not match", "error_field": "form"}), 400

        new_key = uuid.uuid4().hex 
        #Check if key is in DB
        db, cursor = x.db()

        q = "UPDATE users SET user_hashed_password = %s, user_reset_password_key = %s WHERE user_reset_password_key = %s "
        cursor.execute(q, (new_password, new_key, key))

        if cursor.rowcount == 0:
            return "Ups...", 400
        db.commit()
        return jsonify ({"message": "ok"}), 200

    except Exception as ex:
        ic(ex)

        if "company_exception user_password" in str(ex):
            return jsonify({"error": f"Password must be between {x.USER_PASSWORD_MIN} to {x.USER_PASSWORD_MAX}",
                            "error_field": "password"}), 400

        if "company_exception paranoia" in str(ex):
            return "Invalid key", 400
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

##############################
@app.get("/get-data")
@jwt_required()
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
            location_status_message = location["message"]
           

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

            q = "INSERT INTO locations VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
            cursor.execute(q, (location_pk, location_name, location_address, location_lat, location_lon,
            location_open_hours, location_wash_halls, location_empty_wash_halls, location_self_wash, location_mat_cleaner, location_vacuum,
            location_pre_wash, location_max_meters, location_max_mirror_width_meters, region_fk, location_end_url, location_image_end_url, location_status_message))
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

#############################
@app.get("/get-data/<location_pk>")
@jwt_required()
def get_single_location(location_pk):
    try:
        location_pk = x.validate_uuid4(location_pk)
        db, cursor = x.db()
        q = "SELECT * FROM locations WHERE location_pk = %s"
        cursor.execute(q, (location_pk,))
        location = cursor.fetchone()
        return jsonify(location), 200

    except Exception as ex:
        return str(ex), 500
        
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

 

 

##############################
@app.get("/memberships")
def get_memberships():
    try:
        db, cursor = x.db()
        q = """
            SELECT 
                w.wash_pk,
                w.wash_name,
                GROUP_CONCAT(a.addon_pk ORDER BY a.addon_pk) AS addon_ids,
                GROUP_CONCAT(a.addon_name ORDER BY a.addon_pk SEPARATOR '|') AS addon_names
            FROM washes w
            LEFT JOIN washes_addons wa ON w.wash_pk = wa.wash_fk
            LEFT JOIN addons a ON wa.addon_fk = a.addon_pk
            GROUP BY w.wash_pk, w.wash_name
            ORDER BY w.wash_pk DESC
        """
        cursor.execute(q)
        rows = cursor.fetchall()

        memberships = []
        for row in rows:
            addon_ids = [int(i) for i in row["addon_ids"].split(",")] if row["addon_ids"] else []
            addon_names = row["addon_names"].split("|") if row["addon_names"] else []
            wash_programs = [{"addon_pk": pk, "addon_name": name} for pk, name in zip(addon_ids, addon_names)]
            memberships.append({
                "membership_pk": row["wash_pk"],
                "membership_name": row["wash_name"],
                "wash_programs": wash_programs
            })

        return jsonify(memberships), 200

    except Exception as ex:
        return str(ex), 500
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

 

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

