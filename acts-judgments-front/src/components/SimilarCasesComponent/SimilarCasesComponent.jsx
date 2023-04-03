import { Fragment } from "react";
import styles from "./SimilarCasesComponent.module.css";

const SimilarCasesComponent = ({ similarCases }) => {
  console.log(similarCases);
  return (
    <>
      {similarCases.length === 0 ? (
        <h2>Nema sličnih slučajeva</h2>
      ) : (
        <>
          <h2>Slični slučajevi</h2>
          <div className={styles.cardsWrapper}>
            {similarCases.map((similarCase, index) => (
              <div className={styles.caseCard} key={index}>
                <h3>{similarCase.sud}</h3>
                <h3>{similarCase.poslovniBroj}</h3>
                <br />
                <div className={styles.caseInfoWrapper}>
                  <p>
                    {`Krivično djelo: `}
                    <b>{similarCase.krivicnoDjelo}</b>
                  </p>
                  <p>
                    {`Prekšeni propisi: `}
                    <b className={styles.propis}>
                      {similarCase.prekrseniPropisi.map((propis, id) => {
                        if (id === similarCase.prekrseniPropisi.length - 1)
                          return (
                            <Fragment key={id}>
                              <br />
                              <span>{`${propis}`}</span>
                            </Fragment>
                          );
                        else
                          return (
                            <Fragment key={id}>
                              <br />
                              <span>{`${propis}, `}</span>
                            </Fragment>
                          );
                      })}
                    </b>
                  </p>
                  <p>
                    {`Primjenjeni propisi: `}
                    <b className={styles.propis}>
                      {similarCase.primjenjeniPropisi.map((propis, id) => {
                        if (id === similarCase.primjenjeniPropisi.length - 1)
                          return (
                            <Fragment key={id}>
                              <br />
                              <span>{`${propis}`}</span>
                            </Fragment>
                          );
                        else
                          return (
                            <Fragment key={id}>
                              <br />
                              <span>{`${propis}, `}</span>
                            </Fragment>
                          );
                      })}
                    </b>
                  </p>
                  <p>
                    {`Tjelesne povrede: `}
                    <b>{similarCase.tjelesnePovrede}</b>
                  </p>
                  <br />
                  <p>
                    {`Okrivljeni: `}
                    <b>{similarCase.okrivljeni}</b>
                  </p>

                  <p>
                    {`Imovno stanje: `}
                    <b>{similarCase.imovnoStanje}</b>
                  </p>
                  <p>
                    {`Osuđivan: `}
                    <b>{similarCase.osudjivan ? "Da" : "Ne"}</b>
                  </p>
                  <p>
                    {`Br. Osuđivanja: `}
                    <b>
                      {similarCase.osudjivan
                        ? similarCase.brOsudjivanja
                        : "---"}
                    </b>
                  </p>
                  <br />

                  <p>
                    {`Sudija: `}
                    <b>{similarCase.sudija}</b>
                  </p>
                  <br />
                  <p>
                    {`Tužilac: `}
                    <b>{similarCase.tuzilac}</b>
                  </p>
                </div>
                <div className={styles.cardFooter}>
                  <h4
                    className={`${styles.vrstaPresude} ${
                      similarCase.vrstaPresude === "oslobadjajuca"
                        ? styles.oslobadjajuca
                        : ""
                    } ${
                      similarCase.vrstaPresude === "osudjujuca"
                        ? styles.osudjujuca
                        : ""
                    } ${
                      similarCase.vrstaPresude === "uslovna"
                        ? styles.uslovna
                        : ""
                    }`}
                  >
                    {similarCase.vrstaPresude}
                  </h4>
                  <h5>Slicnost: ~{Math.round(similarCase.slicnost * 100)}%</h5>
                </div>
              </div>
            ))}
          </div>
        </>
      )}
    </>
  );
};
export default SimilarCasesComponent;
