import { useEffect, useState } from "react";
import { Car } from "@/types/car";


export function useCars() {

  const [cars, setCars] = useState<Car[]>([]);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCars = async () => {
      try {
        setError(null);

        const res = await fetch(`http://localhost/cars`, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch car");

        const data = await res.json();
        setCars(data);
      } catch (err: any) {
        setError(err.message);
      }
    };

    fetchCars();
  }, []);

  return { cars, error };
}