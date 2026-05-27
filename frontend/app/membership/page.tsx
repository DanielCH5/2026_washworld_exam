"use client"
import { IoIosArrowDown, IoIosArrowUp } from "react-icons/io";
import SquareButton from "@/components/buttons/__SquareButton";
import { useState, useEffect } from "react";
import { IoMdCheckmarkCircle } from "react-icons/io";
import { IoIosCloseCircle } from "react-icons/io";
import  MembershipAccordion  from "@/components/membership/MembershipAccordion";

// All 12 wash program IDs in the system
const ALL_PROGRAM_IDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

// Danish display names for each wash program
const PROGRAM_DISPLAY_NAMES: Record<number, string> = {
  1: "Skumforvask",
  2: "Aktiv shampoo",
  3: "Hjulvask",
  4: "Højtryksvask",
  5: "Børstevask",
  6: "Voks",
  7: "Tørring",
  8: "Højglans",
  9: "Undervognsvask*",
  10: "Skumvask",
  11: "Affedtning",
  12: "Sæsonrens",
};

// Hardcoded prices until a price column is added to the washes table
const MEMBERSHIP_PRICES: Record<number, number> = {
  1: 139,   // Guld
  2: 169,  // Premium
  3: 199,  // Brilliant
};

// Hardcoded subtitles per membership
const MEMBERSHIP_SUBTITLES: Record<number, string> = {
  1: "Grundig daglig vask",
  2: "Komplet vask til en god pris",
  3: "Bedste vask året rundt",
};

type WashProgram = {
  addon_pk: number;
  addon_name: string;
};

type Membership = {
  membership_pk: number;
  membership_name: string;
  wash_programs: WashProgram[];
};

function MembershipCard({ membership }: { membership: Membership }) {
  const [isOpen, setIsOpen] = useState(false);

  // Set of which program IDs are included in this membership
  const includedIds = new Set(membership.wash_programs.map((p) => p.addon_pk));

  const leftCol = ALL_PROGRAM_IDS.slice(0, 7);   // IDs 1-7
  const rightCol = ALL_PROGRAM_IDS.slice(7);      // IDs 8-12

  return (
    <div className="flex flex-col justify-center text-center gap-1 bg-[var(--grey-5)] p-6 shadow-[var(--box-Shadow)] mt-2">
      <h2>{membership.membership_name}</h2>
      <h5>{MEMBERSHIP_SUBTITLES[membership.membership_pk]}</h5>
      <div className="flex flex-row justify-center items-end gap-1">
        <h2>{MEMBERSHIP_PRICES[membership.membership_pk]}</h2>
        <h5>kr./md.</h5>
      </div>
      <SquareButton text="Tilføj medlemskab" />
      <div
        onClick={() => setIsOpen(!isOpen)}
        className="flex flex-row justify-center pt-2 text-[var(--green-White-BG)] items-center gap-1 cursor-pointer"
      >
        <p>Se hvad den indeholder</p>
        {isOpen ? <IoIosArrowUp /> : <IoIosArrowDown />}
      </div>
      {isOpen && (
        <div className="flex flex-row pt-4 gap-16 justify-center">
          <div className="flex flex-col gap-2 items-start">
            {leftCol.map((id) => (
              <p key={id} className={`flex items-center gap-1 ${!includedIds.has(id) ? "text-gray-400" : ""}`}>
                {includedIds.has(id)
                  ? <IoMdCheckmarkCircle className="text-green-500" />
                  : <IoIosCloseCircle />}
                {PROGRAM_DISPLAY_NAMES[id]}
              </p>
            ))}
          </div>
          <div className="flex flex-col gap-2 items-start">
            {rightCol.map((id) => (
              <p key={id} className={`flex items-center gap-1 ${!includedIds.has(id) ? "text-gray-400" : ""}`}>
                {includedIds.has(id)
                  ? <IoMdCheckmarkCircle className="text-green-500" />
                  : <IoIosCloseCircle />}
                {PROGRAM_DISPLAY_NAMES[id]}
              </p>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}

export default function MembershipPage() {
  const [memberships, setMemberships] = useState<Membership[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  useEffect(() => {
    fetch("http://localhost/memberships")
      .then((res) => res.json())
      .then((data) => {
        setMemberships(data);
        setLoading(false);
      })
      .catch(() => {
        setError("Kunne ikke hente medlemskaber");
        setLoading(false);
      });
  }, []);

  if (loading) return <main><p>Indlæser...</p></main>;
  if (error) return <main><p>{error}</p></main>;

  return (
    <main className="mb-10">
      <h1>Wash World</h1>
      <h1 className="text-[var(--green-White-BG)] mt-[-10px]">medlemskaber</h1>
      {memberships.map((membership) => (
        <MembershipCard key={membership.membership_pk} membership={membership} />
      ))}
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