"use client"
import { useEffect, useState } from "react"
import LocationCard from "@/components/locations/LocationCard"

export default function LocationListPage() {
  const [locations, setLocations] = useState([])

  useEffect(() => {
    fetch("http://localhost/get-data", {
      method: "GET",
      credentials: "include",
    })
      .then(r => r.json())
      .then(data => setLocations(
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
      ))
  }, [])

  return (
    <main>
      <h1>Liste af Lokationer</h1>
      {locations.map((loc, i) => (
        <LocationCard key={loc.id} marker={loc} index={i} />
      ))}
    </main>
  )
}