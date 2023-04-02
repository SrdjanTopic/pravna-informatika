import { Route, Routes } from "react-router-dom";
import "./App.css";
import { lazy, useEffect, useState } from "react";
import Judgments from "./pages/Judgments/Judgments";
const Laws = lazy(() => import("./pages/Laws/Laws"));
const Home = lazy(() => import("./pages/Home/Home"));
import arrowTopSvg from "./assets/svgs/arrow_top.svg";
import NewCase from "./pages/NewCase/NewCase";
import axios from "axios";

function App() {
  const [expandList, setExpandList] = useState("");
  const [judgmentNames, setJudgmentNames] = useState([]);
  useEffect(() => {
    axios
      .get("http://localhost:8080/cbr/judgments")
      .then((res) =>
        setJudgmentNames(res.data.map((name) => name.replace(".xml", "")))
      )
      .catch((err) => console.log(err));
  }, []);
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
          {judgmentNames.length > 0 &&
            judgmentNames.map((name, id) => (
              <a href={`/akn/me/judgment/${name}`} className="link" key={id}>
                {name}
              </a>
            ))}
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
