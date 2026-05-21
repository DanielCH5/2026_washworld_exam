'use client'
import { useAuth } from '@/context/AuthContext'
import { useState } from "react";

export default function SignupForm() {
    const { signup, loading } = useAuth();
    const [firstName, setFirstName] = useState('')
    const [lastName, setLastName] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [error, setError] = useState<{ error: string; error_field: string } | null>(null)
    if (loading) return <div className="animate-spin rounded-full h-6 w-6 border-4 border-gray-200 border-t-blue-500" />
    async function signupUser(e: React.SubmitEvent) {
        e.preventDefault();

        const result = await signup(firstName, lastName, email, password)
        if (!result.ok) {
            console.log(result)
            setError({ error: result.error, error_field: result.error_field })
        }
    }

    return (
        <div>
            <h1>
                Opret bruger
            </h1>

            <h2>
                Opret en bruger og kom hurtigt i gang
            </h2>

            <form onSubmit={signupUser} className='flex flex-col'>
                <label htmlFor="firstName">Fornavn</label>
                <input type="text" placeholder="Fornavn" value={firstName} onChange={e => setFirstName(e.target.value)} />
                {error?.error_field === 'user_first_name' && <p className="text-red-500 text-sm">{error.error}</p>}

                <label htmlFor="lastName">Efternavn</label>
                <input type="text" placeholder="Efternavn" value={lastName} onChange={e => setLastName(e.target.value)} />
                {error?.error_field === 'user_last_name' && <p className="text-red-500 text-sm">{error.error}</p>}

                <label htmlFor="email">Email</label>
                <input type="text" placeholder="email" value={email} onChange={e => setEmail(e.target.value)} />
                {error?.error_field === 'email' && <p className="text-red-500 text-sm">{error.error}</p>}

                <label htmlFor="password">Password</label>
                <input type="text" placeholder="password" value={password} onChange={e => setPassword(e.target.value)} />
                {error?.error_field === 'password' && <p className="text-red-500 text-sm">{error.error}</p>}
                {error?.error_field === 'form' && <p className="text-red-500 text-sm">{error.error}</p>}


                <button type="submit">Sign up</button>
            </form>


        </div>
    )


}