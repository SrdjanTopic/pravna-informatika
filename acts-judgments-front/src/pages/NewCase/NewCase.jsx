import { useState } from "react";
import NewCaseComponent from "../../components/NewCaseComponent/NewCaseComponent";
import SimilarCasesComponent from "../../components/SimilarCasesComponent/SimilarCasesComponent";
import axios from "axios";

const NewCase = () => {
  const [showSimilarCases, setShowSimilarCases] = useState(true);
  const [similarCases, setSimilarCases] = useState([
    {
      sud: "OSPG",
      poslovniBroj: "K/69",
      sudija: "BOG ISUS",
      tuzilac: "Peder Gejić",
      okrivljeni: "Mr. G.",
      krivicnoDjelo: "cl.69 st.420 GAY",
      prekrseniPropisi: ["cl.1 qRAC", "cl.2 qRac"],
      tjelesnePovrede: "Teške",
      osudjivan: true,
      brOsudjivanja: 3,
      imovnoStanje: "Dobro",
      vrstaPresude: "Oslobađajuća",
      primjenjeniPropisi: ["cl.1 st.2 qRcina", "cl.5 st.1 qRcina"],
    },
    {
      sud: "OSPG",
      poslovniBroj: "K/69",
      sudija: "BOG ISUS",
      tuzilac: "Peder Gejić",
      okrivljeni: "Mr. G.",
      krivicnoDjelo: "cl.69 st.420 GAY",
      prekrseniPropisi: ["cl.1 qRAC", "cl.2 qRac"],
      tjelesnePovrede: "Teške",
      osudjivan: true,
      brOsudjivanja: 3,
      imovnoStanje: "Dobro",
      vrstaPresude: "Oslobađajuća",
      primjenjeniPropisi: ["cl.1 st.2 qRcina", "cl.5 st.1 qRcina"],
    },
    {
      sud: "OSPG",
      poslovniBroj: "K/69",
      sudija: "BOG ISUS",
      tuzilac: "Peder Gejić",
      okrivljeni: "Mr. G.",
      krivicnoDjelo: "cl.69 st.420 GAY",
      prekrseniPropisi: ["cl.1 qRAC", "cl.2 qRac"],
      tjelesnePovrede: "Teške",
      osudjivan: true,
      brOsudjivanja: 3,
      imovnoStanje: "Dobro",
      vrstaPresude: "Osuđujuća",
      primjenjeniPropisi: ["cl.1 st.2 qRcina", "cl.5 st.1 qRcina"],
    },
    {
      sud: "OSPG",
      poslovniBroj: "K/69",
      sudija: "BOG ISUS",
      tuzilac: "Peder Gejić",
      okrivljeni: "Mr. G.",
      krivicnoDjelo: "cl.69 st.420 GAY",
      prekrseniPropisi: ["cl.1 qRAC", "cl.2 qRac"],
      tjelesnePovrede: "Teške",
      osudjivan: true,
      brOsudjivanja: 3,
      imovnoStanje: "Dobro",
      vrstaPresude: "Uslovna",
      primjenjeniPropisi: ["cl.1 st.2 qRcina", "cl.5 st.1 qRcina"],
    },
    {
      sud: "OSPG",
      poslovniBroj: "K/69",
      sudija: "BOG ISUS",
      tuzilac: "Peder Gejić",
      okrivljeni: "Mr. G.",
      krivicnoDjelo: "cl.69 st.420 GAY",
      prekrseniPropisi: ["cl.1 qRAC", "cl.2 qRac"],
      tjelesnePovrede: "Teške",
      osudjivan: true,
      brOsudjivanja: 3,
      imovnoStanje: "Dobro",
      vrstaPresude: "Oslobađajuća",
      primjenjeniPropisi: ["cl.1 st.2 qRcina", "cl.5 st.1 qRcina"],
    },
  ]);

  function handleSubmit(e, form) {
    e.preventDefault();
    console.log(form);
    axios
      .post("http://localhost:8080/cbr/recommend-similar-cases", form)
      .then((res) => console.log(res.data))
      .catch((err) => console.log(err));
  }
  return (
    <>
      <NewCaseComponent handleSubmit={handleSubmit} />
      {showSimilarCases && (
        <SimilarCasesComponent similarCases={similarCases} />
      )}
    </>
  );
};
export default NewCase;
