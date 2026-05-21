"use client"
import { useState, useEffect } from "react"
import ArrowButton from "../buttons/__ArrowButton"
import { FaRegTrashAlt } from "react-icons/fa";
import { FiEdit3 } from "react-icons/fi";
import TextInput from "../InputForms";


export default function CarCard() {
  return (
    <div className="bg-[var(--grey-5)] mb-4 mt-4">

      <div className="px-5 pt-4 pb-3">

        <div className="flex justify-between items-start mb-1">
          <h3 className="text-xl font-medium m-0">Knuds dyt</h3>
          <div className="flex gap-3 pt-1">
            <button aria-label="Rediger"><FiEdit3/></button>
            <button aria-label="Slet"><FaRegTrashAlt/></button>
          </div>
        </div>

        <div className="flex items-center gap-2 text-[15px] mb-4">
          <span className="w-[18px] h-[18px] rounded-full bg-blue-600 text-white text-[11px] font-large flex items-center justify-center">
            e
          </span><h5>
          Tesla model x </h5>
        </div>

        <div className="flex row gap-1 font-bold">
          <h5>Lokation: </h5>
          <h5 className="text-[var(--green-White-BG)]">"Grenå – Hesselvang"</h5>
        </div>

        <p className="mt-1 text-[var(--grey-60)]">
          Sidst besøg – 8 dage
        </p>
      </div>

      <div className="flex overflow-hidden">
        <div className="flex-1 px-5 py-3 flex items-center">
          <h4 className="tracking-wide whitespace-nowrap">CC 77 777</h4>
        </div>
       <ArrowButton text="Ændre medlemskab"/>
      </div>

    </div>
  )
}