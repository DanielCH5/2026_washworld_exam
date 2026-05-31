"use client";
//component  for the info in bottom of the membership page with the accordion to close it down

import { useState } from "react";
import { IoIosArrowDown, IoIosArrowUp } from "react-icons/io";

export default function MembershipAccordion() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <div className="bg-[var(--grey-5)] p-4 mt-7 mb-20">
      <h4 className="text-[var(--green-White-BG)] mb-[-4px]">MEDLEMSKAB</h4>
      <h2>Ubegrænset bilvask</h2>

      <div className={`overflow-hidden transition-all duration-300 ${isOpen ? "max-h-[2000px]" : "max-h-[80px]"}`}>
        <p>Få ubegrænset bilvask til fast lav pris hos Wash World
        Et medlemskab til Wash World giver dig ubegrænset bilvask året rundt. Vi har flere end 140 vaskehaller rundt om i Danmark, hvor du kan køre ind
        og få vasket din bil – effektivt, billigt og miljørigtigt. Vores miljøvenlige vaskehaller anvender den nyeste teknologi og sikrer dig en
        skånsom bilvask. Køb medlemskab til Wash World og få ubegrænset bilvask, der effektivt vasker din bil ren på ganske få minutter. Du er velkommen
        til at afprøve vores service ved at købe en enkeltvask i en af vores vaskehaller.</p>
        <br/>
        <p>Opret dig på 2 minutter og vask med det samme
        Hos Wash World køber du bilvask på abonnement til en fast lav pris. Abonnementet betales løbende over dit betalingskort, og du kan til enhver
        tid sætte det på pause, opsige eller op- eller nedgradere dit medlemskab. Du kan vaske så ofte, du vil, i vores miljøvenlige vaskehaller til
        en fast lav pris. Vælg mellem Guld, Premium eller Brilliant medlemskab, som koster fra 139 kr./md. Oprettelse 99 kr. – ingen binding.</p>
        <br/>
        <p>Bliv bare siddende – vaskehallen genkender din nummerplade
        Som medlem hos Wash World skal du ikke have penge op af lommen, hver gang du vil vaske bilen. Du kan køre direkte i vaskehallen – helt uden
        at stå ud af din bil. Vores vaskehaller bruger nummerplade genkendelse, så du hverken skal finde kort eller penge frem, men kan blive siddende i
        din bil, mens vores effektive vaskehal klarer bilvasken. Du sparer tid og penge – og får klaret bilvasken nemt og komfortabelt.</p>
        <br/>
        <p>Fleksibelt medlemskab
        Hos Wash World er der ingen binding på vores ubegrænsede medlemskab og du kan altid opsige med 1 måneds varsel til udgangen af en måned. Det
        står dig frit for at opsige eller sætte dit abonnement på pause fx i perioder, hvor din bil ikke bliver brugt så meget. Du kan også opgradere
        eller nedgradere dit abonnement, hvis dit behov ændrer sig.</p>
        <br/>
        <p>Du kan til enhver tid vælge en anden type vask
        Selvom du har købt abonnement på en bestemt vask, så kan du sagtens vælge en anden type vask ved vaskehallens terminal. Du er således ikke
        låst fast på dit abonnementsvalg, men kan vælge nøjagtig den bilvask, du har behov for. Dine eventuelle tilkøb bliver trukket sammen med næste
        måneds betaling. Ved et tilkøb betaler du kun differencen på enkeltvaskprisen.
        Foretrækker du at vaske din bil selv? Så prøv Vask Selv, som er et supplement til vores automatiske vaskehaller. Her kan du selv gå i krig med
        vores professionelle udstyr, som er særligt udviklet til en skånsom, vandbesparende og miljøvenlig bilvask.</p>
      </div>

      {!isOpen && (
        <div className="h-8 bg-gradient-to-t from-[var(--grey-5)] to-transparent mt-[-32px] relative" />
      )}

      <div
        onClick={() => setIsOpen(!isOpen)}
        className="flex flex-row justify-center pt-2 text-[var(--green-White-BG)] items-center gap-1 cursor-pointer"
      >
        <p>{isOpen ? "Læs mindre" : "Læs mere"}</p>
        {isOpen ? <IoIosArrowUp /> : <IoIosArrowDown />}
      </div>
    </div>
  );
}
