"use client"
// This component is for the list of membership types on membership page. It shows the different wash programs and if they are in the membership or no.
import { IoMdCheckmarkCircle } from "react-icons/io";
import { IoIosCloseCircle } from "react-icons/io";

const ALL_PROGRAM_IDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

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

type WashProgram = {
  addon_pk: number;
  addon_name: string;
};

type Props = {
  wash_programs: WashProgram[];
};

export default function MembershipProgramList({ wash_programs }: Props) {
  const includedIds = new Set(wash_programs.map((p) => p.addon_pk));
  const leftCol = ALL_PROGRAM_IDS.slice(0, 7);
  const rightCol = ALL_PROGRAM_IDS.slice(7);

  return (
    <div className="flex flex-row pt-4 gap-16 justify-center">
      <div className="flex flex-col gap-2 items-start">
        {leftCol.map((id) => (
          <p key={id} className={`flex items-center gap-1 ${!includedIds.has(id) ? "text-gray-400" : ""}`}>
            {includedIds.has(id) ? <IoMdCheckmarkCircle className="text-green-500" /> : <IoIosCloseCircle />}
            {PROGRAM_DISPLAY_NAMES[id]}
          </p>
        ))}
      </div>
      <div className="flex flex-col gap-2 items-start">
        {rightCol.map((id) => (
          <p key={id} className={`flex items-center gap-1 ${!includedIds.has(id) ? "text-gray-400" : ""}`}>
            {includedIds.has(id) ? <IoMdCheckmarkCircle className="text-green-500" /> : <IoIosCloseCircle />}
            {PROGRAM_DISPLAY_NAMES[id]}
          </p>
        ))}
      </div>
    </div>
  );
}