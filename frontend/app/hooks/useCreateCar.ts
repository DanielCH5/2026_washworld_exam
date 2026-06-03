import { useState } from "react";
import { Car } from "@/types/car";
import Cookies from "js-cookie";

type CreateCarData = {
  car_pk: string;
  car_nickname: string;
  model_pk: string;
};



export function useCreateCar() {
  const createCar = async (carData: CreateCarData) => {

    const formData = new FormData();
    formData.append("car_pk", carData.car_pk);
    formData.append("car_nickname", carData.car_nickname);
    formData.append("model_pk", carData.model_pk);

    const res = await fetch("http://localhost/car", {
      method: "POST",
      credentials: "include",
      headers: {
        "X-CSRF-TOKEN": Cookies.get("csrf_access_token") ?? "",
      },
      body: formData,
    });

    if (!res.ok) {
      const text = await res.text();
      throw new Error(text);
    }

    return await res.json();
  };

  return { createCar };
}