from flask import request, make_response
import mysql.connector
import re # Regular expressions also called Regex
from functools import wraps
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from icecream import ic

# Setting up .env variables
import os
from dotenv import load_dotenv 
load_dotenv() # Loads the .env variables

db_password = os.getenv("DB_PASSWORD")
ic.configureOutput(prefix=f"_____ | ", includeContext=True)
##############################
def db():
    try:
        db = mysql.connector.connect(
            host = "mariadb",
            user = "root",  
            password = os.getenv("DB_PASSWORD"),
            database = "2026_1_wash_world"
        )
        cursor = db.cursor(dictionary=True)
        return db, cursor
    except Exception as e:
        print(e, flush=True)
        raise Exception("Database under maintenance", 500)


##############################
def no_cache(view):
    @wraps(view)
    def no_cache_view(*args, **kwargs):
        response = make_response(view(*args, **kwargs))
        response.headers["Cache-Control"] = "no-store, no-cache, must-revalidate, max-age=0"
        response.headers["Pragma"] = "no-cache"
        response.headers["Expires"] = "0"
        return response
    return no_cache_view

##############################
REGEX_LICENSE_PLATE = "^[A-Z0-9]{1,10}$"
def validate_license_plate(key):
    key = key.strip()
    if not re.match(REGEX_LICENSE_PLATE, key):
        raise Exception("company_exception license plate")
    return key

##############################
NICKNAME_MIN = 1
NICKNAME_MAX = 50
REGEX_NICKNAME = f"^.{{{NICKNAME_MIN},{NICKNAME_MAX}}}$"
def validate_nickname(name):
    nickname = name.strip()
    if not re.match(REGEX_NICKNAME, nickname):
        raise Exception("company_exception nickname")
    return nickname

##############################
REGEX_ELECTRIC = f"^[01]$"
def validate_electric(key):
    if not re.match(REGEX_ELECTRIC, key):
        raise Exception("company_exception electric")
    return key


##############################
REGEX_UUID4 = "^[0-9a-f]{32}$"
def validate_uuid4(key):
    key = key.strip()
    if not re.match(REGEX_UUID4, key):
        raise Exception("company_exception key")
    return key
##############################
REGEX_UUID4_paranoia = "^[0-9a-f]{64}$"
def validate_uuid4_paranoia(key):
    key = key.strip()
    if not re.match(REGEX_UUID4_paranoia, key):
        raise Exception("company_exception paranoia")
    return key
################################################### USERS VALIDATION ####################################################

##############################
REGEX_EMAIL = "^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$"
def validate_email(email):
    email = email.strip()
    if not re.match(REGEX_EMAIL, email):
        raise Exception("company_exception email")
    return email

##############################
USER_PASSWORD_MIN = 8
USER_PASSWORD_MAX = 50 # Should be hashed, set to 255 in DB
REGEX_USER_PASSWORD = f"^.{{{USER_PASSWORD_MIN},{USER_PASSWORD_MAX}}}$"
def validate_user_password(password):
    user_password = password.strip()
    if not re.match(REGEX_USER_PASSWORD, user_password):
        raise Exception("company_exception user_password")
    return user_password

##############################
USER_NAME_MIN = 2
USER_NAME_MAX = 20
REGEX_USER_NAME = f"^.{{{USER_NAME_MIN},{USER_NAME_MAX}}}$"
def validate_user_name(name):
    user_name = name.strip()
    if not re.match(REGEX_USER_NAME, user_name):
        raise Exception("company_exception user_name")
    return user_name

################################################### VALIDATIONS END ####################################################

##############################
def send_email(subject, html):
    try:    
        # Create a gmail 
        # Enable (turn on) 2 step verification/factor in the google account manager
        # Visit: https://myaccount.google.com/apppasswords
        # Copy the key :
 
        # Email and password of the sender's Gmail account
        sender_email = "danielc.hansen1@gmail.com"
        password = "bcdj oimt gusw hspv"  # If 2FA is on, use an App Password instead
 
        # Receiver email address
        receiver_email = "danielc.hansen1@gmail.com"
        
        # Create the email message
        message = MIMEMultipart()
        message["From"] = "Washworld"
        message["To"] = receiver_email
        message["Subject"] = subject
 
        # Body of the email
        # body = f"""<h1>Hi</h1><h2>Hi again</h2>"""
        message.attach(MIMEText(html, "html"))
 
        # Connect to Gmail's SMTP server and send the email
        with smtplib.SMTP("smtp.gmail.com", 587) as server:
            server.starttls()  # Upgrade the connection to secure
            server.login(sender_email, password)
            server.sendmail(sender_email, receiver_email, message.as_string())
        print("Email sent successfully!")
 
        return "email sent"
       
    except Exception as ex:
        return "cannot send email", 500
    finally:
        pass
