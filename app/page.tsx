import Hero from "@/components/hero";
import Main from "@/components/main";
import HomeSkeleton from "@/components/skeletons/home-skeleton";
import { Suspense } from "react";

export default function Home() {
  return (
    <div>
      <Hero />
      <div className="mt-16">
        <div className="text-center">
          <h1 className="text-4xl font-bold uppercase">Room & Rates</h1>
          <p className="py-3">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
            Laboriosam, at.
          </p>
        </div>
        <Suspense fallback={<HomeSkeleton />}>
          <Main />
        </Suspense>
      </div>
    </div>
  );
}
