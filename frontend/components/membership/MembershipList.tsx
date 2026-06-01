"use client"
// this component handles fetching of the membership sata from the backend. and 
import { useState, useEffect } from "react";
import MembershipCard from "@/components/membership/MembershipCard";

type WashProgram = {
  addon_pk: number;
  addon_name: string;
};

type Membership = {
  membership_pk: number;
  membership_name: string;
  wash_programs: WashProgram[];
};

export default function MembershipList() {
  const [memberships, setMemberships] = useState<Membership[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  useEffect(() => {
    fetch("http://localhost/memberships")
      .then((res) => res.json())
      .then((data) => {
        setMemberships(data);
        setLoading(false);
      })
      .catch(() => {
        setError("Kunne ikke hente medlemskaber");
        setLoading(false);
      });
  }, []);

  if (loading) return <p>Indlæser...</p>;
  if (error) return <p>{error}</p>;

  return (
    <>
      {memberships.map((membership) => (
        <MembershipCard key={membership.membership_pk} membership={membership} />
      ))}
    </>
  );
}