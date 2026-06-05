import { useState } from "react";
import { Car } from "@/types/car";
import Cookies from "js-cookie";

type CreateSubscriptionData = {
  wash_pk: string;
  car_pk: string;
  location_pk: string;
  all_locations: string;
  marketing_accepted: string;
};



export function useCreateSubscription() {
  const createSubscription = async (subscriptionData: CreateSubscriptionData) => {

    const formData = new FormData();
    formData.append("wash_pk", subscriptionData.wash_pk);
    formData.append("car_pk", subscriptionData.car_pk);
    formData.append("location_pk", subscriptionData.location_pk);
    formData.append("all_locations", subscriptionData.all_locations);
    formData.append("marketing_accepted", subscriptionData.marketing_accepted);
    

    const res = await fetch("http://localhost/subscription", {
      method: "POST",
      credentials: "include",
      headers: {
        "X-CSRF-TOKEN": Cookies.get("csrf_access_token") ?? "",
      },
      body: formData,
    });

    if (!res.ok) {
      const text = await res.text();
      throw new Error(text);
    }

    return await res.json();
  };

  return { createSubscription };
}