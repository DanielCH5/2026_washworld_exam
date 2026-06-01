"use client"

import { useState } from "react"
import { useAuth } from "@/context/AuthContext";
import TextInput from "./InputForms";
import ArrowButton from "./buttons/__ArrowButton";
export default function ResetPasswordForm({ resetKey }) {
    const { resetPassword } = useAuth()
    const [password, setPassword] = useState('')
    const [confirmPassword, setConfirmPassword] = useState('')
    const [error, setError] = useState<{ error: string; error_field: string } | null>(null)
    const [submitted, setSubmitted] = useState(false)

    async function handleSubmit(e: React.SubmitEvent) {
        e.preventDefault()
        console.log(resetKey)
        const result = await resetPassword(password, confirmPassword, resetKey)
        if (!result.ok) {
            console.log(result)
            setError({ error: result.error, error_field: result.error_field })
        } else {
            setSubmitted(true)
        }

    }
    return (
        <>
            {submitted ? (

                <p>
                    Password reset, you can close this window now
                </p>

            ) : (
                <>
                    <form onSubmit={handleSubmit}>
                        <TextInput
                            type="password"
                            label="Adgangskode"
                            placeholder="Din adgangskode"
                            value={password}
                            onChange={setPassword}
                            state={error?.error_field === 'password' ? 'error' : 'normal'}
                            errorMessage={error?.error_field === 'password' ? error.error : undefined}
                        />
                        <TextInput
                            type="password"
                            label="Bekræft adgangskode"
                            placeholder="Bekræft adgangskode"
                            value={confirmPassword}
                            onChange={setConfirmPassword}
                            state={error?.error_field === 'password' ? 'error' : 'normal'}
                            errorMessage={error?.error_field === 'password' ? error.error : undefined}
                        />

                        {/* Form-level error (wrong credentials etc.) */}
                        {error?.error_field === 'form' && (
                            <p className="text-red-500 text-sm -mt-3">{error.error}</p>
                        )}



                        <div className="flex justify-center py-4">
                            <ArrowButton text="Log ind" type="submit" />
                        </div>
                    </form>
                </>
            )}

        </>
    )

}
