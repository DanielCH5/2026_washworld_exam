"use client"
import CarCard from "@/components/cars/CarCard";
import Image from "next/image";
import { useEffect, useState } from "react";
import PlusButton from "@/components/buttons/__PlusButton";
import { useCars } from "../hooks/useCars";
import { useCreateCar } from "../hooks/useCreateCar";
import ArrowButton from "@/components/buttons/__CheckButton";



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
          />
        ))}
      </div>
      
{showCreateCarPopup && (
  <div className="fixed inset-0 flex items-center justify-center bg-black/50">
    <div className="bg-white p-5 w-[370px]">
      <h3>Registrer dit køretøj</h3>

      <div className="mt-4 flex flex-col gap-3">
        <div>
          <label className="block mb-1">
            Navngiv dit køretøj:
          </label>
          <input
            type="text"
            placeholder="Køretøjets navn"
            value={carNickName}
            onChange={(e) => setCarNickName(e.target.value)}
            className="w-full border rounded px-3 py-2"
          />
        </div>

       <div className="relative">
  <label className="block mb-1">
    Køretøjets mærke og model:
  </label>

  <input
    type="text"
    placeholder="Søg efter mærke og model"
    value={modelQuery}
    onChange={(e) => {
      setModelQuery(e.target.value);
      setShowModels(true);
    }}
    className="w-full border rounded px-3 py-2"
  />

  {showModels && filteredModels.length > 0 && (
    <div className="absolute z-50 mt-1 w-full rounded border bg-white shadow-lg max-h-60 overflow-y-auto">
      {filteredModels.map((model) => (
        <button
          key={model.model_pk}
          type="button"
          className="block w-full text-left px-3 py-2 hover:bg-gray-100"
          onClick={() => {
            setSelectedModelPk(model.model_pk);
            setModelQuery(
              `${model.brand_name} ${model.model_name}`
            );
            setShowModels(false);
          }}
        >
          {model.brand_name} {model.model_name}
        </button>
      ))}
    </div>
  )}
</div>

        <div>
          <label className="block mb-1">
            Køretøjets nummerplade
          </label>
          <input
            type="text"
            placeholder="Nummerplade"
            value={licensePlate}
            onChange={(e) => setLicensePlate(e.target.value)}
            className="w-full border rounded px-3 py-2"
          />
        </div>

        <div className="flex justify-end gap-3 mt-3">
        <ArrowButton text="Registrer køretøj"
            onClick={async () => {
              const newCar = await createCar({
                car_pk: licensePlate,
                car_nickname: carNickName,
                model_pk: selectedModelPk,
              });

              setCars(prev => [...prev, newCar]);

              setShowCreateCarPopup(false);
            }}
          />
                  </div>
      </div>
    </div>
  </div>
)}
    </main>
  );
  
}