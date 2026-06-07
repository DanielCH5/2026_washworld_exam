'use client'
import { useAuth } from '@/context/AuthContext'
import { useState } from "react";
import ArrowButton from './buttons/__ArrowButton';
import TextInput from './InputForms';
import Link from 'next/link';
export default function LoginForm() {
    const { login } = useAuth();
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [error, setError] = useState<{ error: string; error_field: string } | null>(null)

    // Removed loading from this, gives an ugly loading flash
    async function loginUser(e: React.SubmitEvent) {
        e.preventDefault();

        const result = await login(email, password)
        if (!result.ok) {
            console.log(result)
            setError({ error: result.error, error_field: result.error_field })
        }
    }

    return (
        <div className="px-6 pt-20">
            <h1 className="text-center">Log ind</h1>
            <h5 className="text-center">Log ind og få en nemmere vaskeoplevelse</h5>

            <form onSubmit={loginUser} className='flex flex-col pt-5'>

                <TextInput
                    type="email"
                    label="Email"
                    placeholder="Din e-mail"
                    value={email}
                    onChange={setEmail}
                    state={error?.error_field === 'email' ? 'error' : 'normal'}
                    errorMessage={error?.error_field === 'email' ? error.error : undefined}
                />

                <TextInput
                    type="password"
                    label="Adgangskode"
                    placeholder="Din adgangskode"
                    value={password}
                    onChange={setPassword}
                    state={error?.error_field === 'password' ? 'error' : 'normal'}
                    errorMessage={error?.error_field === 'password' ? error.error : undefined}
                />

                {/* Form-level error (wrong credentials etc.) */}
                {error?.error_field === 'form' && (
                    <p className="text-red-500 text-sm -mt-3">{error.error}</p>
                )}

                <div className="flex justify-end pt-1">
                    <Link href="/forgot-password" className="font-bold text-[var(--green-White-BG)]">Glemt adgangskode?</Link>
                </div>

                <div className="flex justify-center py-4">
                    <ArrowButton text="Log ind" type="submit" />
                </div>

            </form >


        </div >
    )


}