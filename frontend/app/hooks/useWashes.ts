import { useEffect, useState } from "react";


export function useWashes() {

  const [washes, setWashes] = useState<[]>([]);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCars = async () => {
      try {
        setError(null);

        const res = await fetch(`http://localhost/washes`, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch washes");

        const data = await res.json();
        setWashes(data);
      } catch (err: any) {
        setError(err.message);
      }
    };

    fetchCars();
  }, []);

  return { washes, error, setWashes };
}