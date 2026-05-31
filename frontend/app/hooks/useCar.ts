import { useEffect, useState } from "react";

export function useCar(carPk: string | null) {
  const [car, setCar] = useState<any>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCar = async () => {
      try {
        setError(null);

        const res = await fetch(`http://localhost/car/${carPk}`, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch car");

        const data = await res.json();
        setCar(data);
      } catch (err: any) {
        setError(err.message);
      }
    };

    fetchCar();
  }, [carPk]);

  return { car, error };
}