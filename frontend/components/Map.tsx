// MapComponent.jsx
"use client"
import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import SearchBar from "@/components/SearchBar";
import { FaExclamationTriangle } from "react-icons/fa";
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

// Fix for missing marker icons in bundlers like Vite/Webpack

//TODO:
// Tilføj "læs mere" med link til single page for hver location
// Få rettet i akavet kryds position
// "vis vej" skal linke til google maps med adressen på den markerede location

import markerShadow from "leaflet/dist/images/marker-shadow.png";

const car_pk = "AB12345" // THE LICENSE PLATE OF THE CAR THAT IS BEING WASHED

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
            location_pk: location.location_pk,
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
                      {marker.statusMessage ? (
                        <FaExclamationTriangle className="text-red-500 text-3xl" />
                      ) : (
                        <>
                          <span className={`h-3 w-3 rounded-full ${marker.emptyWashHalls === 0 ? "bg-red-500" : "bg-green-500"}`}></span>
                          <p className={`font-bold ${marker.emptyWashHalls === 0 ? "text-red-500" : "text-green-500"}`}>
                            {marker.emptyWashHalls === 0 ? "Optaget" : "Ledig"}</p>
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
                  <ArrowButton text="Vis vej" onClick={() => { setSelectedMarker(marker); setShowDirectionsPopup(true);}} />

                </div>
              </div>
            </Popup>
          </Marker>
        ))}

        {showDirectionsPopup && (
  <div className="fixed inset-0 z-[9999] flex items-center justify-center bg-black/50">
    <div className="w-[350px] rounded-lg bg-white p-6 shadow-xl">
      <h2 className="mb-4 text-xl font-bold">
        Vis vej
      </h2>

      <p className="mb-6">
        Dit køretøj er registreret foran </p>

        <p className="font-bold text-green-500">
        {selectedMarker.label}
        </p>
      

      <div className="flex justify-end gap-3">
        <button
          onClick={() => setShowDirectionsPopup(false)}
          className="rounded border px-4 py-2"
        >
          Annuller
        </button>

        <button
          onClick={() => {
            setShowDirectionsPopup(false);

            // Navigate to another page
            router.push(`/orders?location_pk=${selectedMarker.location_pk}&car_pk=${car_pk}`);

            // OR Google Maps:
            // window.open(
            //   `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(selectedMarker.adress)}`,
            //   "_blank"
            // );
          }}
          className="rounded bg-green-500 px-4 py-2 text-white"
        >
          Accepter
        </button>
      </div>
    </div>
  </div>
)}
      </MapContainer>
    </> // -- CHANGE TO </div> TO PUT SEARCHBAR ON TOP OF MAP

  );
}