'use client'
import { useAuth } from '@/context/AuthContext'
import { useState } from "react";

export default function LoginForm() {
    const { login, loading } = useAuth();
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [error, setError] = useState<{ error: string; error_field: string } | null>(null)
    if (loading) return <div className="animate-spin rounded-full h-6 w-6 border-4 border-gray-200 border-t-blue-500" />

    async function loginUser(e: React.SubmitEvent) {
        e.preventDefault();

        const result = await login(email, password)
        if (!result.ok) {
            console.log(result)
            setError({ error: result.error, error_field: result.error_field })
        }
    }

    return (
        <div>
            <h1>
                Log ind
            </h1>

            <h2>
                Log ind for at se og redigere dine medlemsskaber
            </h2>

            <form onSubmit={loginUser} className='flex flex-col'>
                <label htmlFor="email">Email</label>
                <input type="text" placeholder="email" value={email} onChange={e => setEmail(e.target.value)} />
                {error?.error_field === 'email' && <p className="text-red-500 text-sm">{error.error}</p>}

                <label htmlFor="password">Password</label>
                <input type="text" placeholder="password" value={password} onChange={e => setPassword(e.target.value)} />
                {error?.error_field === 'password' && <p className="text-red-500 text-sm">{error.error}</p>}
                {error?.error_field === 'form' && <p className="text-red-500 text-sm">{error.error}</p>}

                <button type="submit">Log in</button>
            </form>


        </div>
    )


}