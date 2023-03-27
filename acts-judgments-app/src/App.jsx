import { Route, Routes } from "react-router-dom";
import "./App.css";
import { lazy, Suspense } from "react";
const Laws = lazy(() => import("./pages/Laws/Laws"));
const Home = lazy(() => import("./pages/Home/Home"));

function App() {
  return (
    <div>
      <Suspense fallback={<h1>Loading...</h1>}>
        <Routes>
          <Route path="" element={<Home />}></Route>
          <Route path="/akn/me/">
            <Route path="act/:lawname" element={<Laws />}></Route>
          </Route>
        </Routes>
      </Suspense>
    </div>
  );
}

export default App;
