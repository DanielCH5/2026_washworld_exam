"use client"
//location card, the same we show in map when a marker is clicked. 
import { FaExclamationTriangle } from "react-icons/fa"
import { FaRegClock } from "react-icons/fa6"
import ArrowButton from "../buttons/__ArrowButton"
import "../../public/map.css"

export default function LocationCard({ marker, index }) {
  return (
    <div className="relative overflow-visible w-[400px] bg-white">

      {/* grøn boks */}
      <div className="absolute -bottom-3 left-0 h-[13px] w-45.5 bg-green-500"
        style={{ clipPath: "polygon(0% 0, 100% 0, 96% 100%, 0 100%)" }}>
      </div>

      <div className="p-6 pb-20">

        {/* Header */}
        <div className="flex items-start justify-between gap-6">
          <div>
            <h2 className="leading-tight">
              {marker.label ?? `Marker ${index + 1}`}
            </h2>
            <div className="flex items-start gap-3">
              <p className="font-bold text-green-500 whitespace-nowrap">1,2 km</p>
              <p className="text-gray-600">{marker.adress}</p>
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
                  {marker.emptyWashHalls === 0 ? "Optaget" : "Ledig"}
                </p>
              </>
            )}
          </div>
        </div>

        {/* Åbningstider */}
        <div className="flex items-center gap-2">
          <FaRegClock className="text-[17px]" />
          <p>Åbningstid: <span className="font-bold text-green-500">{marker.opening}</span></p>
        </div>

        <div className="my-2 h-[1px] w-full bg-gray-300"></div>

        {/* Info */}
        <div className="space-y-4 text-l">
          <p><span className="font-bold text-red-500">{marker.statusMessage}</span></p>
          <p>Vaskehaller <span className="font-bold">{marker.washHalls}</span></p>
          <p>Vask Selv <span className="font-bold">{marker.selfWash}</span></p>
        </div>

        {/* Læs mere — fixed! */}
        <a href={`/locations/${marker.id}`} className="hover:underline">Læs mere</a>
      </div>

      <div className="absolute bottom-0 right-0">
        <ArrowButton text="Vis vej" />
      </div>
    </div>
  )
}