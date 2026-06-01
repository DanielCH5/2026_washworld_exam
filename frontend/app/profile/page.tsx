"use client"
import DeleteAccountModal from '@/components/popups/DeleteAccountModal';
import { useAuth } from '@/context/AuthContext'
import { useState } from 'react';
export default function ProfilePage() {
  const { user, loading, logout } = useAuth();
  const [showDeleteModal, setShowDeleteModal] = useState(false);
  const [message, setMessage] = useState<string | null>(null);
  return (
    <main>
      <h1>Din Profil</h1>
      <button onClick={logout}>Logout</button>

      <button onClick={() => setShowDeleteModal(true)}>
        Slet konto
      </button>

      <DeleteAccountModal
        isOpen={showDeleteModal}
        onClose={() => setShowDeleteModal(false)}
        onDeleted={() => {
          setMessage("Din konto blev slettet.");
        }}
      />

      {message && (
        <p className= "text-green-600">
          {message}
        </p>
      )}

    </main>
  );
}