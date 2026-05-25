// MapComponent.jsx
"use client"
import { useEffect, useState } from "react";
import { FaExclamationTriangle } from "react-icons/fa";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import "leaflet/dist/leaflet.css";
import "../public/map.css";
import L from "leaflet";
import ArrowButton from "./buttons/__ArrowButton";
import { FaRegClock } from "react-icons/fa6";

// Fix for missing marker icons in bundlers like Vite/Webpack

//TODO:
// Tilføj "læs mere" med link til single page for hver location
// Få rettet i akavet kryds position
// "vis vej" skal linke til google maps med adressen på den markerede location

import markerShadow from "leaflet/dist/images/marker-shadow.png";


delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
    iconUrl: "/ww-pin-green.png",
    iconRetinaUrl: "/ww-pin-green.png",
    shadowUrl: markerShadow,
    iconSize: [38, 47]
});

export default function Map() {
    const [markers, setMarkers] = useState([]);

    useEffect(() => {
        // Replace this URL with your actual API endpoint
        fetch("http://127.0.0.1:80/get-data")
            .then((res) => res.json())
            .then((data) => setMarkers(
                data.map((location) => ({
                    lat: location.location_lat,
                    lng: location.location_lon,
                    label: location.location_name,
                    adress: location.location_address,
                    opening: location.location_open_hours,
                    washHalls: location.location_wash_halls,
                    emptyWashHalls: location.location_empty_wash_halls,
                    selfWash: location.location_self_wash,
                    statusMessage: location.location_status_message
                }))
            ))
            .catch((err) => console.error("Failed to fetch markers:", err));
    }, []);

    return (
        <MapContainer
            center={[55.6182310, 12.4239500]} // Default center — adjust as needed
            zoom={12}
            style={{ height: "100dvh", width: "100%" }}
        >
            <TileLayer
                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            />

            {markers.map((marker, index) => (
  <Marker key={index} position={[marker.lat, marker.lng]}>
    <Popup className="custom-popup">
      <div className="relative overflow-visible w-[400px] bg-white ">

        {/* den grønne boks uden for card der har cut */}
        <div className="absolute -bottom-3 left-0 h-[13px] w-45.5 bg-green-500" 
             style={{
              clipPath: "polygon(0% 0, 100% 0, 96% 100%, 0 100%)",
              }}>
        </div>

        {/* alt indhold i marker*/}
        <div className="p-6 pb-20">

          {/* Header */}
          <div className="flex items-start justify-between gap-6">
            <div>

              <h2 className="leading-tight">
                {marker.label ?? `Marker ${index + 1}`}
              </h2>

              <div className="flex items-start gap-3">
                <p className="font-bold text-green-500 whitespace-nowrap">
                  1,2 km
                </p>

                <p className="text-gray-600">
                  {marker.adress}
                </p>
              </div>
            </div>

              {/* Status */}
              <div className="flex items-center gap-2 whitespace-nowrap">
                {marker.statusMessage ?(
                  <FaExclamationTriangle className="text-red-500 text-2xl"/>
                ):(
                  <>
              <span className={`h-3 w-3 rounded-full ${marker.emptyWashHalls === 0? "bg-red-500" : "bg-green-500"}`}></span>
              <p className={`font-bold ${marker.emptyWashHalls === 0? "text-red-500" : "text-green-500"}`}>
              {marker.emptyWashHalls === 0? "Optaget" : "Ledig"}</p>
              </>
              )}
              </div>
            </div>

          {/* åbningstider */}
          <div className="flex items-center gap-2">
           <FaRegClock className="text-[17px]"></FaRegClock>

            <p>
              Åbningstid:{" "}
              <span className="font-bold text-green-500">
                {marker.opening}
              </span>
            </p>
          </div>

          {/* Divider */}
          <div className="my-2 h-[1px] w-full bg-gray-300"></div>

          {/* Info */}
          <div className="space-y-4 text-l">
            <p>
              <span className="font-bold text-red-500">
                {marker.statusMessage}
              </span>
            </p>
            <p>
              Vaskehaller{" "}
              <span className="font-bold">
                {marker.washHalls}
              </span>
            </p>

            <p>
              Vask Selv{" "}
              <span className="font-bold">
                {marker.selfWash}
              </span>
            </p>
          </div>
         {/*Tilføjer linking til single page for se det virker :D lort */}
         <div>
            <a href="" className="hover:underline">Læs Mere</a>
         </div>
        </div>

        <div className="absolute bottom-0 right-0">
          
            {/* Your micro component */}
            <ArrowButton text="Vis vej" />
          
        </div>
      </div>
    </Popup>
  </Marker>
))}
        </MapContainer>
    );
}