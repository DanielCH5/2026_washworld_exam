import { useEffect, useState } from "react";
import { Car } from "@/types/car";


export function useCars() {

  const [cars, setCars] = useState<Car[]>([]);
  const [carsLoading, setCarsLoading] = useState(false);
  const [carsError, setCarsError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCars = async () => {
      try {
        setCarsLoading(true);
        setCarsError(null);

        const res = await fetch(`http://localhost/cars`, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch car");

        const data = await res.json();
        setCars(data);
      } catch (err: any) {
        setCarsError(err.message);
      } finally {
        setCarsLoading(false);
      }
    };

    fetchCars();
  }, []);

  return { cars, carsError, carsLoading, setCars };
}