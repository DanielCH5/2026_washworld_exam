"use client"
import ArrowButton from "@/components/buttons/__ArrowButton";
import { useState } from "react";
import Link from "next/link";
import { FaPhone } from "react-icons/fa";

export default function HelpPage() {

  const [open, setOpen] = useState(null);

  return (
    <main>
      <h1>Hjælp og support</h1>

      <p>
        Er du støt på et problem, eller mangler du informationer?
        Ring til os her, eller send en mail på{" "}
        <span className="text-[var(--green-White-BG)] underline hover:text-green-600">
          washworld@gmail.com
        </span>
      </p>

      <div className="flex justify-center py-3"><button
            className="
              group relative flex items-center gap-6 bg-[#00c864] text-white 
              px-13 py-5 font-bold text-[16px] text-inline transition-all duration-300
              hover:bg-[#00b058]
            "
            style={{
              clipPath: "polygon(15% 0, 100% 0, 100% 100%, 0% 100%)", // Skrå kant med clip-path
            }}
          >
            <FaPhone className="text-xl" />
            {/* ml-4 giver lidt ekstra afstand til venstre, så teksten ikke rammer den skrå kant */}
            <p>99 99 99 99</p>
          </button></div>

      <h1>Erhvervskunder</h1>

      <p>
        Har du spørgsmål omkring firmabiler, faktura eller erhvervsaftaler?
      </p>

      <div className="flex justify-center py-3">
        <ArrowButton text="Erhvervssupport" />
      </div>

      <h1>Ofte stillede spørgsmål</h1>

      {/* ACCORDION */}
      <div className="space-y-4 mt-6">

        {/* Question 1 */}
        <div className=" overflow-hidden">
          <button
            onClick={() => setOpen(open === 1 ? null : 1)}
            className="w-full p-4 bg-[var(--grey-5)] flex justify-between items-center"
          >
            <span><p>Hvordan opsiger jeg mit medlemskab?</p></span>
            <span>{open === 1 ? "-" : "+"}</span>
          </button>

          {open === 1 && (
            <div className="p-4 bg-[var(--grey-5)]">
              <p>
              Administrer dit medlemskab direkte via appen under "medlemskaber" eller kontakt vores kundeservice for assistance. Vi er her for at hjælpe dig!
              </p>
            </div>
          )}
        </div>

        {/* Question 2 */}
        <div className=" overflow-hidden">
          <button
            onClick={() => setOpen(open === 2 ? null : 2)}
            className="w-full p-4 bg-[var(--grey-5)] flex justify-between items-center"
          >
            <span><p>Hvordan fungerer nummerpladegenkendelse?</p></span>
            <span>{open === 2 ? "-" : "+"}</span>
          </button>

          {open === 2 && (
            <div className="p-4 bg-[var(--grey-5)]">
              <p>
                Din bil registreres automatisk ved ankomst til vaskehallen da den læser din nummerplade. Den vil så sende dig en besked til at starte vasken. Det hurtigt og nemt!
            </p>
            </div>
          )}
        </div>

      </div>

      <div className="flex justify-center mt-6">
        <Link href="https://help.washworld.dk/da">
        <ArrowButton text="Gå til FAQ" />
        </Link>
      </div>

    </main>
  );
}