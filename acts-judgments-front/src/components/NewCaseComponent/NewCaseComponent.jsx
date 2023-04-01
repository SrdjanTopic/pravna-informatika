import { useRef, useState } from "react";
import { imovnaStanja, sudovi, vrstePovreda } from "../../utils/data";
import styles from "./NewCaseComponent.module.css";
import Input from "./parts/Input/Input";
import Select from "./parts/Select/Select";
const NewCaseComponent = ({ handleSubmit }) => {
  const [isOsudjivan, setIsOsudjivan] = useState(false);

  const poslovniBroj = useRef();
  const sud = useRef();
  const sudija = useRef();
  const okrivljeni = useRef();
  const tuzilac = useRef();
  const vrstaPovrede = useRef();
  const imovnoStanje = useRef();
  const osudjivan = useRef();
  const brOsudjivanja = useRef();

  function triggerOsudjivan(value) {
    if (value === "Da") setIsOsudjivan(true);
    else setIsOsudjivan(false);
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
            vrstaPovrede: vrstaPovrede.current.innerText,
            osudjivan: osudjivan.current.innerText,
            brOsudjavanja:
              osudjivan.current.innerText === "Da"
                ? parseInt(brOsudjivanja.current.value)
                : 0,
          })
        }
      >
        <div className={styles.formElements}>
          <div className={styles.elements}>
            <Input ref={okrivljeni} label={"Okrivljeni"} />
            <Input ref={tuzilac} label={"Tužilac"} />
            <Select
              width={"300px"}
              ref={vrstaPovrede}
              label={"Vrsta povrede"}
              options={vrstePovreda}
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
          </div>
          <div className={styles.elements}>
            <Input ref={poslovniBroj} label={"Poslovni broj"} />
            <Input ref={sudija} label={"Sudija"} />
            <Select ref={sud} label={"Sud"} options={sudovi} width={"300px"} />
            <Select
              width={"300px"}
              ref={imovnoStanje}
              label={"Imovno stanje"}
              options={imovnaStanja}
            />
          </div>
        </div>
        <button>Potvrdi</button>
      </form>
    </>
  );
};
export default NewCaseComponent;
