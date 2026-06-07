"use client"
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useAuth } from '@/context/AuthContext'
import Image from "next/image";

export default function NavigationBar() {
  const pathname = usePathname();
  const { user, loading } = useAuth()
  if (loading) return <div className="animate-spin rounded-full h-6 w-6 border-4 border-gray-200 border-t-blue-500" />
  if (!user) return null;

  const navItems = [
    { label: "Biler", href: "/cars", icon: "images/carsbutton.svg" },
    { label: "Medlem", href: "/membership", icon: "images/membershipbutton.svg" },
    { label: "", href: "/", icon: "images/homebutton.svg", featured: true },
    { label: "Hjælp", href: "/help", icon: "images/helpbutton.svg" },
    { label: user.name, href: "/profile", icon: "images/profilbutton.svg"},
  ];

  return (
    <nav className="fixed bottom-0 left-1/2 -translate-x-1/2 w-full max-w-[430px] bg-[var(--solid-Black)] px-4  z-50">
      <div className="flex justify-around items-center py-2">
        {navItems.map((item) => (
          <Link
          key={item.href}
          href={item.href}
          className={`flex flex-col items-center gap-1 no-underline
            ${pathname === item.href ? "opacity-100" : "opacity-70"}
           ${item.featured ? "-translate-y-3" : ""}
          `}
          >
         <Image
            src={item.icon}
           alt={item.label}
           width={item.featured ? 85 : 30}
           height={item.featured ? 85 : 30}
          />
         {!item.featured && (
           <span className="text-[var(--solid-White)]">
             <p>{item.label}</p>
           </span>
         )}
        </Link>
        ))}
      </div>
    </nav>
  );
}