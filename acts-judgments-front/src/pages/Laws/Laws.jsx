import axios from "axios";
import { useEffect, useState } from "react";
import XMLParser from "react-xml-parser";
import { useParams } from "react-router-dom";
import LawComponent from "../../components/LawComponent/LawComponent";
import { getLawString } from "../../utils/functions";

const Laws = () => {
  let { lawName } = useParams();
  const [law, setLaw] = useState();
  useEffect(() => {
    import(`../../assets/xmldata/akn/me/act/${lawName}.xml`)
      .then((lawlink) =>
        axios
          .get(lawlink.default, {
            "Content-Type": "application/xml; charset=utf-8",
          })
          .then((res) => {
            const jsonDataFromXml = new XMLParser().parseFromString(
              getLawString(res.data)
            );
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

  useEffect(() => {
    if (law && window.location.href.includes("#")) {
      setTimeout(() => {
        const hashIdx = window.location.href.lastIndexOf("#");
        document
          .getElementById(window.location.href.substring(hashIdx + 1))
          .scrollIntoView({ behavior: "smooth" });
      }, 500);
    }
  }, [law]);
  return <>{law ? <LawComponent law={law} /> : null}</>;
};
export default Laws;
