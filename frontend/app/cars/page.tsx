"use client"
import CarCard from "@/components/cars/CarCard";
import Image from "next/image";
import { useEffect, useState } from "react";
import PlusButton from "@/components/buttons/__PlusButton";
import { useCars } from "../hooks/useCars";
import { useCreateCar } from "../hooks/useCreateCar";
import RegisterCar from "@/components/cars/RegisterCar";



export default function CarsPage() {
const {cars, error, setCars} = useCars()
const {createCar, loading} = useCreateCar()
const [showCreateCarPopup, setShowCreateCarPopup] = useState(false);
const [carNickName, setCarNickName] = useState('')
const [licensePlate, setLicensePlate] = useState('')
const [modelFk, setModelFk] = useState('')

const [models, setModels] = useState([]);
const [modelQuery, setModelQuery] = useState("");
const [selectedModelPk, setSelectedModelPk] = useState("");
const [showModels, setShowModels] = useState(false);



useEffect(() => {
  fetch("http://localhost/models", {
    credentials: "include",
  })
    .then(res => res.json())
    .then(data => setModels(data));
}, []);

const filteredModels = models.filter((model) =>
  `${model.brand_name} ${model.model_name}`
    .toLowerCase()
    .includes(modelQuery.toLowerCase())
);

const handleUpdateCar = (carPk: string, nickname: string) => {
  setCars((prev) =>
    prev.map((car) =>
      car.car_pk === carPk
        ? { ...car, car_nickname: nickname }
        : car
    )
  );
};

const handleDelete = (carPk: string) => {
  setCars(prev => prev.filter(car => car.car_pk !== carPk));
};


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
      <div><PlusButton text="Registrer" onClick={() => setShowCreateCarPopup(true)}/></div>
      </div>
      <h5>Se og rediger i dine køretøjer og deres medlemskaber</h5>
      <div>
        {cars.map((car) => (
          
          <CarCard
            key={car.car_pk ?? crypto.randomUUID()}
            car={car}
            onDelete={handleDelete}
            onUpdate={handleUpdateCar}
          />
        ))}
      </div>
      
<RegisterCar
 key={showCreateCarPopup ? "open" : "closed"}
  isOpen={showCreateCarPopup}
  onClose={() => setShowCreateCarPopup(false)}
  onCreateCar={async (data) => {
    const newCar = await createCar(data);
    setCars((prev) => [...prev, newCar]);
  }}
/>
    </main>
  );
  
}