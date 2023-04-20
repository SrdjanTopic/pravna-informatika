import { useRef, useState } from "react";
import {
  imovnaStanja,
  naciniUgrozavanjaSaobracaja,
  sudovi,
  vrstePresuda,
  zakoni,
} from "../../utils/data";
import styles from "./NewCaseComponent.module.css";
import Input from "./parts/Input/Input";
import Select from "./parts/Select/Select";
const NewCaseComponent = ({
  handleSubmit,
  handleDodajSlucaj,
  handlePredloziOdluku,
  odluka,
}) => {
  const [isOsudjivan, setIsOsudjivan] = useState(false);
  const [selectedZakonPropis, setSelectedZakonPropis] = useState("");
  const [selectedZakonPrekrsaj, setSelectedZakonPrekrsaj] = useState("");
  const [selectedZakonKrivDjelo, setSelectedZakonKrivDjelo] = useState("");
  const [primenjeniPropisi, setPrimenjeniPropisi] = useState([]);
  const [primenjeniPrekrsaji, setPrimenjeniPrekrsaji] = useState([]);
  const [nedozvoljenoPolukruznoOkretanje, setNedozvoljenoPolukruznoOkretanje] =
    useState(false);
  const [prekrsenaPravilaNaRaskrsnici, setPrekrsenaPravilaNaRaskrsnici] =
    useState(false);
  const [prekrsenoKretanjeDesnomStranom, setPrekrsenoKretanjeDesnomStranom] =
    useState(false);

  const poslovniBroj = useRef();
  const sud = useRef();
  const sudija = useRef();
  const okrivljeni = useRef();
  const tuzilac = useRef();
  const datum = useRef();
  const imovnoStanje = useRef();
  const osudjivan = useRef();
  const brOsudjivanja = useRef();
  const ugrozenSaobracaj = useRef();
  const radnjeBezPrethodnogUvjerenja = useRef();
  const radnjeBezPrilagodjavanjaBrzine = useRef();
  const zakonPropis = useRef();
  const clanPropis = useRef();
  const stavPropis = useRef();
  const zakonPrekrsaj = useRef();
  const clanPrekrsaj = useRef();
  const stavPrekrsaj = useRef();
  const zakonKrivDjelo = useRef();
  const clanKrivDjelo = useRef();
  const stavKrivDjelo = useRef();
  const vrstaPresude = useRef();

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

  function extractUgrozenSaobracaj(text) {
    let res = text.includes("svjesno")
      ? "svjesno".concat(text.includes("lake") ? " lake" : " teske")
      : "nehat".concat(text.includes("lake") ? " lake" : " teske");
    return res;
  }

  function reshapeDateStringFormat(strDate) {
    return `${strDate.slice(8, strDate.length)}/${strDate.slice(
      5,
      7
    )}/${strDate.slice(0, 4)}`;
  }
  return (
    <div>
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
            datum: reshapeDateStringFormat(datum.current.value),
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
            radnjeBezPrethodnogUvjerenja: Array.prototype.slice
              .call(radnjeBezPrethodnogUvjerenja.current.children)
              .map((element) => {
                if (element.lastChild.checked) return element.lastChild.value;
              })
              .filter(Boolean),
            radnjeBezPrilagodjavanjaBrzine: Array.prototype.slice
              .call(radnjeBezPrilagodjavanjaBrzine.current.children)
              .map((element) => {
                if (element.lastChild.checked) return element.lastChild.value;
              })
              .filter(Boolean),
            ugrozenSaobracaj: extractUgrozenSaobracaj(
              ugrozenSaobracaj.current.innerText
            ),
            nedozvoljenoPolukruznoOkretanje: nedozvoljenoPolukruznoOkretanje,
            prekrsenaPravilaNaRaskrsnici: prekrsenaPravilaNaRaskrsnici,
            prekrsenoKretanjeDesnomStranom: prekrsenoKretanjeDesnomStranom,
            vrstaPresude: vrstaPresude.current.innerText,
          })
        }
      >
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
            <input type="date" style={{ width: "100%" }} ref={datum} />
          </div>
          <div className={styles.elements}>
            <Input ref={poslovniBroj} label={"Poslovni broj"} />
            <Input ref={sudija} label={"Sudija"} />
            <Select ref={sud} label={"Sud"} options={sudovi} width={"300px"} />
            <Input ref={tuzilac} label={"Tužilac"} />
          </div>
        </div>
        <div className={styles.atributiWrapper}>
          <h3>Ključni atributi</h3>
          <Select
            width={"620px"}
            ref={ugrozenSaobracaj}
            label={"Način na koji je ugrožen saobraćaj"}
            options={naciniUgrozavanjaSaobracaja}
          />
          <h4>Vozač se nije prethodno uvjerio:</h4>
          <i>(ako se uvjerio, ne treba čekirati)</i>
          <div
            className={styles.multiselectWrapper}
            ref={radnjeBezPrethodnogUvjerenja}
          >
            <div>
              <label htmlFor="pri ukljucenju u saobracaj">
                Pri uključivanju u saobraćaj
              </label>
              <input
                type="checkbox"
                id="pri ukljucenju u saobracaj"
                value="pri ukljucenju u saobracaj"
                name="pri ukljucenju u saobracaj"
                label="pri ukljucenju u saobracaj"
              />
            </div>
            <div>
              <label htmlFor="u saobracaju">Dok je bio u saobraćaju</label>
              <input
                type="checkbox"
                id="u saobracaju"
                value="u saobracaju"
                name="u saobracaju"
                label="u saobracaju"
              />
            </div>
          </div>

          <h4>Vozač nije prilagodio brzinu:</h4>
          <i>(ako jeste prilagodio brzinu, ne treba čekirati)</i>
          <div
            className={styles.multiselectWrapper}
            ref={radnjeBezPrilagodjavanjaBrzine}
          >
            <div>
              <label htmlFor="pred pjesacki">Pred pješački prelaz</label>
              <input
                type="checkbox"
                id="pred pjesacki"
                value="pred pjesacki"
                name="pred pjesacki"
                label="pred pjesacki"
              />
            </div>
            <div>
              <label htmlFor="prema stanju puta">
                U zavisnosti od stanja puta
              </label>
              <input
                type="checkbox"
                id="prema stanju puta"
                value="prema stanju puta"
                name="prema stanju puta"
                label="prema stanju puta"
              />
            </div>
          </div>

          <div className={styles.multiselectWrapper}>
            <h4>Vozač je izvršio nedozvoljeno polukružno okretanje:</h4>
            <div className={styles.radioWrapper}>
              <label htmlFor="daPolukruznoOkretanje">Da</label>
              <input
                type="radio"
                id="daPolukruznoOkretanje"
                value={true}
                name="daPolukruznoOkretanje"
                checked={nedozvoljenoPolukruznoOkretanje}
                onChange={() => setNedozvoljenoPolukruznoOkretanje(true)}
              />
              <label htmlFor="nePolukruznoOkretanje">Ne</label>
              <input
                type="radio"
                id="nePolukruznoOkretanje"
                value={false}
                name="nePolukruznoOkretanje"
                checked={!nedozvoljenoPolukruznoOkretanje}
                onChange={() => setNedozvoljenoPolukruznoOkretanje(false)}
              />
            </div>
          </div>

          <div className={styles.multiselectWrapper}>
            <h4>Vozač se nije pridržavao pravila na raskrsnici:</h4>
            <div className={styles.radioWrapper}>
              <label htmlFor="daNaRaskrsnici">Da</label>
              <input
                type="radio"
                id="daNaRaskrsnici"
                value={true}
                name="daNaRaskrsnici"
                checked={prekrsenaPravilaNaRaskrsnici}
                onChange={() => setPrekrsenaPravilaNaRaskrsnici(true)}
              />
              <label htmlFor="neNaRaskrsnici">Ne</label>
              <input
                type="radio"
                id="neNaRaskrsnici"
                value={false}
                name="neNaRaskrsnici"
                checked={!prekrsenaPravilaNaRaskrsnici}
                onChange={() => setPrekrsenaPravilaNaRaskrsnici(false)}
              />
            </div>
          </div>

          <div className={styles.multiselectWrapper}>
            <h4>Vozač je prekršio pravilo kretanja desnom stranom:</h4>
            <div className={styles.radioWrapper}>
              <label htmlFor="daDesnomStranom">Da</label>
              <input
                type="radio"
                id="daDesnomStranom"
                value={true}
                name="daDesnomStranom"
                checked={prekrsenoKretanjeDesnomStranom}
                onChange={() => setPrekrsenoKretanjeDesnomStranom(true)}
              />
              <label htmlFor="neDesnomStranom">Ne</label>
              <input
                type="radio"
                id="neDesnomStranom"
                value={false}
                name="neDesnomStranom"
                checked={!prekrsenoKretanjeDesnomStranom}
                onChange={() => setPrekrsenoKretanjeDesnomStranom(false)}
              />
            </div>
          </div>
        </div>
        <button>Nađi slične presude</button>

        <div className={styles.predlogOdluke}>
          <button
            type="button"
            onClick={() => {
              handlePredloziOdluku({
                poslovniBroj: poslovniBroj.current.value,
                sud: sud.current.innerText,
                sudija: sudija.current.value,
                okrivljeni: okrivljeni.current.value,
                tuzilac: tuzilac.current.value,
                datum: reshapeDateStringFormat(datum.current.value),
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
                radnjeBezPrethodnogUvjerenja: Array.prototype.slice
                  .call(radnjeBezPrethodnogUvjerenja.current.children)
                  .map((element) => {
                    if (element.lastChild.checked)
                      return element.lastChild.value;
                  })
                  .filter(Boolean),
                radnjeBezPrilagodjavanjaBrzine: Array.prototype.slice
                  .call(radnjeBezPrilagodjavanjaBrzine.current.children)
                  .map((element) => {
                    if (element.lastChild.checked)
                      return element.lastChild.value;
                  })
                  .filter(Boolean),
                ugrozenSaobracaj: extractUgrozenSaobracaj(
                  ugrozenSaobracaj.current.innerText
                ),
                nedozvoljenoPolukruznoOkretanje:
                  nedozvoljenoPolukruznoOkretanje,
                prekrsenaPravilaNaRaskrsnici: prekrsenaPravilaNaRaskrsnici,
                prekrsenoKretanjeDesnomStranom: prekrsenoKretanjeDesnomStranom,
                vrstaPresude: vrstaPresude.current.innerText,
              });
            }}
          >
            Predloži odluku
          </button>
          {odluka != "" && <p>{odluka}</p>}
        </div>

        <div className={styles.elements}>
          <div className={styles.bigWrap}>
            <h4>Krivično djelo</h4>
            <div className={styles.osudjivanWrapper}>
              <Select
                width={"380px"}
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
          </div>
          <div className={styles.bigWrap}>
            <h4>Prekršeni propisi</h4>
            <div className={styles.osudjivanWrapper}>
              <Select
                width={"380px"}
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
          </div>
          <div className={styles.bigWrap}>
            <h4>Primjenjeni propisi</h4>
            <div className={styles.osudjivanWrapper}>
              <Select
                width={"380px"}
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
          <Select
            width={"30%"}
            ref={vrstaPresude}
            label={"Vrsta presude"}
            options={vrstePresuda}
          />
        </div>
        <button
          type="button"
          onClick={() => {
            handleDodajSlucaj({
              poslovniBroj: poslovniBroj.current.value,
              sud: sud.current.innerText,
              sudija: sudija.current.value,
              okrivljeni: okrivljeni.current.value,
              tuzilac: tuzilac.current.value,
              datum: reshapeDateStringFormat(datum.current.value),
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
              radnjeBezPrethodnogUvjerenja: Array.prototype.slice
                .call(radnjeBezPrethodnogUvjerenja.current.children)
                .map((element) => {
                  if (element.lastChild.checked) return element.lastChild.value;
                })
                .filter(Boolean),
              radnjeBezPrilagodjavanjaBrzine: Array.prototype.slice
                .call(radnjeBezPrilagodjavanjaBrzine.current.children)
                .map((element) => {
                  if (element.lastChild.checked) return element.lastChild.value;
                })
                .filter(Boolean),
              ugrozenSaobracaj: extractUgrozenSaobracaj(
                ugrozenSaobracaj.current.innerText
              ),
              nedozvoljenoPolukruznoOkretanje: nedozvoljenoPolukruznoOkretanje,
              prekrsenaPravilaNaRaskrsnici: prekrsenaPravilaNaRaskrsnici,
              prekrsenoKretanjeDesnomStranom: prekrsenoKretanjeDesnomStranom,
              vrstaPresude: vrstaPresude.current.innerText,
            });
          }}
        >
          Dodaj slučaj
        </button>
      </form>
    </div>
  );
};
export default NewCaseComponent;
