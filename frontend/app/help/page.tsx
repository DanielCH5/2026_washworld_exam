"use client"
import ArrowButton from "@/components/buttons/__ArrowButton";

export default function HelpPage() {
  return (
    <main>
      <h1>Hjælp og support</h1>
      <p>Er du støt på et problem, eller mangler du informationer?
        Ring til os her, eller send en mail på <span className="text-[var(--green-White-BG)] underline hover:text-green-600">washworld@gmail.com</span>
      </p>
      <div>button to call</div>
      <h1>Erhvervskunder</h1>
      <p>Har du spørgsmål omkring firmabiler, faktura eller erhvervsaftaler?</p>
      <div><ArrowButton text="Erhvervssupport"/></div>
      <h1>Ofte stillede spørgsmål</h1>
      <div>Accordions med spørgsmål</div>
      <div><ArrowButton text="Gå til FAQ"/></div>
    </main>
  );
}