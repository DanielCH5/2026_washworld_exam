// MapComponent.jsx
"use client"
import { useEffect, useState } from "react";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import "leaflet/dist/leaflet.css";
import L from "leaflet";

// Fix for missing marker icons in bundlers like Vite/Webpack
import markerIcon2x from "leaflet/dist/images/marker-icon-2x.png";
import markerIcon from "leaflet/dist/images/ww-pin-green.png";
import markerShadow from "leaflet/dist/images/marker-shadow.png";

delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
    iconUrl: markerIcon,
    iconRetinaUrl: markerIcon2x,
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
                    <Popup>{marker.label ?? `Marker ${index + 1}`}</Popup>
                </Marker>
            ))}
        </MapContainer>
    );
}