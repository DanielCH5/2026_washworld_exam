import { useEffect, useState } from "react";
import Cookies from "js-cookie";

export function useDeleteCar() {
  const [loading, setLoading] = useState(false);

  const deleteCar = async (carPk: string) => {
    setLoading(true);

    try {
      const res = await fetch(`http://localhost/car/${carPk}`, {
        method: "DELETE",
        credentials: "include",
        headers: {
                'X-CSRF-TOKEN': Cookies.get('csrf_access_token') ?? ""
            },
      });

      if (!res.ok) {
        const text = await res.text(); // 👈 THIS is the important part
      console.error("Delete failed response:", text);
        throw new Error("Failed to delete car");
      }
    } finally {
      setLoading(false);
    }
  };

  return { deleteCar, loading };
}