'use client'
import { useAuth } from '@/context/AuthContext'
import { useState } from "react";
import ArrowButton from './buttons/__ArrowButton';
import TextInput from './InputForms';

export default function SignupForm() {
    const { signup } = useAuth();
    const [firstName, setFirstName] = useState('')
    const [lastName, setLastName] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [error, setError] = useState<{ error: string; error_field: string } | null>(null)
    // Removed loading from this, gives an ugly loading flash
    async function signupUser(e: React.SubmitEvent) {
        e.preventDefault();

        const result = await signup(firstName, lastName, email, password)
        if (!result.ok) {
            setError({ error: result.error, error_field: result.error_field })
        }
    }

    return (
        <div className="px-6 pt-20">
            <h1 className="text-center">
                Opret bruger
            </h1>

            <h5 className="text-center">
                Opret en bruger og kom hurtigt i gang
            </h5>

            <form onSubmit={signupUser} className='flex flex-col pt-5'>
                <TextInput
                    type="text"
                    label="Fornavn"
                    placeholder="Dit fornavn"
                    value={firstName}
                    onChange={setFirstName}
                    state={error?.error_field === 'user_first_name' ? 'error' : 'normal'}
                    errorMessage={error?.error_field === 'user_first_name' ? error.error : undefined}
                />

                <TextInput
                    type="text"
                    label="Efternavn"
                    placeholder="Dit efternavn"
                    value={lastName}
                    onChange={setLastName}
                    state={error?.error_field === 'user_last_name' ? 'error' : 'normal'}
                    errorMessage={error?.error_field === 'user_last_name' ? error.error : undefined}
                />

                <TextInput
                    type="email"
                    label="E-mail"
                    placeholder="Din email"
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



                <div className="flex justify-center py-4"><ArrowButton text="Sign up" type="submit" /> </div>
            </form>


        </div>
    )


}