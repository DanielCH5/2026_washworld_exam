'use client';

import { useState } from 'react';
import TextInput from '../InputForms';
import { useAuth } from '@/context/AuthContext';

interface DeleteAccountModalProps {
    isOpen: boolean;
    onClose: () => void;
    onDeleted?: () => void; // 👈 add this

}

export default function DeleteAccountModal({
    isOpen,
    onClose,
    onDeleted
}: DeleteAccountModalProps) {
    const [password, setPassword] = useState('');
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState<{ error: string; error_field: string } | null>(null)
    const { deleteUser } = useAuth();
    if (!isOpen) return null;

    const handleDelete = async () => {
        setError(null);

        if (!password.trim()) {
            setError({ error: 'Indtast dit password.', error_field: "password" });
            return;
        }

        try {
            setLoading(true);

            await deleteUser(password);

            setPassword('');
            onClose();
            onDeleted?.(); // 👈 notify parent
        } catch (err) {
            setError({
                error: err instanceof Error ? err.message : 'Der opstod en fejl.',
                error_field: "password"
            }
            );
        } finally {
            setLoading(false);
        }
    };

    const handleClose = () => {
        setPassword('');
        setError(null);
        onClose();
    };

    return (
        <div className="fixed inset-0 z-[9999] flex items-center justify-center bg-black/60 backdrop-blur-sm">
            <div className="w-[400px] overflow-hidden bg-white">
                <div className="p-6">
                    <h3 className="mb-4 text-lg font-bold">
                        Slet bruger
                    </h3>

                    <p className="mb-4">
                        Denne handling kan ikke fortrydes. Indtast dit
                        password for at bekræfte sletningen af din konto.
                    </p>

                    <TextInput
                        type="password"
                        label="Adgangskode"
                        placeholder="Din adgangskode"
                        value={password}
                        onChange={setPassword}
                        state={error?.error_field === 'password' ? 'error' : 'normal'}
                        errorMessage={error?.error_field === 'password' ? error.error : undefined}
                    />


                </div>

                <div className="flex border-t">
                    <button
                        onClick={handleClose}
                        className="flex-1 py-3 font-bold"
                        disabled={loading}
                    >
                        Annuller
                    </button>

                    <button
                        onClick={handleDelete}
                        disabled={loading || !password}
                        className="flex-1 bg-red-600 py-3 font-bold text-white disabled:opacity-50"
                    >
                        {loading ? 'Sletter...' : 'SLET BRUGER'}
                    </button>
                </div>
            </div>
        </div>
    );
}