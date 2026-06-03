"use client"
import CarCard from "@/components/cars/CarCard";
import Image from "next/image";
import PlusButton from "@/components/buttons/__PlusButton";
import { useCars } from "../hooks/useCars";

export default function CarsPage() {
const {cars, error, setCars} = useCars()

const handleDelete = (carPk: string) => {
  setCars(prev => prev.filter(car => car.car_pk !== carPk));
};
  return (
    <main>
      
      <Image 
        src="/images/carimage.jpg"
        alt="Picture of car driving into wash"
        width={430}
        height={200}
        className="w-full h-48 object-cover"
        ></Image>
      <div className="flex justify-between items-center mb-4">
      <div><h1>Dine Køretøjer</h1></div>
      <div><PlusButton text="Registrer"/></div>
      </div>
      <h5>Se og rediger i dine køretøjer og deres medlemskaber</h5>
      <div>
        {cars.map((car) => (
          <CarCard
            key={car.car_pk}
            car={car}
            onDelete={handleDelete}
          />
        ))}
      </div>
    </main>
  );
}