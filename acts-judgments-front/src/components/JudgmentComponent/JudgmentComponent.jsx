import { Fragment } from "react";
import styles from "./JudgmentComponent.module.css";
import Introduction from "./parts/Introduction/Introduction";
import Background from "./parts/Background/Background";
import Decision from "./parts/Decision/Decision";
import Motivation from "./parts/Motivation/Motivation";
import Meta from "./parts/Meta/Meta";

const JudgmentComponent = ({ judgment, judgmentDescription }) => {
  console.log(judgmentDescription);
  return (
    <div className={styles.judmgnentWrapper}>
      <div className={styles.judgmentMain}>
        <Meta meta={judgment.meta} />
        <div className={styles.judgment}>
          {judgment.judgmentBody.children.map((judgmentPart) => (
            <Fragment key={judgmentPart.name}>
              {judgmentPart.name === "introduction" && (
                <Introduction introduction={judgmentPart} />
              )}
              {judgmentPart.name === "background" && (
                <Background background={judgmentPart} />
              )}
              {judgmentPart.name === "decision" && (
                <Decision decision={judgmentPart} />
              )}
              {judgmentPart.name === "motivation" && (
                <Motivation motivation={judgmentPart} />
              )}
            </Fragment>
          ))}
        </div>
      </div>
      <div className={styles.judgmentDescriptionWrapper}>
        <div className={styles.judgmentDescriptionHeading}>
          <h2>Sažete informacije</h2>
        </div>
        <div className={styles.judmentDescription}>
          <div className={styles.textWrapper}>
            <p>{` Poslovni broj: `}</p>
            <b>{judgmentDescription.poslovniBroj}</b>
          </div>
          <div className={styles.textWrapper}>
            <p>{` Datum: `}</p>
            <b>{judgmentDescription.datum}</b>
          </div>
          <div className={styles.textWrapper}>
            <p>{`Sud: `}</p>
            <b>{judgmentDescription.sud}</b>
          </div>
          <div className={styles.textWrapper}>
            <p>{`Sudija: `}</p>
            <b>{judgmentDescription.sudija?.replace(",", "")}</b>
          </div>
          <div className={styles.line}></div>

          <div className={styles.textWrapper}>
            <p>{`Tužilac: `}</p>
            <b>{judgmentDescription.tuzilac?.replace(",", "")}</b>
          </div>
          <div className={styles.line}></div>

          <div className={styles.textWrapper}>
            <p>{`Okrivljeni: `}</p>
            <b>{judgmentDescription.okrivljeni?.replace(",", "")}</b>
          </div>
          <div className={styles.textWrapper}>
            <p>{`Imovno Stanje: `}</p>
            <b>{judgmentDescription.imovnoStanje}</b>
          </div>
          <div className={styles.textWrapper}>
            <p>{`Osuđivan: `}</p>
            <b>{judgmentDescription.osudjivan === true ? "da" : "ne"}</b>
          </div>
          <div className={styles.textWrapper}>
            <p>{`Broj osuđivanja: `}</p>
            <b>
              {judgmentDescription.osudjivan === true
                ? judgmentDescription.brojOsudjivanja
                : "---"}
            </b>
          </div>

          <div className={styles.line}></div>
          <div className={styles.textWrapper}>
            <p>{`Ugržavanje saobraćaja: `}</p>
            <b>
              {judgmentDescription.ugrozenSaobracaj === "nehat lake"
                ? "Iz nehata, izazivajući lake tjelesne povrede":""}
              {judgmentDescription.ugrozenSaobracaj === "nehat teske"
                ? "Iz nehata, izazivajući teške tjelesne povrede":""}
              {judgmentDescription.ugrozenSaobracaj === "svjesno lake"
                ? "Svjesno, izazivajući lake tjelesne povrede":""}
              {judgmentDescription.ugrozenSaobracaj === "svjesno teske"
                ? "Svjesno, izazivajući teške tjelesne povrede":""}
            </b>
          </div>
          <div className={styles.textWrapper}>
          {judgmentDescription.radnjeBezPrethodnogUvjerenja?.length > 0 &&
                    judgmentDescription.radnjeBezPrethodnogUvjerenja[0] != "" &&
                    judgmentDescription.radnjeBezPrethodnogUvjerenja.map(
                      (radnja, id) => (
                        <Fragment key={id}>
                          <p>{`Neuvjeravanje: `}</p>
                          <b>{`${radnja}`}</b>
                        </Fragment>
                      )
                    )}
          </div>
          <div className={styles.textWrapper}>
          {judgmentDescription.radnjeBezPrilagodjavanjaBrzine?.length > 0 &&
                    judgmentDescription.radnjeBezPrilagodjavanjaBrzine[0] != "" &&
                    judgmentDescription.radnjeBezPrilagodjavanjaBrzine.map(
                      (radnja, id) => (
                        <Fragment key={id}>
                          <p>{`Neprilagodjavanje brzine: `}</p>
                          <b>{`${radnja}`}</b>
                        </Fragment>
                      )
                    )}
          </div>
          <div className={styles.textWrapper}>
          {judgmentDescription.nedozvoljenoPolukruznoOkretanje == true && (
                    <Fragment>
                    <p>{`Prekršeno: `}</p>
                    <b>{`Nedozvoljeno polukružno parkiranje`}</b>
                  </Fragment>
                  )}
          </div>
          <div className={styles.textWrapper}>
          {judgmentDescription.prekrsenaPravilaNaRaskrsnici == true && (
                  <Fragment >
                  <p>{`Prekršeno: `}</p>
                  <b>{`Nepridržavanje pravila na raskrsnici`}</b>
                </Fragment>
                  )}
          </div>
          <div className={styles.textWrapper}>
          {judgmentDescription.prekrsenoKretanjeDesnomStranom == true && (
                  <Fragment >
                  <p>{`Prekršeno: `}</p>
                  <b>{`Pravilo kretanja desnom stranom`}</b>
                </Fragment>
                   
                  )}
          </div>


         
          <div className={styles.line}></div>

          <div className={styles.textWrapper}>
            <p>{`Krivično djelo: `}</p>
            <b className={styles.clanZakona}>
              {judgmentDescription.krivicnoDjelo}
            </b>
          </div>
          <div className={styles.propisiDiv}>
            <div className={styles.vrstaPropisa}>
              <p>{`Prekršeni propisi: `}</p>
            </div>
            <div className={styles.propisiList}>
              {judgmentDescription.prekrseniPropisi
                ? judgmentDescription.prekrseniPropisi.map((propis, id) => {
                    return (
                      <Fragment key={id}>
                        <b className={styles.underline}>{`${propis}`}</b>
                      </Fragment>
                    );
                  })
                : "---"}
            </div>
          </div>

          <div className={styles.propisiDiv}>
            <div className={styles.vrstaPropisa}>
              <p>{`Primijenjeni propisi: `}</p>
            </div>
            <div className={styles.propisiList}>
              {judgmentDescription.primijenjeniPropisi
                ? judgmentDescription.primijenjeniPropisi.map((propis, id) => {
                    return (
                      <Fragment key={id}>
                        <b className={styles.underline}>{`${propis}`}</b>
                      </Fragment>
                    );
                  })
                : "---"}
            </div>
          </div>
          <div className={styles.line}></div>

          <div className={styles.textWrapper}>
            <p>{`Vrsta presude: `}</p>
            <b>{judgmentDescription.vrstaPresude}</b>
          </div>
          <div className={styles.textWrapper}>
            <p>{`Kazna: `}</p>
            <b>{judgmentDescription.kazna}</b>
          </div>
        </div>
      </div>
    </div>
  );
};
export default JudgmentComponent;
