"use client"
// Square button for the membership/payment section


export default function SquareButton({ text, onClick }: ArrowButtonProps) {
  return (
    <button
      onClick={onClick}
      className="
        group relative flex justify-center gap-6 bg-[var(--green-White-BG)] text-white 
        px-10 py-4 font-bold text-[16px] transition-all duration-300
        hover:bg-[#00b058] shadow-[var(--box-Bottom-Green-Line)]
      "
    >
    <span >{text}</span>
      
     
    </button>
  );
}