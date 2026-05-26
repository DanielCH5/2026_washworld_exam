"use client"
import { IoIosArrowDown, IoIosArrowUp } from "react-icons/io";
import SquareButton from "@/components/buttons/__SquareButton";
import { useState } from "react";

export default function MembershipPage() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <main>
      <h1>Wash World</h1>
      <h1 className="text-[var(--green-White-BG)] mt-[-10px]">medlemskaber</h1>
      {/*membership v.1*/}
      <div>
        <div className="flex flex-col justify-center text-center gap-1 bg-[var(--grey-5)] p-6 shadow-[var(--box-Shadow)] mt-2">
          <h2>Brilliant</h2>
          <h5>Bedste vask året rundt</h5>
          <div className="flex flex-row justify-center items-end gap-1"><h2>199</h2><h5>kr./md.</h5></div>
          <SquareButton text="Tilføj medlemskab"/>
          <div onClick={() => setIsOpen(!isOpen)} className="flex flex-row justify-center pt-2 text-[var(--green-White-BG)] items-center gap-1 cursor-pointer">
          <p>Se hvad den indeholder</p>
          {isOpen ? <IoIosArrowUp /> : <IoIosArrowDown />}
          </div>
          {isOpen && (
          <div className="grid grid-cols-2 gap-x-6 gap-y-3 pt-4 px-2 text-sm">
            {/* included - green checkmark */}
            {["Skumforvask", "Aktiv shampoo", "Hjulvask", "Højtryksvask", "Børstevask", "Voks", "Tørring"].map(item => (
              <div key={item} className="flex items-center gap-2">
                <span className="text-green-500">✅</span>
               <p>{item}</p>
             </div>
                 ))}
            {/* included right column */}
            {["Højsglans", "Undervognsvask*"].map(item => (
              <div key={item} className="flex items-center gap-2">
                <span className="text-green-500">✅</span>
                <p>{item}</p>
             </div>
           ))}
            {/* not included - grey minus */}
           {["Skumvask", "Affedtning", "Sæsonrens"].map(item => (
              <div key={item} className="flex items-center gap-2">
               <span className="text-gray-400">➖</span>
               <p className="text-gray-400">{item}</p>
             </div>
           ))}
          </div>
        )}

        </div>
      </div>
    </main>
  );
}