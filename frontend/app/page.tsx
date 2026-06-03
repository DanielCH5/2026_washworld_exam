"use client"
import dynamic from "next/dynamic";
import { useAuth } from '@/context/AuthContext'
import LoginForm from "@/components/LoginForm";
import SignupForm from "@/components/CreateUserForm";
import { useState } from "react";
const Map = dynamic(() => import("@/components/Map"), {
  ssr: false,
  loading: () => <p>Loading map...</p>,
});

export default function Home() {
  const [form, setForm] = useState('')
  const { user } = useAuth();
  return (
    <div className="flex-1 -mx-5 -my-5">
      {user && <Map />}

      {!user && !form && <LoginForm />}
      {!user && form === 'create' && <SignupForm />}


      {!user && form === '' &&
        <p>Ikke nogen bruger? <span><button
          onClick={() => setForm('create')}
          className="text-blue-500 underline"
        >
          Click me
        </button></span></p>
      }
      {!user && form === 'create' &&
        <p>Allerede en bruger? <span><button
          onClick={() => setForm('')}
          className="text-blue-500 underline"
        >
          Log ind her
        </button></span></p>
      }

    </div>
  );
}