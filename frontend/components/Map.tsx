// MapComponent.jsx
"use client"
import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import SearchBar from "@/components/SearchBar";
import Link from "next/link";
import {FaList} from "react-icons/fa";
import { ZoomControl } from "react-leaflet"; //REMOVE THE ZOOM BUTTONS
import {
  MapContainer,
  TileLayer,
  Marker,
  Popup,
  useMap,
} from "react-leaflet";
import "leaflet/dist/leaflet.css";
import "../public/map.css";
import L, { marker } from "leaflet";
import ArrowButton from "./buttons/__ArrowButton";
import { FaRegClock } from "react-icons/fa6";
import LocationCard from "./locations/LocationCard";

// Fix for missing marker icons in bundlers like Vite/Webpack

//TODO:
// Tilføj "læs mere" med link til single page for hver location
// Få rettet i akavet kryds position
// "vis vej" skal linke til google maps med adressen på den markerede location

import markerShadow from "leaflet/dist/images/marker-shadow.png";

const greenPin = new L.Icon({
  iconUrl: "/ww-pin-green.png",
  iconRetinaUrl: "/ww-pin-green.png",
  shadowUrl: markerShadow.src,
  iconSize: [38, 47]
});

const redPin = new L.Icon({
  iconUrl: "/ww-pin-red.png",
  iconRetinaUrl: "/ww-pin-red.png",
  shadowUrl: markerShadow.src,
  iconSize: [38, 47]
});

function FlyToLocation({
  position,
}: {
  position: [number, number];
}) {
  const map = useMap();

  useEffect(() => {
    map.flyTo(position, 15, {
      duration: 1.5,
    });
  }, [position, map]);

  return null;
}

export default function Map() {
  const router = useRouter();
  const [showDirectionsPopup, setShowDirectionsPopup] = useState(false);
  const [selectedMarker, setSelectedMarker] = useState<any>(null);

  const [markers, setMarkers] = useState([]);
  const [selectedPosition, setSelectedPosition] =
    useState<[number, number]>([
      55.6182310,
      12.4239500
    ]);

  useEffect(() => {
    // Replace this URL with your actual API endpoint
    const fetchMarkers = async () => {
      try {
        const res = await fetch("http://localhost/get-data", {
          method: "GET",
          credentials: "include",

        })
        if (!res.ok) throw new Error(`HTTP error! status: ${res.status}`);


        const data = await res.json()

        setMarkers(
          data.map((location) => ({
            id: location.location_pk,
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
        );
      } catch (err) {
        console.error("Failed to fetch markers:", err);
      }
    };
    
    fetchMarkers();
  }, []);

  return (
    <>
      {/* <div className="relative h-screen w-full"> 
     
      <div className="absolute left-1/2 top-4 z-[1000] w-full max-w-md -translate-x-1/2 px-4"> 
      --PUT THE SEARCHBAR ON TOP OF THE MAP*/}

      <SearchBar
        markers={markers}
        onSelect={(marker) => {
          setSelectedPosition([
            marker.lat,
            marker.lng,
          ]);
        }}
      />{/*</div> -- PUT THE SEARCHBAR ON TOP OF THE MAP */}

      {/*The button for going to list view here */}
      <Link
        href="/locations"
        className="flex items-center gap-3 bg-[var(--solid-Black)] !text-[var(--solid-White)] font-medium px-6 py-3 w-full justify-center hover:bg-neutral-800 transition-colors duration-300"
        >
        Se liste af lokationer <FaList className="text-l" />
      </Link>

      <MapContainer
        center={[55.6182310, 12.4239500]} // Default center — adjust as needed
        zoom={12}
        style={{ height: "100dvh", width: "100%" }}
       //zoomControl={false} //REMOVE THE ZOOM BUTTONS +-
       >
        <TileLayer
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        <FlyToLocation position={selectedPosition} />

        {markers.map((marker, index) => (
          <Marker key={index} position={[marker.lat, marker.lng]}
          icon={marker.statusMessage || marker.emptyWashHalls === 0 ? redPin : greenPin}>
            <Popup className="custom-popup">
              <LocationCard marker={marker} index={index} />
            </Popup>
          </Marker>
        ))}
        </MapContainer>
    </>
  );
}
