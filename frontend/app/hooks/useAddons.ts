import { useEffect, useState } from "react";

export function useAddons(washPk?: number | null) {
  const [addons, setAddons] = useState<any[]>([]);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchAddons = async () => {
      try {
        setError(null);

      const url =
      `http://localhost/addons/${washPk}`
        const res = await fetch(url, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch addons");
        
        const data = await res.json();
        setAddons(data);

      } catch (err: any) {
        setError(err.message);
      } 
    };

    fetchAddons();
  }, [washPk]);

  return { addons, error };
}