"use client"

import { useState, useEffect } from "react";
import  MembershipAccordion  from "@/components/membership/MembershipAccordion";
import MembershipList from "@/components/membership/MembershipList";

export default function MembershipPage() {
  return (
    <main className="mb-10">
      <h1>Wash World</h1>
      <h1 className="text-[var(--green-White-BG)] mt-[-10px]">medlemskaber</h1>
      <MembershipList />
      <MembershipAccordion />
    </main>
  );
}

// "use client"
// import { IoIosArrowDown, IoIosArrowUp } from "react-icons/io";
// import SquareButton from "@/components/buttons/__SquareButton";
// import { useState } from "react";
// import { IoMdCheckmarkCircle } from "react-icons/io";
// import { IoIosCloseCircle } from "react-icons/io";

// export default function MembershipPage() {
//   const [isOpen, setIsOpen] = useState(false);

//   return (
//     <main>
//       <h1>Wash World</h1>
//       <h1 className="text-[var(--green-White-BG)] mt-[-10px]">medlemskaber</h1>
//       {/*membership v.1*/}
//       <div>
//         <div className="flex flex-col justify-center text-center gap-1 bg-[var(--grey-5)] p-6 shadow-[var(--box-Shadow)] mt-2">
//           <h2>Brilliant</h2>
//           <h5>Bedste vask året rundt</h5>
//           <div className="flex flex-row justify-center items-end gap-1"><h2>199</h2><h5>kr./md.</h5></div>
//           <SquareButton text="Tilføj medlemskab"/>
//           <div onClick={() => setIsOpen(!isOpen)} className="flex flex-row justify-center pt-2 text-[var(--green-White-BG)] items-center gap-1 cursor-pointer">
//           <p>Se hvad den indeholder</p>
//           {isOpen ? <IoIosArrowUp /> : <IoIosArrowDown />}
//           </div>
//           {isOpen && (
//             <div className="flex flex-row pt-4 gap-16 justify-center">
//               <div className="flex flex-col gap-2 items-start">
//               <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Skumforvask</p>
//               <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Aktiv shampoo</p>
//               <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Hjulvask</p>
//               <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Højtryksvask</p>
//               <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Børstevask</p>
//               <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Voks</p>
//                <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Tørring</p>
//               </div>
//               <div className="flex flex-col gap-2 items-start">
//                <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Højsglans</p>
//                <p className="flex items-center gap-1"><IoMdCheckmarkCircle className="text-green-500"/> Undervognsvask*</p>
//                <p className="flex items-center gap-1 text-gray-400"><IoIosCloseCircle /> Skumvask</p>
//                <p className="flex items-center gap-1 text-gray-400"><IoIosCloseCircle /> Affedtning</p>
//                <p className="flex items-center gap-1 text-gray-400"><IoIosCloseCircle /> Sæsonrens</p>
//               </div>
//            </div>
//           )}

//         </div>
//       </div>
//     </main>
//   );
// }