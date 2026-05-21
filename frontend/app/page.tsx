"use client"
import dynamic from "next/dynamic";
import { useAuth } from '@/context/AuthContext'
import LoginForm from "@/components/LoginForm";
const Map = dynamic(() => import("@/components/Map"), {
  ssr: false,
  loading: () => <p>Loading map...</p>,
});

export default function Home() {
  const { user, loading } = useAuth();
  return (
    <div className="flex-1">
      {user && <Map />
      }

      {!user && <LoginForm />}
      
    </div>
  );
}