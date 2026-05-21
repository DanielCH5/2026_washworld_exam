"use client"

import Image from "next/image";
import Link from "next/link";



export default function Header() {
  return (
    <div className="sticky top-0 bg-[var(--solid-Black)] py-4 px-4 flex justify-center">
        <Link href="/">
        <Image
        src="/images/logo.png"
        alt="Wash World logo"
        width={80}
        height={20}
      />
      </Link>
    </div>
   
  );
}