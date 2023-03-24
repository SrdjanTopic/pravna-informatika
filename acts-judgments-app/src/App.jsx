import { useEffect, useState } from "react";
import "./App.css";
import axios from "axios";
import xml from "./assets/xmldata/AkomaNtoso-KZ.xml";
import XMLParser from "react-xml-parser";

function App() {
  useEffect(() => {
    axios
      .get(xml, {
        "Content-Type": "application/xml; charset=utf-8",
      })
      .then((res) => {
        const jsonDataFromXml = new XMLParser().parseFromString(res.data);
        console.log(jsonDataFromXml);
      })
      .catch((err) => console.log(err));
  }, []);

  return <div className="App"></div>;
}

export default App;
