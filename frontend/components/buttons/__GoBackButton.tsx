//button to go to previous page, we us in some pages
"use client"
import { useRouter } from "next/navigation"
import { FaArrowLeft } from "react-icons/fa"

export default function GoBackButton() {
  const router = useRouter()

  return (
    <button
      onClick={() => router.back()}
      aria-label="Gå tilbage"
      className="flex items-center justify-center w-16 h-12 bg-green-500 text-white"
      style={{ clipPath: "polygon(12% 0%, 100% 0%, 88% 100%, 0% 100%)" }}
    >
      <FaArrowLeft className="text-xl" />
    </button>
  )
}