import { useEffect, useState } from "react";

export function useAddons(washPk?: number | null) {
  const [addons, setAddons] = useState<any[]>([]);
  const [addonsLoading, setAddonsLoading] = useState(false);
  const [addonsError, setAddonsError] = useState<string | null>(null);

  useEffect(() => {
    const fetchAddons = async () => {
      try {
        setAddonsLoading(true);
        setAddonsError(null);

      const url =
      `http://localhost/addons/${washPk}`
        const res = await fetch(url, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch addons");
        
        const data = await res.json();
        setAddons(data);

      } catch (err: any) {
        setAddonsError(err.message);
      } finally {
        setAddonsLoading(false);
      }
    };

    fetchAddons();
  }, [washPk]);

  return { addons, addonsLoading, addonsError };
}