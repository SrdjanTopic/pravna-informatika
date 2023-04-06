import { useState } from "react";
import NewCaseComponent from "../../components/NewCaseComponent/NewCaseComponent";
import SimilarCasesComponent from "../../components/SimilarCasesComponent/SimilarCasesComponent";
import axios from "axios";
import { getCaseObjectFromString } from "../../utils/functions";

const NewCase = () => {
  const [showSimilarCases, setShowSimilarCases] = useState(true);
  const [similarCases, setSimilarCases] = useState([]);

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
          // console.log(caseSplit);
          const caseObject = getCaseObjectFromString(caseString);
          similarCasesObjects.push(caseObject);
        });
        setSimilarCases(similarCasesObjects);
        setShowSimilarCases(true);
      })
      .catch((err) => console.log(err));
  }

  function handleDodajSlucaj(caseInfo) {
    axios
      .post("http://localhost:8080/judgments", caseInfo)
      .then((res) => {
        console.log(res.data);
      })
      .catch((err) => console.log(err));
  }
  return (
    <>
      <NewCaseComponent
        handleSubmit={handleSubmit}
        handleDodajSlucaj={handleDodajSlucaj}
      />
      {showSimilarCases && (
        <SimilarCasesComponent similarCases={similarCases} />
      )}
    </>
  );
};
export default NewCase;
