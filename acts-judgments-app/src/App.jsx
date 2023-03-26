import { Route, Routes } from "react-router-dom";
import "./App.css";
import Home from "./pages/Home/Home";
import Laws from "./pages/Laws/Laws";

function App() {
  return (
    <div>
      <Routes>
        <Route path="" element={<Home />}></Route>
        <Route path="laws">
          <Route path=":lawname" element={<Laws />}></Route>
        </Route>
      </Routes>
    </div>
  );
}

export default App;
