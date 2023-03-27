import axios from "axios";
import { useEffect, useState } from "react";
import XMLParser from "react-xml-parser";
import { useParams } from "react-router-dom";
import LawComponent from "../../components/LawComponent/LawComponent";

const Laws = () => {
  let { lawname } = useParams();
  const [law, setLaw] = useState();
  useEffect(() => {
    import(`../../assets/xmldata/akn/me/act/${lawname}.xml`)
      .then((lawlink) =>
        axios
          .get(lawlink.default, {
            "Content-Type": "application/xml; charset=utf-8",
          })
          .then((res) => {
            let adjustedStringXml = res.data;
            adjustedStringXml = adjustedStringXml.replaceAll(
              "<ref ",
              "</p><ref "
            );
            adjustedStringXml = adjustedStringXml.replaceAll(
              "</ref>",
              "</ref><p>"
            );
            const jsonDataFromXml = new XMLParser().parseFromString(
              adjustedStringXml
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
      const hashIdx = window.location.href.lastIndexOf("#");
      document
        .getElementById(window.location.href.substring(hashIdx + 1))
        .scrollIntoView({ behavior: "smooth" });
    }
  }, [law]);
  return <>{law ? <LawComponent law={law} /> : <h2>loading Law...</h2>}</>;
};
export default Laws;
