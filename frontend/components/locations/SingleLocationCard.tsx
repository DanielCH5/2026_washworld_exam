//card in top of single page. its like the location card but with less info
"use client"
import ArrowButton from "@/components/buttons/__ArrowButton"
import { FaRegClock } from "react-icons/fa6"

interface Props {
  marker: {
    label: string
    adress: string
    opening: string
  }
}

export default function SingleLocationCard({ marker }: Props) {
  return (
    <div className="relative bg-[var(--grey-5)] overflow-hidden">
      <div className="p-6 pb-16">
        <h2 className="font-bold leading-tight mb-1">{marker.label}</h2>
        <p className="text-gray-600 mb-3">{marker.adress}</p>
        <div className="flex items-center gap-2">
          <FaRegClock className="text-[17px]" />
          <p>Åbningstid: <span className="font-bold text-green-500">{marker.opening}</span></p>
        </div>
      </div>
      <div className="absolute bottom-0 right-0">
        <ArrowButton text="Vis vej" />
      </div>
    </div>
  )
}