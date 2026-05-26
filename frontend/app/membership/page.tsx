"use client"
import { IoIosArrowDown } from "react-icons/io";
import SquareButton from "@/components/buttons/__SquareButton";

export default function MembershipPage() {
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
          <div className="flex flex-row justify-center pt-2 text-[var(--green-White-BG)] items-center gap-1"><p>Se hvad den indeholder</p><IoIosArrowDown/></div>
        </div>
      </div>
    </main>
  );
}