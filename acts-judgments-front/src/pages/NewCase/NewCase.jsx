import { useState } from "react";
import NewCaseComponent from "../../components/NewCaseComponent/NewCaseComponent";
import SimilarCasesComponent from "../../components/SimilarCasesComponent/SimilarCasesComponent";
import axios from "axios";
import { getCaseObjectFromString } from "../../utils/functions";
import styles from "./NewCase.module.css";

const NewCase = () => {
  const [showSimilarCases, setShowSimilarCases] = useState(true);
  const [similarCases, setSimilarCases] = useState([]);
  const [odluka, setOdluka] = useState([]);

  function handleSubmit(e, form) {
    e.preventDefault();
    console.log(form);
    axios
      .post("http://localhost:8080/cbr/recommend-similar-cases", form)
      .then((res) => {
        const similarCasesStrings = [...res.data];
        console.log(similarCasesStrings);
        let similarCasesObjects = [];
        similarCasesStrings.forEach((caseString) => {
          const caseObject = getCaseObjectFromString(caseString);
          similarCasesObjects.push(caseObject);
        });
        setSimilarCases(similarCasesObjects);
        setShowSimilarCases(true);
      })
      .catch((err) => console.log(err));
  }

  function handleDodajSlucaj(caseInfo) {
    console.log(caseInfo);
    axios
      .post("http://localhost:8080/judgments", caseInfo)
      .then((res) => {
        console.log(res.data);
        alert("Presuda je uspješno dodata!")
      })
      .catch((err) => console.log(err));
  }

  function handlePredloziOdluku(caseInfo) {
    console.log(caseInfo);
    axios
      .post("http://localhost:8080/dr-device/recommend-by-rules", caseInfo)
      .then((res) => {
        console.log(res.data);
        setOdluka(res.data);
      })
      .catch((err) => console.log(err));
  }
  return (
    <div className={styles.wrapper}>
      <NewCaseComponent
        handlePredloziOdluku={handlePredloziOdluku}
        handleSubmit={handleSubmit}
        handleDodajSlucaj={handleDodajSlucaj}
        odluka={odluka}
      />
      {showSimilarCases && (
        <SimilarCasesComponent similarCases={similarCases} />
      )}
    </div>
  );
};
export default NewCase;
