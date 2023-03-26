import axios from "axios";
import { useEffect, useState } from "react";
import XMLParser from "react-xml-parser";
import { useParams } from "react-router-dom";
import LawComponent from "../../components/LawComponent/LawComponent";

const Laws = () => {
  let { lawname } = useParams();
  const [law, setLaw] = useState();
  useEffect(() => {
    if (lawname == "zobs")
      import("../../assets/xmldata/AkomaNtoso-ZOBS.xml")
        .then((lawlink) =>
          axios
            .get(lawlink.default, {
              "Content-Type": "application/xml; charset=utf-8",
            })
            .then((res) => {
              const jsonDataFromXml = new XMLParser().parseFromString(res.data);
              setLaw({
                meta: jsonDataFromXml.children[0].children[0],
                preface: jsonDataFromXml.children[0].children[1],
                body: jsonDataFromXml.children[0].children[2],
              });
            })
            .catch((err) => console.log(err))
        )
        .catch((err) => console.log(err));
    else if (lawname == "kz")
      import("../../assets/xmldata/AkomaNtoso-KZ.xml")
        .then((lawlink) =>
          axios
            .get(lawlink.default, {
              "Content-Type": "application/xml; charset=utf-8",
            })
            .then((res) => {
              const jsonDataFromXml = new XMLParser().parseFromString(res.data);
              setLaw({
                meta: jsonDataFromXml.children[0].children[0],
                preface: jsonDataFromXml.children[0].children[1],
                body: jsonDataFromXml.children[0].children[2],
              });
            })
            .catch((err) => console.log(err))
        )
        .catch((err) => console.log(err));
  }, []);
  return <>{law ? <LawComponent law={law} /> : <h2>loading Law...</h2>}</>;
};
export default Laws;
