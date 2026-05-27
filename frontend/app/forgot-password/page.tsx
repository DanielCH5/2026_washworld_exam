"use client"
import { useAuth } from '@/context/AuthContext'
import { useState } from "react";
import ArrowButton from '@/components/buttons/__ArrowButton';
import TextInput from '@/components/InputForms'
import Link from 'next/link'
export default function ForgotPasswordForm() {

    const { forgotPassword } = useAuth();
    const [submitted, setSubmitted] = useState(false)
    const [email, setEmail] = useState('')
    const [error, setError] = useState<{ error: string; error_field: string } | null>(null)

    // Removed loading from this, gives an ugly loading flash
    async function sendForgotPassword(e: React.SubmitEvent) {
        e.preventDefault();
        setError(null)
        const result = await forgotPassword(email)
        if (!result.ok) {
            console.log(result)
            setError({ error: result.error, error_field: result.error_field })
        } else {
            setSubmitted(true)
        }
    }

    return (
        <div className="px-6 pt-20">

            {submitted ? (
                <>
                    <h1 className="text-center">Tjek din email</h1>
                    <h5 className="text-center">Vi har sendt et link til nulstilling af din adgangskode.</h5>
                    <div className="flex justify-center py-4">
                        <Link href="/"><ArrowButton text="Gå til Log Ind" /></Link>
                    </div>
                </>
            ) : (
                <>
                    <h1 className="text-center">Glemt adgangskode?</h1>
                    <h5 className="text-center">Indtast din e-mail, så sender vi et link til at nulstille din adgangskode.</h5>

                    <form onSubmit={sendForgotPassword} className='flex flex-col pt-5'>

                        <TextInput
                            type="email"
                            label="Email"
                            placeholder="Din e-mail"
                            value={email}
                            onChange={setEmail}
                            state={error?.error_field === 'email' ? 'error' :
                                'normal'}
                            errorMessage={error?.error_field === 'email' ? error.error : undefined}
                        />


                        {/* Form-level error (Usually related to server errors etc.) */}
                        {error?.error_field === 'form' && (
                            <p className="text-red-500 text-sm -mt-3">{error.error}</p>
                        )}


                        <div className="flex justify-center py-4">
                            <ArrowButton text="Send link" />
                        </div>

                    </form>


                </>
            )}
        </div>
    )


}