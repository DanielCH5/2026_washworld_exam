import { useEffect, useState } from "react";
import { Car } from "@/types/car";

export function useCar(carPk: string | null) {
  const [car, setCar] = useState<Car>();
  const [carLoading, setCarLoading] = useState(false);
  const [carError, setCarError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCar = async () => {
      try {
        setCarLoading(true);
        setCarError(null);

        const res = await fetch(`http://localhost/car/${carPk}`, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch car");

        const data = await res.json();
        setCar(data);
      } catch (err: any) {
        setCarError(err.message);
      } finally {
        setCarLoading(false);
      }
    };

    fetchCar();
  }, [carPk]);

  return { car, carError, carLoading };
}