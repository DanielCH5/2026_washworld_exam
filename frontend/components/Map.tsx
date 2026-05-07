// MapComponent.jsx
"use client"
import { useEffect, useState } from "react";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import "leaflet/dist/leaflet.css";
import "../public/map.css";
import L from "leaflet";

// Fix for missing marker icons in bundlers like Vite/Webpack

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
                    selfWash: location.location_self_wash,
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
                    <Popup>
                        <p className="text-xl font-bold">{marker.label ?? `Marker ${index + 1}`}</p>
                        <div className="flex row"><p className="font-bold">1,2 km</p>
                        <p>{marker.adress}</p></div>
                        <div className="flex row content-center items-center gap-2">
                        <div>timeicon</div>
                        <p>Åbningstid: <span className="font-bold">{marker.opening}</span></p>
                        </div>
                        
                        <p>______________________________________</p>
                        <p className="font-bold">Vaskehaller  {marker.washHalls}</p>
                        <p className="font-bold">Vash Selv  {marker.selfWash}</p>
                    </Popup>
                </Marker>
            ))}
        </MapContainer>
    );
}