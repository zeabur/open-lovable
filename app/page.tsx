import { Suspense } from "react";
import AISandboxPage from "./home";

export default function Page() {

  return (
    <Suspense fallback={<div></div>}>
      <AISandboxPage />
    </Suspense>
  )
}