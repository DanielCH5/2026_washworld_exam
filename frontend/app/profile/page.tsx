"use client"
import DeleteAccountModal from '@/components/popups/DeleteAccountModal';
import { useAuth } from '@/context/AuthContext'
import { useEffect, useState } from 'react';
import { FiEdit3 } from "react-icons/fi";
import Image from 'next/image';

export default function ProfilePage() {
  const { user, loading, logout } = useAuth();
  const [showDeleteModal, setShowDeleteModal] = useState(false);
  const [message, setMessage] = useState<string | null>(null);
  const [profile, setProfile] = useState<{ name: string; email: string; created_at: number } | null>(null);

  useEffect(() => {
    fetch ("http://localhost/api/me", { credentials: "include" })
      .then(res => res.json())
      .then(data => setProfile(data));
  }, []);

  const formatDate = (epoch: number) => {
    return new Date(epoch * 1000).toLocaleDateString("da-DK", { day: "numeric", month: "long", year: "numeric" });
  }

  //HArdcoded the challenges since this page is mostly decor and not what we focused on. 
  const challenges = [
    { title: "Vask på samme", plain: "", green: "lokation", suffix: "", count: "0/1" },
    { title: "Vask med", green: "sæsonskyl", suffix: "1 gang", count: "1/1" },
    { title: "Vask dit bil", green: "", suffix: "2 gange", count: "0/2" },
  ]

  //again badges is hardcoded just so i wouldnt have to do a lot of copy paste and repeating.
  const badges = [
    { name: "Super vasker", desc: "Vasket bil 4 gange" },
    { name: "Weekend Warrior", desc: "Vasket kun i weekender" },
    { name: "Early Bird", desc: "Vasket tidligt på dagen 3 gange" },
    { name: "Kø ninja", desc: "Undgået kø alle vaske" },
    { name: "Rute Champion", desc: "Brugt 4 forskellige lokationer" },
    { name: "Insect remover", desc: "Vasket insektrens 2 gange" },
  ]

  return (
    <main>
      <div className="bg-[var(--solid-Black)] text-white p-6
      pb-10 flex flex-row items-center gap-6 justify-center -mx-5 -mt-5 mb-4">
        <div> <Image 
                src="/images/profileimage.svg"
                alt="profile image logo"
                width={40}
                height={20}
                className="w-full"
                ></Image></div>
        <div>
          <h1>{profile?.name ?? "..."}</h1>
          <h5 className="text-[var(--green-White-BG)]">{profile?.email ?? "..."}</h5>
          <p>Oprettet bruger d. <span>{profile ? formatDate(profile.created_at) : "..."}</span></p>
          <button className="flex flex-row items-center gap-1 bg-[var(--grey-60)] px-3 py-1 mt-2 hover:bg-neutral-600 ">
            <FiEdit3 />
            <p className="!text-xs">Rediger</p>
          </button>
        </div>
      </div>

      {/*Still need to add the car subscription */}
      <div>
        <h3>Dit medlemskab</h3>
        <div>her skal carcards MED medlemskab være</div>
      </div>

      {/*hardcoded the processline for now. its a nice to have not need to have */}
      <div>
        <h3>Din process</h3>
        <p>Du har vasket 2 gange denne måned</p>
        <div className="relative flex items-center w-full h-8">
          <div className="absolute w-full h-3 bg-gray-300"
            style={{ clipPath: "polygon(0 0, 97% 0, 100% 100%, 3% 100%)" }} />
          <div className="absolute h-3 bg-[var(--green-White-BG)] w-1/2"
            style={{
              clipPath: "polygon(0 0, 97% 0, 100% 100%, 3% 100%)",
              backgroundImage: "repeating-linear-gradient(75deg, transparent, transparent 8px, rgba(255,255,255,0.25) 8px, rgba(255,255,255,0.25) 10px)"
            }} />
          <div className="absolute left-[calc(50%-16px)] w-8 h-8 rounded-full bg-black text-white flex items-start justify-center text-xl font-bold z-10">
            w
          </div>
        </div>
      </div>

      {/* karousel with the challenges for the badges. irl this would change put for now its just the hardcoded ones */}
      <div className="mt-4">
        <h3 className="font-bold">Dine månedlige udfordringer:</h3>
        <p className="text-gray-500 mb-3">Optjen badges og få rewards</p>
        <div className="flex overflow-x-auto gap-3 snap-x snap-mandatory -mx-5 ">
          {challenges.map((c, i) => (
            <div key={i} className="min-w-[180px] bg-[var(--grey-5)] p-4 snap-start flex flex-col justify-between h-[160px] shrink-0">
              <h4 className="font-bold">
                {c.title} <span className="text-[var(--green-White-BG)]">{c.green}</span> {c.suffix}
              </h4>
              <p className="text-gray-400 text-right">{c.count}</p>
            </div>
          ))}
        </div>
        {/* The little square-ish shapes in the carousel*/}
        <div className="flex justify-center mt-3">
          {challenges.map((_, i) => (
            <div key={i} className={`w-3 h-2 ${i === 0 ? "bg-[var(--green-White-BG)]" : "bg-gray-300"}`}
              style={{ clipPath: "polygon(20% 0%, 100% 0%, 80% 100%, 0% 100%)" }} />
          ))}
        </div>
      </div>

      {/* badges in grid of 4*/}
      <div className="mt-6">
        <h3 className="font-bold">Dine badges</h3>
        <p className="text-gray-500 mb-4">Badges du har optjent gennem månederne</p>
        <div className="grid grid-cols-4 gap-x-2 gap-y-6">
          {badges.map((badge, i) => (
            <div key={i} className="flex flex-col items-center gap-2">
              <div className="w-16 h-16 rounded-full bg-[var(--green-White-BG)] flex items-center justify-center text-center p-2">
                <span className="text-white text-xs font-bold leading-tight">{badge.name}</span>
              </div>
              <p className="text-xs text-center text-gray-600 leading-tight">{badge.desc}</p>
            </div>
          ))}
        </div>
      </div>

      <div className="flex flex-col gap-3 mt-6">
        <button onClick={logout} data-cy="logout-button" className="py-4 bg-[var(--solid-Black)] text-white mx-5">
          <p className="font-bold">Logout</p>
        </button>
        <button onClick={() => setShowDeleteModal(true)} className="py-4 bg-[var(--warning-Red)] text-white mx-5 mb-16">
          <p className="font-bold">Slet konto</p>
        </button>
      </div>

      <DeleteAccountModal
        isOpen={showDeleteModal}
        onClose={() => setShowDeleteModal(false)}
        onDeleted={() => setMessage("Din konto blev slettet.")}
      />
      {message && <p className="text-green-600">{message}</p>}
    </main>
  );
}