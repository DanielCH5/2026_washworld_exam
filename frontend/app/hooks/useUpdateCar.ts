"use client";
import { useState } from "react";
import Cookies from "js-cookie";


export function useUpdateCar() {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const updateCar = async (data: {
    car_pk: string;
    car_nickname: string;
  }) => {
    setLoading(true);
    setError(null);

    try {
      const formData = new FormData();
      formData.append("car_pk", data.car_pk);
      formData.append("car_nickname", data.car_nickname);

      const res = await fetch(`http://localhost/car/${data.car_pk}`, {
        method: "PATCH",
        credentials: "include",
      headers: {
        "X-CSRF-TOKEN": Cookies.get("csrf_access_token") ?? "",
      },
      body: formData,
      });

      if (!res.ok) {
        throw new Error("Failed to update car");
      }

      return await res.json();
    } catch (err: any) {
      setError(err.message);
      throw err;
    } finally {
      setLoading(false);
    }
  };

  return { updateCar, loading, error };
}