"use client"
import Cookies from "js-cookie";
import { useEffect, useState, useRef } from "react";
import { useSearchParams } from 'next/navigation';
import { useCar } from "../hooks/useCar";
import { useAddons } from "../hooks/useAddons";
import ArrowButton from "@/components/buttons/__ArrowButton";


export default function OrdersPage() {
const [selectedAddons, setSelectedAddons] = useState<number[]>([]);
const [showOrderPopup, setShowOrderPopup] = useState(false);
const searchParams = useSearchParams();


const toggleAddon = (addonId: number) => {
  setSelectedAddons((prev) => {
    if (prev.includes(addonId)) {
      return prev.filter((id) => id !== addonId);
    }
    return [...prev, addonId];
  });
};

  const locationPk = searchParams.get('location_pk');
  const carPk = searchParams.get('car_pk');

  console.log(locationPk);

  
const createOrder = async () => {
  const formData = new FormData();

  formData.append("wash_pk", "1");
  formData.append("location_pk", locationPk!);
  formData.append("car_pk", carPk!);

  selectedAddons.forEach((addonId) => {
    formData.append("addon_pk", addonId.toString());
  });

  const response = await fetch("http://localhost/order", {
    method: "POST",
    credentials: "include",
    headers: {
    "X-CSRF-TOKEN": Cookies.get("csrf_access_token") ?? "",
    }, 
    body: formData,
  });

  const data = await response.json();

  if (!response.ok) {
    throw new Error(data.message);
  }

  console.log(data);
};

  const { car, error } = useCar(carPk);
 const { addons: washAddons } = useAddons(car?.wash_fk);

 const { addons: allAddons } = useAddons();
 useEffect(() => {
  if (!washAddons?.length) return;
  if (!car?.wash_fk) {
    setSelectedAddons([]); // ✅ nothing checked
    return;
  }

  setSelectedAddons(
    washAddons.map((a) => a.addon_pk)
  );
}, [washAddons]);




  return (
    <>
    <div>
      Location: {locationPk}
      Car: {carPk}
      
    </div>
    <div className="space-y-2">
  <h2 className="font-bold">Tilvalg</h2>

  {allAddons.map((addon) => (
    <label key={addon.addon_pk} className="flex items-center gap-2">
      <input
        type="checkbox"
        checked={selectedAddons.includes(addon.addon_pk)}
        onChange={() => toggleAddon(addon.addon_pk)}
      />
      <span>{addon.addon_name}</span>
    </label>
  ))}
</div>
{car && (
  <p>
    {car.wash_fk}
  </p>
)}
<ArrowButton text="Gå videre" onClick={() => {  setShowOrderPopup(true);
  createOrder()}} />

{showOrderPopup && (
  <div className="fixed inset-0 flex items-center justify-center bg-black/50">
    <div className="rounded bg-white p-6">
      <p>Hello</p>
      <button
        className="mt-4 border px-4 py-2"
        onClick={() => setShowOrderPopup(false)}
      >
        Luk
      </button>
    </div>
  </div>
)}
    </>
  );
}