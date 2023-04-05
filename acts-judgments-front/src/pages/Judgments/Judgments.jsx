import axios from "axios";
import { useEffect, useState } from "react";
import XMLParser from "react-xml-parser";
import { useParams } from "react-router-dom";
import JudgmentComponent from "../../components/JudgmentComponent/JudgmentComponent";
import { getJudgmentString } from "../../utils/functions";

const Judgments = () => {
  let { judgmentName } = useParams();
  const [judgment, setJudgment] = useState();
  useEffect(() => {
    axios
      .get(`http://localhost:8080/judgments/${judgmentName}`)
      .then((res) => {
        console.log(res.data.caseDescription);
        const jsonDataFromXml = new XMLParser().parseFromString(
          getJudgmentString(res.data.xmlContent)
        );
        setJudgment({
          meta: jsonDataFromXml.children[0].children[0],
          header: jsonDataFromXml.children[0].children[1],
          judgmentBody: jsonDataFromXml.children[0].children[2],
        });
      })
      .catch((err) => console.log(err));
  }, []);

  useEffect(() => {
    if (judgment && window.location.href.includes("#")) {
      const hashIdx = window.location.href.lastIndexOf("#");
      document
        .getElementById(window.location.href.substring(hashIdx + 1))
        .scrollIntoView({ behavior: "smooth" });
    }
  }, [judgment]);
  return <>{judgment ? <JudgmentComponent judgment={judgment} /> : null}</>;
};
export default Judgments;
