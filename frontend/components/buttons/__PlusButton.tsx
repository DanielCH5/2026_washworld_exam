"use client"
//Button with checkmark icon, with changable text and onClick function

import { AiOutlinePlus } from "react-icons/ai";

export default function PlusButton({ text, onClick }: ArrowButtonProps) {
  return (
    <button
      onClick={onClick}
      className="
        group relative flex items-center bg-[#00c864] text-white 
        px-6 py-2 font-bold text-[12px] text-inline transition-all duration-300
        hover:bg-[#00b058]
      "
      style={{
        clipPath: "polygon(15% 0, 100% 0, 100% 100%, 0% 100%)", // Skrå kant med clip-path
      }}
    >
      <AiOutlinePlus
        className="transition-transform text-xl duration-300 group-hover:scale-110" 
      />
      <span className="ml-3 ">{text}</span>
      
      
    </button>
  );
}