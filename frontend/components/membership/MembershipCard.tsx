"use client"
// this component is for the list of membership types on membership page. It shows the different wash programs and if they are in the membership or no. its also to style the cards seperately. 

import { useState } from "react";
import { IoIosArrowDown, IoIosArrowUp } from "react-icons/io";
import SquareButton from "@/components/buttons/__SquareButton";
import MembershipProgramList from "@/components/membership/MembershipProgramList";

const MEMBERSHIP_PRICES: Record<number, number> = {
  1: 139,
  2: 169,
  3: 199,
};

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

type Props = {
  membership: Membership;
};

export default function MembershipCard({ membership }: Props) {
  const [isOpen, setIsOpen] = useState(false);

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
      {isOpen && <MembershipProgramList wash_programs={membership.wash_programs} />}
    </div>
  );
}