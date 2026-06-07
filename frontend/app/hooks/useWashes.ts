import { useEffect, useState } from "react";


export function useWashes() {

  const [washes, setWashes] = useState<[]>([]);
  const [washesLoading, setWashesLoading] = useState(false);
  const [washesError, setWashesError] = useState<string | null>(null);

  useEffect(() => {
    const fetchCars = async () => {
      try {
        setWashesLoading(true);
        setWashesError(null);

        const res = await fetch(`http://localhost/washes`, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch washes");

        const data = await res.json();
        setWashes(data);
      } catch (err: any) {
        setWashesError(err.message);
      } finally {
        setWashesLoading(false);
      }
    };

    fetchCars();
  }, []);

  return { washes, washesError, washesLoading, setWashes };
}