//Button with checkmark icon, with changable text and onClick function

import { FaCheck } from "react-icons/fa6";

export default function ArrowButton({ text, onClick }: ArrowButtonProps) {
  return (
    <button
      onClick={onClick}
      className="
        group relative flex items-center gap-6 bg-[#00c864] text-white 
        px-13 py-5 font-bold text-[16px] text-inline transition-all duration-300
        hover:bg-[#00b058]
      "
      style={{
        clipPath: "polygon(15% 0, 100% 0, 100% 100%, 0% 100%)", // Skrå kant med clip-path
      }}
    >
      {/* ml-4 giver lidt ekstra afstand til venstre, så teksten ikke rammer den skrå kant */}
      <span className="ml-4">{text}</span>
      
      <FaCheck
        className="transition-transform text-2xl stroke-[0.5px] duration-300 group-hover:scale-110" 
      />
    </button>
  );
}