'use client'
import { useAuth } from '@/context/AuthContext'
import { useState } from "react";
import ArrowButton from './buttons/__ArrowButton';

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
        <div className="px-6 pt-20">
            <h1 className="text-center">
                Log ind
            </h1>

            <h5 className="text-center">
                Log ind og få en nemmere vaskeoplevelse
            </h5>

            <form onSubmit={loginUser} className='flex flex-col pt-5'>
                <label className=" pt-2 block font-bold text-sm mb-1 text-gray-900" htmlFor="email">Email</label>
                <input 
                className="w-full py-3 px-3 text-sm bg-[var(--grey-5)] border-b-2 border-gray-300 outline-none focus:border-2 focus:border-[var(--green-White-BG)]" 
                type="text" placeholder="email" value={email} onChange={e => setEmail(e.target.value)} />
                {error?.error_field === 'email' && <p className="text-red-500 text-sm">{error.error}</p>}

                <label className=" pt-2 block font-bold text-sm mb-1 text-gray-900" htmlFor="password">Password</label>
                <input
                className="w-full py-3 px-3 text-sm bg-[var(--grey-5)] border-b-2 border-gray-300 outline-none focus:border-2 focus:border-[var(--green-White-BG)]"                 
                type="text" placeholder="password" value={password} onChange={e => setPassword(e.target.value)} />
                {error?.error_field === 'password' && <p className="text-red-500 text-sm">{error.error}</p>}
                {error?.error_field === 'form' && <p className="text-red-500 text-sm">{error.error}</p>}
                <div className="flex justify-end pt-1"><p className=" font-bold text-[var(--green-White-BG)]">Glemt adgangskode?</p></div>

                
                <div className="flex justify-center py-4"><ArrowButton text="Log ind" type="submit"/></div>
            </form>


        </div>
    )


}