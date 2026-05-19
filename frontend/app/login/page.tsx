// Just a template page for testing backend
'use client'
import { useState } from "react";
import Cookies from "js-cookie";
import { useAuth } from "@/context/AuthContext"
export default function showLogin() {
    // TODO: Frontend validation of input fields
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const { login, logout } = useAuth()
    async function loginUser(e: React.FormEvent) {
        e.preventDefault();

        await login(email, password)

    }

    async function jwtTest() {
        const response = await fetch("http://localhost/api/me", {
            method: "GET",
            credentials: "include",
            headers: {
                'X-CSRF-TOKEN': Cookies.get('csrf_access_token') ?? "" // This one is actually not needed since it's a GET request and CSRF protection is only implemented on 
            },                                                         // on POST, PUT, PATCH, DELETE, but it's worth keeping for later and other uses :)
        })

        const result = await response.json();
        console.log(result)
    }
    async function userLogout() {
        const response = await fetch("http://localhost/logout", {
            method: "POST",
            credentials: "include",
            headers: {
                'X-CSRF-TOKEN': Cookies.get('csrf_access_token') ?? ""
            },
        })
        const result = await response.json();
        console.log(result)
    }
    return (
        <div>
            <form onSubmit={loginUser}>
                <input type="text" placeholder="email" value={email} onChange={e => setEmail(e.target.value)} />
                <input type="text" placeholder="password" value={password} onChange={e => setPassword(e.target.value)} />
                <button type="submit">Log in</button>
            </form>

            <button onClick={jwtTest}>Protected with JWT</button>
            <div>

                <button onClick={logout}>Logout</button>
            </div>
        </div>
    )
}