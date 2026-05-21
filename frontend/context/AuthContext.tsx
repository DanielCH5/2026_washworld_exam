// context/AuthContext.tsx
'use client'
import { createContext, useContext, useEffect, useState } from 'react'
import Cookies from "js-cookie";
const AuthContext = createContext(null)

export function AuthProvider({ children }) {
    const [user, setUser] = useState(null)
    const [loading, setLoading] = useState(true)  // important!
    useEffect(() => {
        // Re-validate token with backend on mount
        fetch('http://localhost/api/me', {
            headers: {
                'X-CSRF-TOKEN': Cookies.get('csrf_access_token') ?? ""
            },
            credentials: "include"
        })
            .then(r => r.ok ? r.json() : null)
            .then(data => {
                console.log(data)
                setUser(data)
            })
            .finally(() => setLoading(false))
    }, [])
    //TODO: Validate frontend
    const login = async (email: string, password: string) => {
        const formData = new FormData();
        formData.append("user_email", email)
        formData.append("user_password", password)

        const response = await fetch("http://localhost/login", {
            method: "POST",
            body: formData,
            credentials: "include"
        })

        const data = await response.json()
        if (response.ok) {
            setUser(data)
            return { success: true }
        } else {
            return { success: false, error: data.error, error_field: data.error_field }
        }
    }
    const logout = async () => {
        const response = await fetch('http://localhost/api/logout', {
            method: "POST",
            credentials: "include",
            headers: {
                'X-CSRF-TOKEN': Cookies.get('csrf_access_token') ?? ""
            },
        })
        const data = await response.json()
        setUser(null)
        window.location.href = '/'
    }

    return (
        <AuthContext.Provider value={{ user, setUser, loading, login, logout }}>
            {children}
        </AuthContext.Provider>
    )
}

export const useAuth = () => useContext(AuthContext)