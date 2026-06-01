//button to go to previous page, we us in some pages
"use client"
import { useRouter } from "next/navigation"
import { GoArrowLeft } from "react-icons/go";

export default function GoBackButton() {
  const router = useRouter()
  return (
    <button
      onClick={() => router.back()}
      aria-label="Gå tilbage"
      className="group flex items-center justify-center w-16 h-12 bg-green-500 text-white mb-3 transition-all hover:bg-[#00b058] duration-300"
      style={{ clipPath: "polygon(0% 0%, 100% 0%, 88% 100%, 0% 100%)" }}
    >
      <GoArrowLeft className="text-xl font-bold stroke-[1px] transition-transform duration-300 group-hover:scale-105" />
    </button>
  )
}