"use client"
import { useEffect, useRef, useState } from "react";

export default function WashTimer({ totalSeconds }: { totalSeconds: number }) {
  const [progress, setProgress] = useState(0);
  const [remaining, setRemaining] = useState(totalSeconds);
  const startTime = useRef<number | null>(null);
  const rafRef = useRef<number>(0);

  useEffect(() => {
    const animate = (timestamp: number) => {
      if (!startTime.current) startTime.current = timestamp;
      const elapsed = (timestamp - startTime.current) / 1000;
      const p = Math.min(elapsed / totalSeconds, 1);
      setProgress(p);
      setRemaining(Math.max(Math.ceil(totalSeconds - elapsed), 0));
      if (p < 1) rafRef.current = requestAnimationFrame(animate);
    };
    rafRef.current = requestAnimationFrame(animate);
    return () => cancelAnimationFrame(rafRef.current);
  }, [totalSeconds]);

  const circumference = 2 * Math.PI * 95;
  const offset = circumference * (1 - progress);
  const angle = progress * 2 * Math.PI - Math.PI / 2;
  const dotX = 110 + 95 * Math.cos(angle);
  const dotY = 110 + 95 * Math.sin(angle);

  const m = String(Math.floor(remaining / 60)).padStart(2, "0");
  const s = String(remaining % 60).padStart(2, "0");

  return (
    <div className="relative w-[220px] h-[220px] mx-auto mb-6">
      <svg className="absolute top-0 left-0 -rotate-90" width="220" height="220" viewBox="0 0 220 220">
        <circle cx="110" cy="110" r="95" fill="none" stroke="#e5e5e5" strokeWidth="10"/>
        <circle cx="110" cy="110" r="95" fill="none"
          stroke="var(--green-White-BG)" strokeWidth="10" strokeLinecap="round"
          strokeDasharray={circumference}
          strokeDashoffset={offset}
        />
      </svg>

      <div
        className="absolute w-7 h-7 rounded-full bg-[var(--green-White-BG)] text-white text-xs font-bold flex items-center justify-center"
        style={{ left: dotX - 14, top: dotY - 14 }}
      >
        w
      </div>

      <div className="absolute inset-0 flex flex-col items-center justify-center">
        <span className="text-4xl font-bold text-[var(--green-White-BG)] leading-none">{m}:{s}</span>
        <span className="text-sm text-gray-400 mt-1">Din vask er i gang</span>
      </div>
    </div>
  );
}