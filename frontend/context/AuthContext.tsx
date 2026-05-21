// context/AuthContext.tsx
'use client'
import { createContext, useContext, useEffect, useState } from 'react'
import Cookies from "js-cookie";
const AuthContext = createContext(null)

export function AuthProvider({ children }) {
    const [user, setUser] = useState(null)
    const [loading, setLoading] = useState(true)  // important!
    const fetchUser = async () => {
        const response = await fetch('http://localhost/api/me', {
            method: "GET",
            credentials: "include"
        })
        if (response.ok) {
            const data = await response.json()
            setUser(data)
        } else {
            setUser(null)
        }
    }
    useEffect(() => {
        fetchUser().finally(() => setLoading(false))
    }, [])
    //TODO: Validate frontend
    const login = async (email: string, password: string) => {
        setLoading(true)
        try {
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
                // Re-fetch full user profile instead of using login response directly
                setLoading(true);
                await fetchUser()
                setLoading(false)
                return { success: true }
            } else {
                return { success: false, error: data.error, error_field: data.error_field }
            }
        } finally {
            setLoading(false)
        }
            
    }
    const signup = async (firstName: string, lastName: string, email: string, password: string) => {
        setLoading(true)
        try {
            const formData = new FormData();
            formData.append("user_first_name", firstName)
            formData.append("user_last_name", lastName)
            formData.append("user_email", email)
            formData.append("user_password", password)
            const response = await fetch('http://localhost/api/user-signup', {
                method: "POST",
                body: formData,
                credentials: "include"
            })
    
            const data = await response.json()
            if (response.ok) {
                // Re-fetch full user profile instead of using login response directly
                setLoading(true)
                await fetchUser()
                setLoading(false)
                return { success: true }
            } else {
                return { success: false, error: data.error, error_field: data.error_field }
            }
        } finally {
            setLoading(false)
        }
    }
    const logout = async () => {
        await fetch('http://localhost/api/logout', {
            method: "POST",
            credentials: "include",
            headers: {
                'X-CSRF-TOKEN': Cookies.get('csrf_access_token') ?? ""
            },
        })
        setUser(null)
        window.location.href = '/'
    }

    return (
        <AuthContext.Provider value={{ user, setUser, loading, login, logout, signup }}>
            {children}
        </AuthContext.Provider>
    )
}

export const useAuth = () => useContext(AuthContext)