"use client";

import { useMemo, useState } from "react";

type MarkerType = {
  lat: number;
  lng: number;
  label: string;
  adress: string;
  opening: string;
  washHalls: number;
  emptyWashHalls: number;
  selfWash: boolean;
  statusMessage: string;
};

type Props = {
  markers: MarkerType[];
  onSelect: (marker: MarkerType) => void;
};

export default function SearchBar({
  markers,
  onSelect,
}: Props) {
  const [query, setQuery] = useState("");
  const [open, setOpen] = useState(false);

  const filteredMarkers = useMemo(() => {
    if (!query) return [];

    return markers.filter((marker) =>
      marker.label.toLowerCase().includes(query.toLowerCase())
    );
  }, [query, markers]);

  return (
    <div className="relative w-full max-w-md">
      <input
        type="text"
        placeholder="Søg efter vaskehal..."
        value={query}
        onChange={(e) => {
          setQuery(e.target.value);
          setOpen(true);
        }}
        className="w-full rounded-lg border px-4 py-2"
      />

      {open && filteredMarkers.length > 0 && (
        <div className="absolute z-[1000] mt-2 w-full rounded-lg border bg-white shadow-lg"> {/* bg-white to make abckground white*/ }
          {filteredMarkers.map((marker) => (
            <button
              key={`${marker.lat}-${marker.lng}`}
              onClick={() => {
                onSelect(marker);

                setQuery(marker.label);
                setOpen(false);
              }}
              className="block w-full border-b px-4 py-3 text-left hover:bg-gray-100"
            >
              <div className="font-medium">
                {marker.label}
              </div>

              <div className="text-sm text-gray-500">
                {marker.adress}
              </div>
            </button>
          ))}
        </div>
      )}
    </div>
  );
}