"use client"
import { useAuth } from '@/context/AuthContext'
export default function ProfilePage() {
  const { user, loading, logout } = useAuth();
  return (
    <main>
      <h1>Din Profil</h1>
      <button onClick={logout}>Logout</button>
    </main>
  );
}