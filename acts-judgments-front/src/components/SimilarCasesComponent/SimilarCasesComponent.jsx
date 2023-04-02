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
                <h3>{`${similarCase.sud} ${similarCase.poslovniBroj}`}</h3>
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
                            <>
                              <br />
                              <span>{`${propis}`}</span>
                            </>
                          );
                        else
                          return (
                            <>
                              <br />
                              <span>{`${propis}, `}</span>
                            </>
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
                            <>
                              <br />
                              <span>{`${propis}`}</span>
                            </>
                          );
                        else
                          return (
                            <>
                              <br />
                              <span>{`${propis}, `}</span>
                            </>
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
                <h4
                  className={`${styles.vrstaPresude} ${
                    similarCase.vrstaPresude === "Oslobađajuća"
                      ? styles.oslobadjajuca
                      : ""
                  } ${
                    similarCase.vrstaPresude === "Osuđujuća"
                      ? styles.osudjujuca
                      : ""
                  } ${
                    similarCase.vrstaPresude === "Uslovna" ? styles.uslovna : ""
                  }`}
                >
                  {similarCase.vrstaPresude}
                </h4>
              </div>
            ))}
          </div>
        </>
      )}
    </>
  );
};
export default SimilarCasesComponent;
