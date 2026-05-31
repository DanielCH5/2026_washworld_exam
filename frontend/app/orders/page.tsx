"use client"
import Cookies from "js-cookie";
import { useEffect, useState } from "react";
import { useSearchParams } from 'next/navigation';
import { useCar } from "../hooks/useCar";
import { useAddons } from "../hooks/useAddons";
import ArrowButton from "@/components/buttons/__ArrowButton";
import { useRouter } from "next/navigation";



export default function OrdersPage() {
const router = useRouter();
const [selectedAddons, setSelectedAddons] = useState<number[]>([]);
const [showPaymentPopup, setShowPaymentPopup] = useState(false);
const [showInformationPopup, setShowInformationPopup] = useState(false);
const [showStartWashPopup, setShowStartWashPopup] = useState(false);
const [showWashProcessPopup, setShowWashProcessPopup] = useState(false);
const [showEndWashPopup, setShowEndWashPopup] = useState(false);
const searchParams = useSearchParams();



//-------------------------------------- GET LOCATION AND CAR ---------------------------------------------------

  const locationPk = searchParams.get('location_pk');
  const carPk = searchParams.get('car_pk');

//-------------------------------------- GET CARS AND ADDONS FROM HOOKS----------------------------------------------------
 
const { car } = useCar(carPk);
 const { addons: washAddons } = useAddons(car?.wash_fk ?? 1)
 //const { addons: allAddons } = useAddons();
 const allAddons = [
  { addon_pk: 1, addon_name: "Foam pre-wash" },
  { addon_pk: 2, addon_name: "Active shampoo" },
  { addon_pk: 3, addon_name: "Wheel wash" },
  { addon_pk: 4, addon_name: "High-pressured wash" },
  { addon_pk: 5, addon_name: "Brush wash" },
  { addon_pk: 6, addon_name: "Wax" },
  { addon_pk: 7, addon_name: "Drying" },
  { addon_pk: 8, addon_name: "High gloss" },
  { addon_pk: 9, addon_name: "Underbody wash" },
  { addon_pk: 10, addon_name: "Foam wash" },
  { addon_pk: 11, addon_name: "Degreasing" },
  { addon_pk: 12, addon_name: "Seasonal cleaning" },
];

//-------------------------------------- UPDATE ORDER STATUS ----------------------------------------------------
 
async function updateStatus(carPk: string) {
  const res = await fetch(`http://localhost/order/status/${carPk}`, {
    method: "PATCH",
    credentials: "include",
    headers: {
      "X-CSRF-TOKEN": Cookies.get("csrf_access_token") ?? "",
    },
  });

  return res.json();
}


useEffect(() => {
  if (!showWashProcessPopup || !carPk) return;

  updateStatus(carPk)
    .then(console.log)
    .catch(console.error);
}, [showWashProcessPopup, carPk]);

useEffect(() => {
  if (!showEndWashPopup || !carPk) return;

  updateStatus(carPk)
    .then(console.log)
    .catch(console.error);
}, [showEndWashPopup, carPk]);

//-------------------------------------- CREATE ORDER ----------------------------------------------------
  
const createOrder = async () => {
  const formData = new FormData();

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
};

//-------------------------------------- ADDONS ----------------------------------------------------

const toggleAddon = (addonId: number) => {
  setSelectedAddons((prev) => {
    if (prev.includes(addonId)) {
      return prev.filter((id) => id !== addonId);
    }
    return [...prev, addonId];
  });
};


useEffect(() => {
  setSelectedAddons(
    washAddons?.map((a) => a.addon_pk) ?? []
  );
  
}, [washAddons, car?.wash_fk]);



//-------------------------------------- TIMERS ----------------------------------------------------

useEffect(() => {
   if (!showWashProcessPopup) return;
  const timer = setTimeout(() => {
    setShowWashProcessPopup(false);
    setShowEndWashPopup(true);
  }, 1 * 10 * 1000); // 15 * 60 * 1000 = 15 minutes

  return () => clearTimeout(timer);
}, [showWashProcessPopup]);


useEffect(() => {
 if (!showEndWashPopup) return;
  const timer = setTimeout(() => {
    setShowEndWashPopup(false);
    router.push(`/`)
  }, 1 * 5 * 1000); // 1 * 10 = seconds

  return () => clearTimeout(timer);
}, [showEndWashPopup]);


//------------------------------------------ RETURN HTML ------------------------------------------------------------------

  return (
    <>
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
<div className="flex items-center gap-4">
<button onClick={() => router.push(`/`)} className="px-4 py-2"> ANNULLER </button>
<ArrowButton text="Gå videre" onClick={() => {  if (car?.wash_fk) {
      setShowInformationPopup(true);
    } else {
      setShowPaymentPopup(true);
    }
  }} />
</div>
{showPaymentPopup && (
  <div className="fixed inset-0 flex items-center justify-center bg-black/50">
    <div className="rounded bg-white p-6">
      <b>Betal for valg vask</b>
      <p>VIS TILMELD BETALINGSTYPER HER!!!!!</p>
    <div className="flex justify-end gap-3">
        <button
          onClick={() => setShowPaymentPopup(false)}
          className="px-4 py-2"
        >
          ANNULLER
        </button>
        
        <ArrowButton text="ACCEPTER" onClick={() => {  setShowPaymentPopup(false); setShowInformationPopup(true);
  createOrder()}} />
    </div>
  </div>
  </div>
)}

{showInformationPopup && (
  <div className="fixed inset-0 flex items-center justify-center bg-black/50">
    <div className="rounded bg-white p-6">
      <b>Kør ind i vaskehal</b>
      <p>OBS!: Husk at fjerne din antenne inden du starer vasken</p>
    <div className="flex justify-end gap-3">
        <ArrowButton text="ACCEPTER" onClick={() => {  setShowInformationPopup(false);  setShowStartWashPopup(true);}} />
    </div>
  </div>
  </div>
)}

{showStartWashPopup && (
  <div className="fixed inset-0 flex items-center justify-center bg-black/50">
    <div className="rounded bg-white p-6">
      <b>Start din vask</b>
      <p>Har du husket at fjerne antennen?</p>
    <div className="flex justify-end gap-3">
        <ArrowButton text="START VASK" onClick={() => {  setShowStartWashPopup(false);  setShowWashProcessPopup(true);}} />
    </div>
  </div>
  </div>
)}

{showWashProcessPopup && (
  <div className="fixed inset-0 flex items-center justify-center bg-black/50">
    <div className="rounded bg-white p-6">
      <b>Følg din vaskeprocess her</b>
      <p>VASKE IKON HER!!!!!!!!!</p>
      <p>Din vask er i gang</p>
      <p>TIMER HER HER!!!!!!!!!</p>
  </div>
  </div>
)}
{showEndWashPopup && (
  <div className="fixed inset-0 flex items-center justify-center bg-black/50">
    <div className="rounded bg-white p-6">
      <b>Vask færdig</b>
      <p>GRØN CIRKEL IKON HER!!!!!!!!!</p>
      <p>Din vask er færdig og du kan nu køre ud af vaskehallen</p>
  </div>
  </div>
)}
    </>
  );
}