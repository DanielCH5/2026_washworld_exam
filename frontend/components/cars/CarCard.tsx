"use client"
import { useState, useEffect } from "react"
import { Car } from "@/types/car";
import ArrowButton from "../buttons/__ArrowButton"
import { FaRegTrashAlt } from "react-icons/fa";
import { FiEdit3 } from "react-icons/fi";
import TextInput from "../InputForms";
import { useDeleteCar } from "../../app/hooks/useDeleteCar";
import { useUpdateCar } from "../../app/hooks/useUpdateCar";
import CreateMembership from "@/components/membership/CreateMembership";
import { MdClose } from "react-icons/md";
import { IoMdCheckmark } from "react-icons/io";


  type CarCardProps = {
  car: Car;
  onDelete: (carPk: string) => void;
  onUpdate: (carPk: string, nickname: string) => void;
};


const getNewestOrder = async (carPk: string) => {
  const res = await fetch(`http://localhost/order/new/${carPk}`, {
    credentials: "include",
  });

  if (!res.ok) {
    throw new Error("Failed to fetch order");
  }

  return res.json();
};


export default function CarCard({car, onDelete, onUpdate} : CarCardProps,) {
  const [showCreateMembershipModal, setShowCreateMembershipModal] = useState(false);
  const [showDeletePopup, setShowDeletePopup] = useState(false);
  const { deleteCar } = useDeleteCar();
  const { updateCar, loading, error } = useUpdateCar();
  const [newestOrder, setNewestOrder] = useState<any>(null);
  const [isEditing, setIsEditing] = useState(false);
  const [editedNickname, setEditedNickname] = useState(car.car_nickname);

  useEffect(() => {
  const fetchOrder = async () => {
    try {
      const data = await getNewestOrder(car.car_pk);
      setNewestOrder(data || null);
    } catch (err) {
      console.error(err);
  
    }
  };

  fetchOrder();
}, [car.car_pk]);

const getDaysAgo = (epochSeconds: number) => {
  const now = Date.now();
  const epochMs = epochSeconds * 1000;

  const diffMs = now - epochMs;
  return Math.floor(diffMs / (1000 * 60 * 60 * 24));
};
//<button aria-label="Slet" onClick={() => deleteCar(car.car_pk)}><FaRegTrashAlt/></button>
  
  return (
    <div className="bg-[var(--grey-5)] mb-4 mt-4">

      <div className="px-5 pt-4 pb-3">

        <div className="flex justify-between items-start mb-1">
  {isEditing ? (
    <div className="flex items-center gap-2">
      <input value={editedNickname} onChange={(e) => setEditedNickname(e.target.value)}
      className="text-xl font-medium bg-[var(--grey-5)] border-b-4 border-2 border-gray-300 border-b-gray-400 focus:border-b-4 focus:border-[var(--green-White-BG)] outline-none px-3 py-2 w-40 bg-white" />
      <button onClick={() => { setEditedNickname(car.car_nickname); setIsEditing(false); }}>
        <MdClose size={20} className="text-[var(--warning-Red)]"/>
      </button>
      <button onClick={async () => { await updateCar({ car_pk: car.car_pk, car_nickname: editedNickname }); onUpdate(car.car_pk, editedNickname); setIsEditing(false); }}>
        <IoMdCheckmark size={20} className="text-[var(--green-White-BG)]"/>
      </button>
    </div>
  ) : (
    <h3 className="text-xl font-medium m-0 capitalize">{car.car_nickname}</h3>
  )}
  {!isEditing && (
    <div className="flex gap-3 pt-1">
      <button aria-label="Rediger" onClick={() => setIsEditing(true)}><FiEdit3/></button>
      <button aria-label="Slet" onClick={() => setShowDeletePopup(true)}><FaRegTrashAlt/></button>
    </div>
  )}
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
          Sidst besøg –  {newestOrder ? `${getDaysAgo(Number(newestOrder.order_time_at))} dage siden` : "Ingen ordre"}
        </p>
      </div>
      {/*license plate needs some stlyin to look right */}
        <div className="flex overflow-hidden">
          <div className="flex-1 px-5 py-3 flex items-center">
            <div className="flex items-center gap-1 px-2 py-1 font-[Gilroy] font-bold  text-xl  ">
        {(() => {
          const p = car.car_pk.toUpperCase().replace(/\s/g, "");
         return (
            <>
              <span>{p.slice(0, 2)}</span>
              <span> </span>
              <span>{p.slice(2, 4)}</span>
             <span> </span>
             <span>{p.slice(4, 7)}</span>
           </>
          );
       })()}
    </div>  
        </div>
        {!car.subscription_pk ? (
  <ArrowButton
    text="Tilføj medlemskab"
    onClick={() => setShowCreateMembershipModal(true)}
  />
) : (
  <ArrowButton
    text="Ændre medlemskab"
  />
)}
  
  {/* FOR EDITING MEMBERSHIP
  <ArrowButton
    text="Ændre medlemskab"
    onClick={() => setShowEditMembershipModal(true)}
  />
  )*/}
       <CreateMembership
        car={car}
        isOpen={showCreateMembershipModal}
        onClose={() => setShowCreateMembershipModal(false)}
      />
     {/*  FOR EDITING MEMBERSHIP
      <EditMembership
  car={car}
  isOpen={showEditMembershipModal}
  onClose={() => setShowEditMembershipModal(false)}
/>*/} 

      {showDeletePopup && (
        <div className="fixed inset-0 flex items-center justify-center bg-black/50">
          <div className=" bg-[var(--solid-White)] p-3">
            <h3>Vil du slette?</h3>
            <p>Er du sikker på at du vil slette dit køretøj <b>{car.car_nickname}</b></p>
          <div className="flex items-center justify-between gap-3 mt-5 -mx-3 -my-3">
              <button
                onClick={() => setShowDeletePopup(false)}
                className="px-4 py-2 flex-1 flex underline text-[var(--grey-60)] justify-center"
              >
                ANNULLER
              </button>
              
              <ArrowButton text="Slet køretøj" onClick={() => { deleteCar(car.car_pk) ; onDelete(car.car_pk); setShowDeletePopup(false)} } />
          </div>
        </div>
        </div>
      )}



    </div>
    </div>
  )
}