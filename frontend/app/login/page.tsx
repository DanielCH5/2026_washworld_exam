// Just a template page for testing backend
'use client'
import { useState } from "react";
import Cookies from "js-cookie";

export default function showLogin() {
    // TODO: Frontend validation of input fields
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    async function loginUser(e: React.FormEvent) {
        e.preventDefault();

        const formData = new FormData();
        formData.append("user_email", email);
        formData.append("user_password", password);

        const response = await fetch("http://127.0.0.1/login", {
            method: "POST",
            body: formData,
            credentials: "include"

        })
        const data = await response.json()
        console.log(data)
    }
    function getCookie(name) {
        const value = `; ${document.cookie}`;
        const parts = value.split(`; ${name}=`);
        if (parts.length === 2) return parts.pop().split(';').shift();
    }
    async function jwtTest() {
        const response = await fetch("http://127.0.0.1/profile", {
            method: "GET",
            credentials: "include",
            headers: {
                'X-CSRF-TOKEN': Cookies.get('csrf_access_token') ?? "" // This one is actually not needed since it's a GET request and CSRF protection is only implemented on 
            },                                                         // on POST, PUT, PATCH, DELETE, but it's worth keeping for later and other uses :)
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
        </div>
    )
}