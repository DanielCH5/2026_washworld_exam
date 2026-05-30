"use client"
import Cookies from "js-cookie";
import { useEffect, useState } from "react";
import { useSearchParams } from 'next/navigation';
import ArrowButton from "@/components/buttons/__ArrowButton";


export default function OrdersPage() {
const [addons, setAddons] = useState<any[]>([]);
const [selectedAddons, setSelectedAddons] = useState<number[]>([]);
const [showOrderPopup, setShowOrderPopup] = useState(false);
const searchParams = useSearchParams();

useEffect(() => {
  const fetchAddons = async () => {
    const res = await fetch("http://localhost/addons", {
      credentials: "include",
    });

    const data = await res.json();
    setAddons(data);
  };

  fetchAddons();
}, []);

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
  formData.append("car_pk", "AB12345");

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

  return (
    <>
    <div>
      Location: {locationPk}
      Car: {carPk}
      
    </div>
    <div className="space-y-2">
  <h2 className="font-bold">Tilvalg</h2>

  {addons.map((addon) => (
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