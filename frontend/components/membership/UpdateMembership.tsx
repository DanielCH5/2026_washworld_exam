"use client";

import { MdClose } from "react-icons/md";
import { Car } from "@/types/car";
import { useWashes } from "../../app/hooks/useWashes";
import { useUpdateSubscription } from "../../app/hooks/useUpdateSubscription";
import { useEffect, useState } from "react";
import CheckButton from "@/components/buttons/__CheckButton";
import ArrowButton from "@/components/buttons/__ArrowButton";
import GoBackButton from "@/components/buttons/__GoBackButton";
import { FaApple, FaCcVisa, FaCcMastercard } from "react-icons/fa";
import { FaCreditCard } from "react-icons/fa6";
import { FcGoogle } from "react-icons/fc";
import { useRouter } from "next/navigation";

type UpdateMembershipModalProps = {
  car: Car;
  isOpen: boolean;
  onClose: () => void;
};




export default function UpdateMembership({
  car,
  isOpen,
  onClose,
}: UpdateMembershipModalProps) {
    const {washes, error, setWashes} = useWashes()
    const router = useRouter();
    const [locations, setLocations] = useState([]);
    const [locationQuery, setLocationQuery] = useState("");
    const [showLocations, setShowLocations] = useState(false);
    const [selectedLocationPk, setSelectedLocationPk] = useState<string | null>(car.location_fk);
    const [allLocations, setAllLocations] = useState(car.all_locations);
    const [acceptAll, setAcceptAll] = useState(car.marketing_accepted);
    const [acceptTerms, setAcceptTerms] = useState(true);
    const { updateSubscription, loading } = useUpdateSubscription();
    const [acceptMarketing, setAcceptMarketing] = useState(car.marketing_accepted);
    const [showPaymentPopup, setShowPaymentPopup] = useState(false);
    const [showFinalPopup, setShowFinalPopup] = useState(false);

   useEffect(() => {
  fetch("http://localhost/get-data", {
    credentials: "include",
  })
    .then((res) => res.json())
    .then((data) => setLocations(data));
}, []);



const filteredLocations = locations.filter((location) =>
  `${location.location_name} ${location.location_address}`
    .toLowerCase()
    .includes(locationQuery.toLowerCase())
);

useEffect(() => {
  const location = locations.find(
    (l) => String(l.location_pk) === String(selectedLocationPk)
  );

  if (location) {
    setLocationQuery(
      `${location.location_name} - ${location.location_address}`
    );
  }
}, [locations, selectedLocationPk]);


const [selectedWash, setSelectedWash] = useState<number  | null>(car.wash_fk);
  if (!isOpen) return null;
  
const isValid =
  acceptTerms &&
  selectedWash &&
  selectedLocationPk;

  const handleSubmit = async () => {
 

  await updateSubscription({
    subscription_pk: String(car.subscription_pk),
    wash_pk: String(selectedWash),
    car_pk: String(car.car_pk),
    location_pk: String(selectedLocationPk),
    all_locations: allLocations ? "1" : "0",
    marketing_accepted: acceptMarketing ? "1" : "0",
  });

};

const selectedWashData = washes?.find(
  (wash) => wash.wash_pk === selectedWash
);

const checkValidation = () => {
  if (!acceptTerms) {
    alert("Du skal acceptere vilkår");
    return false;
  }

  if (!selectedWash) {
    alert("Vælg et medlemskab");
    return false;
  }

  if (!selectedLocationPk) {
    alert("Vælg en primær lokation");
    return false;
  }

  return true;
};
  return (
  <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50">
    <div className="relative bg-white rounded p-6 max-w-lg w-full mx-4">
      <button
        onClick={onClose}
        className="absolute top-3 right-3"
      >
        <MdClose size={24} />
      </button>

      <h2 className="font-semibold text-lg mb-3">
        Vælg medlemskab
      </h2>

      <div className="space-y-3">
        {washes?.map((wash) => (
  <label
    key={wash.wash_pk}
    className="flex items-center justify-between p-3 border rounded cursor-pointer"
  >
    <div className="flex items-center gap-3">
      <input
        type="radio"
        name="membership"
        checked={selectedWash === wash.wash_pk}
        onChange={() => setSelectedWash(wash.wash_pk)}
      />

      <span>{wash.wash_name}</span>
    </div>

    <span className="font-medium">
      {wash.wash_price_per_month} kr./md.
    </span>
  </label>
))}
<b>Hvor vil du vaske?</b>
<div className="relative">
  <input
    type="text"
    placeholder="Vælg primær vaskehal"
    value={locationQuery}
    onChange={(e) => {
      setLocationQuery(e.target.value);
      setShowLocations(true);
    }}
    className="w-full bg-[var(--grey-5)] border-b-2 border-gray-300 focus:border-b-[3px] focus:border-[var(--green-White-BG)] outline-none px-3 py-3 text-sm"
  />

  {showLocations && filteredLocations.length > 0 && (
    <div className="absolute z-50 mt-1 w-full rounded border bg-white shadow-lg max-h-60 overflow-y-auto">
      {filteredLocations.map((location) => (
        <button
          key={location.location_pk}
          type="button"
          className="block w-full text-left px-3 py-2 hover:bg-gray-100"
          onClick={() => {
            setSelectedLocationPk(location.location_pk);
            setLocationQuery(
              `${location.location_name} - ${location.location_address}`
            );
            setShowLocations(false);
          }}
        >
          <div className="font-medium">
            {location.location_name}
          </div>
          <div className="text-sm text-gray-500">
            {location.location_address}
          </div>
        </button>
      ))}
    </div>
  )}
</div>
      
      <label className="flex items-center gap-3 cursor-pointer">
  <input
    type="checkbox"
    checked={allLocations}
    onChange={(e) => setAllLocations(e.target.checked)}
  />

  <span>Fri adgang til alle vaskehaller</span>
</label>
<label className="flex items-center gap-3 font-medium cursor-pointer">
  <input
    type="checkbox"
    checked={acceptAll}
    onChange={(e) => {
      const checked = e.target.checked;

      setAcceptAll(checked);
      setAcceptTerms(checked);
      setAcceptMarketing(checked);
    }}
  />

  <span>
    Jeg accepterer Wash Worlds vilkår og at Wash World må sende mig tilbud
  </span>
</label>
<label className="flex items-center gap-2 cursor-pointer">
  <input
    type="checkbox"
    checked={acceptTerms}
    onChange={(e) => {
      const checked = e.target.checked;
      setAcceptTerms(checked);

      // if required one is unchecked → main must be off
      if (!checked) setAcceptAll(false);

      // if both are checked manually → set main
      if (checked && acceptMarketing) setAcceptAll(true);
    }}
  />

  <span>Jeg accepterer Wash Worlds vilkår</span>
</label>
<label className="flex items-center gap-2 cursor-pointer">
  <input
    type="checkbox"
    checked={acceptMarketing}
    onChange={(e) => {
      const checked = e.target.checked;
      setAcceptMarketing(checked);

      // if unchecked → main off
      if (!checked) setAcceptAll(false);

      // if both checked → main on
      if (checked && acceptTerms) setAcceptAll(true);
    }}
  />

  <span>Jeg accepterer, at Wash World må sende mig tilbud</span>
</label>
    </div>
     <div className="flex justify-between items-center mt-5">
            <button
              onClick={onClose} 
              className="px-4 py-2 flex underline text-[var(--grey-60)]  !text-sm"
            >
              ANNULLER
            </button>
    
            <div className="flex justify-end gap-3 mt-3 !h-18">
            <CheckButton
  text="Betal"
  onClick={() => {
    if (checkValidation()) {
      setShowPaymentPopup(true);
    }
  }}
  disabled={!isValid}
/>
                      </div>
          </div>
          </div>
          {showPaymentPopup && (
            <div className="fixed inset-0 flex items-center justify-center bg-black/50">
              <div className=" bg-[var(--solid-White)] p-5 w-[370px]">
                <h3>Betal for valgt vask</h3>
                <p>Tilføj din betalingstype her</p>
                <div className="flex flex-row gap-2"><p className="font-bold">'Pris</p><p className="text-[var(--green-White-BG)]">{selectedWashData?.wash_price_per_month} kr./md.</p></div>
                <div className="flex flex-row gap-2 mt-3">
                  <div className="border-[1.5px] border-[var(--grey-60)] rounded flex flex-row items-center gap-1 p-1"><FaApple/><p>Pay</p></div>
                  <p>Apple Pay</p>
                  </div>
                  <button className="bg-[var(--solid-Black)] text-white flex flex-row rounded items-center gap-1 px-3 py-2 mt-2 w-full justify-center cursor-pointer hover:bg-[var(--grey-80)]"
                  onClick={async () => { handleSubmit(); setShowPaymentPopup(false); setShowFinalPopup(true)}}
                  >
                    <FaApple/><p>Pay</p>
                  </button>
                  <div className="flex flex-row gap-2 mt-2 items-center">
                    <FaCreditCard/>
                    <p>Cards</p>
                    <div className="text-red-700"><FaCcMastercard/></div>
                    <div className="text-blue-600"><FaCcVisa/></div>
          
                  </div>
                  <div className="flex flex-row gap-2 mt-5 items-center">
                    <div className="flex flex-row gap-1 border-[1.5px] border-[var(--grey-60)] rounded-2xl items-center p-1">
                      <FcGoogle/><p>Pay</p>
                    </div>
                    <p className="!text-l">Google Pay</p>
                  </div>
                  
              <div className="flex items-center justify-between gap-3 mt-5 -mx-5 -my-5">
                  <button
                    onClick={() => setShowPaymentPopup(false)}
                    className="px-4 py-2 flex underline text-[var(--grey-60)]  !text-sm"
                  >
                    ANNULLER
                  </button>
                  
                
              </div>
            </div>
            </div>
          )}
          {showFinalPopup && (
            
  <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50">
    <GoBackButton/>
    <div className="bg-white rounded p-6 max-w-md w-full mx-4 text-center">
      <h2 className="text-xl font-semibold">
        Medlem registreret
      </h2>

      <p className="text-sm text-gray-500 mt-2">
        Du kan finde dit medlemskab under "Medlemskab" og se dine køretøjer under "køretøj"
      </p>

      <button onClick={() => router.push(`/`)} className="px-4 py-2 justify-center flex-1 flex text-[var(--grey-60)] underline cursor-pointer"> GÅ TIL FORSIDE </button>
    <ArrowButton text="Gå til medlemskab" 
           onClick={() => router.push(`/membership`)}/>
    </div>
  </div>
)}
  </div>
);
}