import { Fragment } from "react";
import { getDateFromString } from "../../../../utils/functions";
import styles from "./Meta.module.css";

const Meta = ({ meta }) => {
  return (
    <>
      <div className={styles.meta} id="meta">
        <p className={styles.courtName}>
          {meta.children[1].children[0].attributes.showAs}
        </p>
        {meta.children[0].children[0].children
          .map((frbrWorkChild, index) => (
            <Fragment key={index}>
              {frbrWorkChild.name === "FRBRnumber" && (
                <p className={styles.judgmentNumber}>
                  {frbrWorkChild.attributes.value
                    .replace("-", " ")
                    .replace("-", "/20")
                    .toUpperCase()}
                </p>
              )}
              {frbrWorkChild.name === "FRBRdate" && (
                <p className={styles.judgmentDate}>
                  {getDateFromString(frbrWorkChild.attributes.date)}
                </p>
              )}
            </Fragment>
          ))
          .reverse()}
      </div>
      <br />
      <br />
      <br />
      <br />
      {meta.children[0].children[0].children
        .map((frbrWorkChild, index) => (
          <Fragment key={index}>
            {frbrWorkChild.name === "FRBRnumber" && (
              <p className={styles.judgmentNumberRight}>
                {frbrWorkChild.attributes.value
                  .toUpperCase()
                  .replace("-", ".br. ")
                  .replace("-", "/")}
              </p>
            )}
          </Fragment>
        ))
        .reverse()}
    </>
  );
};
export default Meta;
