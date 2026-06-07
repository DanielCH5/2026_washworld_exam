"use client"
import { useEffect, useState } from "react"
import { useParams } from "next/navigation"
import SingleLocationCard from "@/components/locations/SingleLocationCard"
import GoBackButton from "@/components/buttons/__GoBackButton"

export default function LocationSinglePage() {
  const { id } = useParams()
  const [location, setLocation] = useState(null)

  useEffect(() => {
    if (id) {
      fetch(`http://localhost/get-data/${id}`, {
        credentials: "include",
      })
        .then(r => r.json())
        .then(data => setLocation({
          label: data.location_name,
          adress: data.location_address,
          opening: data.location_open_hours,
        }))
    }
  }, [id])

  if (!location) return <p>Loading...</p>

  return (
    <main>
      <GoBackButton />
      <SingleLocationCard marker={location} />
    </main>
  )
}