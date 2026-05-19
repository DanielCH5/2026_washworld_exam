"use client"
import Link from "next/link";
import { usePathname } from "next/navigation";

export default function NavigationBar() {
  const pathname = usePathname();

  const navItems = [
    { label: "Cars",       href: "/cars"       },
    { label: "Membership", href: "/membership" },
    { label: "Map",        href: "/"           },
    { label: "Help",       href: "/help"       },
    { label: "Profile",    href: "/profile"    },
  ];

  return (
    <nav className="fixed bottom-0 left-1/2 -translate-x-1/2 w-full max-w-[430px] bg-[var(--solid-Black)] px-4 py-2 z-50">
      <div className="flex justify-around items-center">
        {navItems.map((item) => (
          <Link
            key={item.href}
            href={item.href}
            className={`flex flex-col items-center gap-1 no-underline
              ${pathname === item.href ? "opacity-100" : "opacity-70"}
            `}
          >
            <div className="w-8 h-8 bg-[var(--solid-White)] rounded-full" />
            <span className="text-[var(--solid-White)]">  
              <p>{item.label}</p>
            </span>
          </Link>
        ))}
      </div>
    </nav>
  );
}