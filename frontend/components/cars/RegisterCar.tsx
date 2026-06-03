"use client"
import CarCard from "@/components/cars/CarCard";
import Image from "next/image";
import { useEffect, useState } from "react";
import PlusButton from "@/components/buttons/__PlusButton";
import { useCars } from "../hooks/useCars";
import { useCreateCar } from "../hooks/useCreateCar";
import ArrowButton from "@/components/buttons/__CheckButton";

type Model = {
  model_pk: string;
  brand_name: string;
  model_name: string;
};

type Props = {
  isOpen: boolean;
  onClose: () => void;
  onCreateCar: (data: {
    car_pk: string;
    car_nickname: string;
    model_pk: string;
  }) => Promise<void> | void;
};


export default function RegisterCar({
  isOpen,
  onClose,
  onCreateCar,
}: Props)  {

    if (!isOpen) return null;

const [carNickName, setCarNickName] = useState('')
const [licensePlate, setLicensePlate] = useState('')

const [models, setModels] = useState<Model[]>([]);
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



  return (
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

        <button
          onClick={onClose} 
          className="px-4 py-2 flex underline text-[var(--grey-60)]  !text-sm"
        >
          ANNULLER
        </button>

        <div className="flex justify-end gap-3 mt-3">
        <ArrowButton
              text="Registrer køretøj"
              onClick={async () => {
                await onCreateCar({
                  car_pk: licensePlate,
                  car_nickname: carNickName,
                  model_pk: selectedModelPk,
                });

                onClose();
              }}
            />
                  </div>
      </div>
    </div>
  </div>
)}
