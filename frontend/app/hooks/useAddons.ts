import { useEffect, useState } from "react";

export function useAddons(washPk?: number | null) {
  const [addons, setAddons] = useState<any[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchAddons = async () => {
      try {
        setLoading(true);
        setError(null);

        const url =
          washPk != null
            ? `http://localhost/addons/${washPk}`
            : `http://localhost/addons`;

        const res = await fetch(url, {
          credentials: "include",
        });

        if (!res.ok) throw new Error("Failed to fetch addons");

        const data = await res.json();
        setAddons(data);
      } catch (err: any) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchAddons();
  }, [washPk]);

  return { addons, loading, error };
}