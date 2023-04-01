import { Route, Routes } from "react-router-dom";
import "./App.css";
import { lazy, useState } from "react";
import Judgments from "./pages/Judgments/Judgments";
const Laws = lazy(() => import("./pages/Laws/Laws"));
const Home = lazy(() => import("./pages/Home/Home"));
import arrowTopSvg from "./assets/svgs/arrow_top.svg";
import NewCase from "./pages/NewCase/NewCase";

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
        <a className="noviSlucajHeading" href="/case/new">
          Novi slucaj
          <svg
            style={{ marginRight: "2.5px" }}
            fill="#5cb4dd"
            width="20px"
            height="20px"
            viewBox="0 0 349.03 349.031"
          >
            <g>
              <path
                d="M349.03,141.226v66.579c0,5.012-4.061,9.079-9.079,9.079H216.884v123.067c0,5.019-4.067,9.079-9.079,9.079h-66.579
		c-5.009,0-9.079-4.061-9.079-9.079V216.884H9.079c-5.016,0-9.079-4.067-9.079-9.079v-66.579c0-5.013,4.063-9.079,9.079-9.079
		h123.068V9.079c0-5.018,4.069-9.079,9.079-9.079h66.579c5.012,0,9.079,4.061,9.079,9.079v123.068h123.067
		C344.97,132.147,349.03,136.213,349.03,141.226z"
              />
            </g>
          </svg>
        </a>
      </div>
      <div className="main">
        <Routes>
          <Route path="" element={<Home />} />
          <Route path="/akn/me/">
            <Route path="act/:lawName" element={<Laws />} />
            <Route path="judgment/:judgmentName" element={<Judgments />} />
          </Route>
          <Route path="/case/new" element={<NewCase />} />
        </Routes>
      </div>
    </div>
  );
}

export default App;
