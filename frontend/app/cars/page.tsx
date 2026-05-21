"use client"
import CarCard from "@/components/cars/CarCard";
import Image from "next/image";
import PlusButton from "@/components/buttons/__PlusButton";

export default function CarsPage() {
  return (
    <main>
      <Image 
        src="/images/carimage.jpg"
        alt="Picture of car driving into wash"
        width={400}
        height={20}
        className="pb-4"
        ></Image>
      <div className="flex justify-between items-center mb-4">
      <div><h1>Dine Køretøjer</h1></div>
      <div><PlusButton text="Registrer"/></div>
      </div>
      <h5>Se og rediger i dine køretøjer og deres medlemskaber</h5>
      <div>
        <CarCard />
      </div>
    </main>
  );
}