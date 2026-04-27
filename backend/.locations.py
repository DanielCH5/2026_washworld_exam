from flask import Flask, render_template, request, jsonify
import json
import x
import uuid
import requests
from icecream import ic

 

ic.configureOutput(prefix=f'----- | ', includeContext=True)
app = Flask(__name__)

 

 

##############################
@app.get("/")
def show_page_index():
    try:
        db, cursor = x.db()
        q = "SELECT * FROM items"
        cursor.execute(q)
        items = cursor.fetchall()
        return render_template("page_index.html", items=items)
    except Exception as ex:
        # ic(ex)
        return "ups..."
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

 

 

##############################
@app.get("/get-documents")
def get_documents():
    try:
        db, cursor = x.db()
        q = "SELECT * FROM zips"
        cursor.execute(q)
        zips = cursor.fetchall()
        for zip in zips:
            # ic(zip["zip_pk"])
            url = f"https://api.boligsiden.dk/search/map/cases?zipCodes={zip['zip_pk']}"
            # ic(url)
            document = requests.get(url).text
            # document = json.loads(data) 
            document_pk = uuid.uuid4().hex
            zip_fk = zip['zip_pk']
            # ic(document)
            if document:
                q = "INSERT INTO documents VALUES(%s,%s,%s)"
                cursor.execute(q, (document_pk, zip_fk, document))
                db.commit()
                ic(f"done with zip {zip_fk}")
        return "documents retrieved"
    except Exception as ex:
        ic(ex)
        return "ups..."
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()


##############################
@app.get("/get-locations")
def get_locations():
    try:
        url = "https://washworld.dk/wp-json/ww/v1/locations?country=da"
        locations = request.get(url).json()

        for location in locations:
            ic(location["name"])
            

    except Exception as ex:
        ic(ex)
        return "xd", 400
    
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

 

 

##############################
@app.get("/seed")
def seed():
    try:
        db, cursor = x.db()
        q = "SELECT * FROM documents" 
        cursor.execute(q)
        rows = cursor.fetchall()

 

        for row in rows:
            document = json.loads(row["document_json"]) 
            cases = document["cases"]
            total_hits = document["totalHits"]
            # # db = x.db()
            if cases:
                for item in cases:
                    # item_pk = item["address"]["addressID"]
                    pk = uuid.uuid4().hex
                    coordinates = item["coordinates"]
                    lat = coordinates["lat"]
                    lon = coordinates["lon"]
                    price = item["priceCash"]
                    _type = item["addressType"]
                    city_name = item["address"]["cityName"]
                    house_number = item.get("address", {}).get("houseNumber", "")
                    road_name = item["address"]["road"]["name"]
                    zip_code = item["address"]["zip"]["zipCode"]
                    days_listed = item["daysListed"]["days"]
                    energy_label = item.get("energyLabel", "")
                    floor_square_meters = item.get("housingArea", 0)
                    lot_square_meters = item.get("lotArea", 0)
                    monthly_expenses = item["monthlyExpense"]
                    number_of_rooms = item.get("numberOfRooms", 0)
                    price_per_meter = item.get("perAreaPrice", 0)
                    main_image_path = item.get("image", {}).get("imageSources", [{}])[0].get("url", "")
                    floor_plan_path = item.get("floorPlanImage", {}).get("imageSources", [{}])[0].get("url", "")

 

                    q = "INSERT INTO items VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
                    cursor.execute(q, (pk, lat, lon, price, _type, city_name, house_number, road_name, zip_code,
                    days_listed, energy_label, floor_square_meters, lot_square_meters, monthly_expenses,
                    number_of_rooms, price_per_meter, main_image_path, floor_plan_path))
                    db.commit()
                    ic("done with document")
        return "seed"
    except Exception as ex:
        ic(ex)
        return "ups..."
    finally:
        if "cursor" in locals(): cursor.close()
        if "db" in locals(): db.close()

 
