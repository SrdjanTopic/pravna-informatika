import { useRef, useState } from "react";
import { imovnaStanja, sudovi, vrstePovreda, zakoni } from "../../utils/data";
import styles from "./NewCaseComponent.module.css";
import Input from "./parts/Input/Input";
import Select from "./parts/Select/Select";
const NewCaseComponent = ({ handleSubmit, handleDodajSlucaj }) => {
  const [isOsudjivan, setIsOsudjivan] = useState(false);
  const [selectedZakonPropis, setSelectedZakonPropis] = useState("");
  const [selectedZakonPrekrsaj, setSelectedZakonPrekrsaj] = useState("");
  const [selectedZakonKrivDjelo, setSelectedZakonKrivDjelo] = useState("");
  const [primenjeniPropisi, setPrimenjeniPropisi] = useState([]);
  const [primenjeniPrekrsaji, setPrimenjeniPrekrsaji] = useState([]);

  const poslovniBroj = useRef();
  const sud = useRef();
  const sudija = useRef();
  const okrivljeni = useRef();
  const tuzilac = useRef();
  const vrstaPovrede = useRef();
  const imovnoStanje = useRef();
  const osudjivan = useRef();
  const brOsudjivanja = useRef();
  const zakonPropis = useRef();
  const clanPropis = useRef();
  const stavPropis = useRef();
  const zakonPrekrsaj = useRef();
  const clanPrekrsaj = useRef();
  const stavPrekrsaj = useRef();
  const zakonKrivDjelo = useRef();
  const clanKrivDjelo = useRef();
  const stavKrivDjelo = useRef();

  function triggerOsudjivan(value) {
    if (value === "Da") setIsOsudjivan(true);
    else setIsOsudjivan(false);
  }
  function triggerZakonPropis(value) {
    setSelectedZakonPropis(value);
  }
  function triggerZakonPrekrsaj(value) {
    setSelectedZakonPrekrsaj(value);
  }
  function triggerZakonKrivDjelo(value) {
    setSelectedZakonKrivDjelo(value);
  }
  function dodajBtnHandlePropis() {
    const propis = {
      zakonPropis: zakonPropis.current.innerText,
      clanPropis: clanPropis.current.value,
      stavPropis: stavPropis.current.value,
    };
    const propisString = `cl.${propis.clanPropis} ${
      propis.stavPropis !== "0" ? "st.".concat(propis.stavPropis) : ""
    } ${propis.zakonPropis}`;
    if (primenjeniPropisi.indexOf(propisString) === -1)
      setPrimenjeniPropisi((prev) => [...prev, propisString]);
  }
  function removePrimjenjeniPropis(id) {
    setPrimenjeniPropisi(primenjeniPropisi.filter((pp, index) => index !== id));
  }
  function dodajBtnHandlePrekrsaj() {
    const prekrsaj = {
      zakonPrekrsaj: zakonPrekrsaj.current.innerText,
      clanPrekrsaj: clanPrekrsaj.current.value,
      stavPrekrsaj: stavPrekrsaj.current.value,
    };
    const prekrsajString = `cl.${prekrsaj.clanPrekrsaj} ${
      prekrsaj.stavPrekrsaj !== "0" ? "st.".concat(prekrsaj.stavPrekrsaj) : ""
    } ${prekrsaj.zakonPrekrsaj}`;
    if (primenjeniPrekrsaji.indexOf(prekrsajString) === -1)
      setPrimenjeniPrekrsaji((prev) => [...prev, prekrsajString]);
  }
  function removePrimjenjeniPrekrsaj(id) {
    setPrimenjeniPrekrsaji(
      primenjeniPrekrsaji.filter((pp, index) => index !== id)
    );
  }
  return (
    <>
      <h2>Dodaj Presudu</h2>
      <form
        className={styles.form}
        onSubmit={(e) =>
          handleSubmit(e, {
            poslovniBroj: poslovniBroj.current.value,
            sud: sud.current.innerText,
            sudija: sudija.current.value,
            okrivljeni: okrivljeni.current.value,
            tuzilac: tuzilac.current.value,
            tjelesnePovrede: [vrstaPovrede.current.innerText],
            osudjivan: osudjivan.current.innerText === "Da" ? true : false,
            imovnoStanje: imovnoStanje.current.innerText,
            brojOsudjivanja:
              osudjivan.current.innerText === "Da"
                ? parseInt(brOsudjivanja.current.value)
                : 0,
            primijenjeniPropisi: primenjeniPropisi,
            prekrseniPropisi: primenjeniPrekrsaji,
            krivicnoDjelo: `cl.${clanKrivDjelo.current.value} ${
              stavKrivDjelo.current.value !== "0"
                ? "st.".concat(stavKrivDjelo.current.value)
                : ""
            } ${zakonKrivDjelo.current.innerText}`,
          })
        }
      >
        <h4 style={{ alignSelf: "flex-start", marginLeft: "1rem" }}>
          Osnovne informacije
        </h4>
        <div className={styles.formElements}>
          <div className={styles.elements}>
            <Input ref={okrivljeni} label={"Okrivljeni"} />
            <Select
              width={"300px"}
              ref={imovnoStanje}
              label={"Imovno stanje"}
              options={imovnaStanja}
            />

            <div className={styles.osudjivanWrapper}>
              <Select
                width={"200px"}
                ref={osudjivan}
                label={"Osuđivan"}
                options={["Da", "Ne"]}
                triggerFunction={triggerOsudjivan}
              />
              <input
                type="number"
                min={1}
                ref={brOsudjivanja}
                defaultValue={1}
                disabled={!isOsudjivan}
              />
            </div>
            <Select
              width={"300px"}
              ref={vrstaPovrede}
              label={"Vrsta povrede"}
              options={vrstePovreda}
            />
          </div>
          <div className={styles.elements}>
            <Input ref={poslovniBroj} label={"Poslovni broj"} />
            <Input ref={sudija} label={"Sudija"} />
            <Select ref={sud} label={"Sud"} options={sudovi} width={"300px"} />

            <Input ref={tuzilac} label={"Tužilac"} />
          </div>
          <div className={styles.elements}>
            <h4 style={{ marginTop: "-1.65rem" }}>Krivično djelo</h4>
            <div className={styles.osudjivanWrapper}>
              <Select
                width={"200px"}
                ref={zakonKrivDjelo}
                label={"Zakon"}
                options={zakoni}
                triggerFunction={triggerZakonKrivDjelo}
              />
              <input
                type="number"
                min={0}
                ref={clanKrivDjelo}
                defaultValue={0}
                disabled={selectedZakonKrivDjelo === ""}
                style={{ width: "70px" }}
              />
              <input
                type="number"
                min={0}
                ref={stavKrivDjelo}
                defaultValue={0}
                disabled={selectedZakonKrivDjelo === ""}
                style={{ width: "70px" }}
              />
            </div>
            <h4>Prekršeni propisi</h4>
            <div className={styles.osudjivanWrapper}>
              <Select
                width={"200px"}
                ref={zakonPrekrsaj}
                label={"Zakon"}
                options={zakoni}
                triggerFunction={triggerZakonPrekrsaj}
              />
              <input
                type="number"
                min={0}
                ref={clanPrekrsaj}
                defaultValue={0}
                disabled={selectedZakonPrekrsaj === ""}
                style={{ width: "70px" }}
              />
              <input
                type="number"
                min={0}
                ref={stavPrekrsaj}
                defaultValue={0}
                disabled={selectedZakonPrekrsaj === ""}
                style={{ width: "70px" }}
              />
              <button
                type="button"
                className={styles.dodajBtn}
                onClick={dodajBtnHandlePrekrsaj}
                disabled={selectedZakonPrekrsaj === ""}
              >
                Dodaj
              </button>
            </div>
            <div className={styles.primjenjeniPropisiList}>
              {primenjeniPrekrsaji.map((primenjeniPrekrsaj, id) => (
                <div className={styles.primenjeniPropisDiv} key={id}>
                  <p>{primenjeniPrekrsaj}</p>
                  <div
                    className={styles.svgDiv}
                    onClick={() => removePrimjenjeniPrekrsaj(id)}
                  >
                    <svg viewBox="0 0 100 100" className={styles.xSvg}>
                      <line x1="10" y1="10" x2="90" y2="90" />
                      <line x1="10" y1="90" x2="90" y2="10" />
                    </svg>
                  </div>
                </div>
              ))}
            </div>
            <h4>Primjenjeni propisi</h4>
            <div className={styles.osudjivanWrapper}>
              <Select
                width={"200px"}
                ref={zakonPropis}
                label={"Zakon"}
                options={zakoni}
                triggerFunction={triggerZakonPropis}
              />
              <input
                type="number"
                min={0}
                ref={clanPropis}
                defaultValue={0}
                disabled={selectedZakonPropis === ""}
                style={{ width: "70px" }}
              />
              <input
                type="number"
                min={0}
                ref={stavPropis}
                defaultValue={0}
                disabled={selectedZakonPropis === ""}
                style={{ width: "70px" }}
              />
              <button
                type="button"
                className={styles.dodajBtn}
                onClick={dodajBtnHandlePropis}
                disabled={selectedZakonPropis === ""}
              >
                Dodaj
              </button>
            </div>
            <div className={styles.primjenjeniPropisiList}>
              {primenjeniPropisi.map((primenjeniPropis, id) => (
                <div className={styles.primenjeniPropisDiv} key={id}>
                  <p>{primenjeniPropis}</p>
                  <div
                    className={styles.svgDiv}
                    onClick={() => removePrimjenjeniPropis(id)}
                  >
                    <svg viewBox="0 0 100 100" className={styles.xSvg}>
                      <line x1="10" y1="10" x2="90" y2="90" />
                      <line x1="10" y1="90" x2="90" y2="10" />
                    </svg>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </div>
        <button>Nađi slične presude</button>
        <button
          type="button"
          onClick={() => {
            handleDodajSlucaj({
              poslovniBroj: poslovniBroj.current.value,
              sud: sud.current.innerText,
              sudija: sudija.current.value,
              okrivljeni: okrivljeni.current.value,
              tuzilac: tuzilac.current.value,
              tjelesnePovrede: vrstaPovrede.current.innerText,
              osudjivan: osudjivan.current.innerText === "Da" ? true : false,
              imovnoStanje: imovnoStanje.current.innerText,
              brojOsudjivanja:
                osudjivan.current.innerText === "Da"
                  ? parseInt(brOsudjivanja.current.value)
                  : 0,
              primijenjeniPropisi: primenjeniPropisi,
              prekrseniPropisi: primenjeniPrekrsaji,
              krivicnoDjelo: `cl.${clanKrivDjelo.current.value} ${
                stavKrivDjelo.current.value !== "0"
                  ? "st.".concat(stavKrivDjelo.current.value)
                  : ""
              } ${zakonKrivDjelo.current.innerText}`,
            });
          }}
        >
          Dodaj slučaj
        </button>
      </form>
    </>
  );
};
export default NewCaseComponent;
