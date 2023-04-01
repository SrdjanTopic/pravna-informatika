import { Route, Routes } from "react-router-dom";
import "./App.css";
import { lazy, useState } from "react";
import Judgments from "./pages/Judgments/Judgments";
const Laws = lazy(() => import("./pages/Laws/Laws"));
const Home = lazy(() => import("./pages/Home/Home"));
import arrowTopSvg from "./assets/svgs/arrow_top.svg";

function App() {
  const [expandList, setExpandList] = useState("");

  return (
    <div className="app">
      <div className="sideBar">
        <div className="imgDiv">
          <img src="/../src/assets/icons/gavel.png" />
        </div>
        <div className="headings">
          <h3
            onClick={() => {
              expandList === "zakoni"
                ? setExpandList("")
                : setExpandList("zakoni");
            }}
          >
            Zakoni
          </h3>
          <img
            src={arrowTopSvg}
            className={`arrowTop ${
              expandList === "zakoni" ? "rotateArrowTop" : ""
            }`}
            onClick={() => {
              expandList === "zakoni"
                ? setExpandList("")
                : setExpandList("zakoni");
            }}
          />
        </div>
        <div
          className={`sidebarLists ${
            expandList === "zakoni" ? "zakoniExpanded" : "zakoniCollapsed"
          }`}
        >
          <a href="/akn/me/act/2012-06-28_33-2012" className="link">
            Zakon o bezbjednost saobraćaja na putevima
          </a>
          <a href="/akn/me/act/2003-12-25_70-2003" className="link">
            Krivični Zakonik
          </a>
        </div>

        <div className="line"></div>
        <div className="headings">
          <h3
            onClick={() => {
              expandList === "presude"
                ? setExpandList("")
                : setExpandList("presude");
            }}
          >
            Presude
          </h3>
          <img
            src={arrowTopSvg}
            className={`arrowTop ${
              expandList === "presude" ? "rotateArrowTop" : ""
            }`}
            onClick={() => {
              expandList === "presude"
                ? setExpandList("")
                : setExpandList("presude");
            }}
          />
        </div>
        <div
          className={`sidebarLists ${
            expandList === "presude" ? "presudeExpanded" : "presudeCollapsed"
          }`}
        >
          <a href="/akn/me/judgment/os-ba_2019-02-06_k-4-19" className="link">
            os-ba_2019-02-06_k-4-19
          </a>
          <a href="/akn/me/judgment/os-bp_2011-09-16_k-355-11" className="link">
            os-bp_2011-09-16_k-355-11
          </a>
          <a href="/akn/me/judgment/os-br_2018-06-11_k-89-18" className="link">
            os-br_2018-06-11_k-89-18
          </a>
          <a href="/akn/me/judgment/os-br_2020-07-29_k-177-20" className="link">
            os-br_2020-07-29_k-177-20
          </a>
          <a href="/akn/me/judgment/os-hn_2017-05-19_k-43-17" className="link">
            os-hn_2017-05-19_k-43-17
          </a>
          <a href="/akn/me/judgment/os-nk_2014-10-28_k-405-14" className="link">
            os-nk_2014-10-28_k-405-14
          </a>
          <a href="/akn/me/judgment/os-pg_2015-02-10_k-17-15" className="link">
            os-pg_2015-02-10_k-17-15
          </a>
          <a href="/akn/me/judgment/os-pg_2015-03-17_k-78-15" className="link">
            os-pg_2015-03-17_k-78-15
          </a>
          <a href="/akn/me/judgment/os-pg_2016-06-03_k-61-16" className="link">
            os-pg_2016-06-03_k-61-16
          </a>
          <a href="/akn/me/judgment/os-pg_2017-09-06_k-444-17" className="link">
            os-pg_2017-09-06_k-444-17
          </a>
          <a href="/akn/me/judgment/os-pg_2018-01-18_k-732-17" className="link">
            os-pg_2018-01-18_k-732-17
          </a>
          <a href="/akn/me/judgment/os-pg_2019-03-18_k-87-19" className="link">
            os-pg_2019-03-18_k-87-19
          </a>
          <a href="/akn/me/judgment/os-pg_2022-03-16_k-722-19" className="link">
            os-pg_2022-03-16_k-722-19
          </a>
          <a href="/akn/me/judgment/os-pv_2014-12-09_k-127-14" className="link">
            os-pv_2014-12-09_k-127-14
          </a>
          <a href="/akn/me/judgment/os-zb_2021-10-04_k-14-21" className="link">
            os-zb_2021-10-04_k-14-21
          </a>
        </div>

        <div className="line"></div>
        <h3>Novi slucaj</h3>
      </div>
      <div className="main">
        <Routes>
          <Route path="" element={<Home />}></Route>
          <Route path="/akn/me/">
            <Route path="act/:lawName" element={<Laws />}></Route>
            <Route
              path="judgment/:judgmentName"
              element={<Judgments />}
            ></Route>
          </Route>
        </Routes>
      </div>
    </div>
  );
}

export default App;
