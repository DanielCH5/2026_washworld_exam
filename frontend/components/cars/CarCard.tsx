"use client"
import { useState, useEffect } from "react"
import { Car } from "@/types/car";
import ArrowButton from "../buttons/__ArrowButton"
import { FaRegTrashAlt } from "react-icons/fa";
import { FiEdit3 } from "react-icons/fi";
import TextInput from "../InputForms";

  type CarCardProps = {
  car: Car;
};


export default function CarCard({car} : CarCardProps) {

  
  return (
    <div className="bg-[var(--grey-5)] mb-4 mt-4">

      <div className="px-5 pt-4 pb-3">

        <div className="flex justify-between items-start mb-1">
          <h3 className="text-xl font-medium m-0">{car.car_nickname}</h3>
          <div className="flex gap-3 pt-1">
            <button aria-label="Rediger"><FiEdit3/></button>
            <button aria-label="Slet"><FaRegTrashAlt/></button>
          </div>
        </div>

        <div className="flex items-center gap-2 text-[15px] mb-4">
          {car?.car_electric == 1 && (
          <span className="w-[18px] h-[18px] rounded-full bg-blue-600 text-white text-[11px] font-large flex items-center justify-center">
            e
          </span>)}
          <h5>{car.brand_name} {car.model_name}</h5>
        </div>

        <div className="flex row gap-1 font-bold">
          
          {(car.all_locations === 1 || car.location_name) && (
            <div className="flex row gap-1 font-bold">
              <h5>Lokation:</h5>

            <h5 className="text-[var(--green-White-BG)]">
          {car.all_locations === 1
            ? "ALLE"
            : car.location_name}
            </h5>
            </div>
          )}
        </div>

        <p className="mt-1 text-[var(--grey-60)]">
          Sidst besøg – 8 dage
        </p>
      </div>

      <div className="flex overflow-hidden">
        <div className="flex-1 px-5 py-3 flex items-center">
          <h4 className="tracking-wide whitespace-nowrap">{car.car_pk}</h4>
        </div>
       <ArrowButton text="Ændre medlemskab"/>
      </div>

    </div>
  )
}