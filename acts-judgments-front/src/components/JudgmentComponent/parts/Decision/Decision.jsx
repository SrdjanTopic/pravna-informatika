import { Fragment } from "react";
import styles from "./Decision.module.css";
import Ref from "../../../shared/Ref";
import { includesWords } from "../../../../utils/functions";

const Decision = ({ decision }) => {
  console.log(decision);
  return (
    <div className={styles.decision} id="decision">
      {decision.children.map((decisionChild, id) => (
        <Fragment key={id}>
          {decisionChild.name === "p" && decisionChild.attributes.style && (
            <>
              <br />
              <br />
              <br />
              <p className={styles.centeredText}>{`${decisionChild.value} `}</p>
              <br />
              <br />
              <br />
            </>
          )}
          {decisionChild.name !== "ref" &&
            !decisionChild.attributes.style &&
            !includesWords(decisionChild.value) && (
              <p>{`${decisionChild.value} `}</p>
            )}
          {decisionChild.name !== "ref" &&
            !decisionChild.attributes.style &&
            includesWords(decisionChild.value) && (
              <>
                <p>{`${decisionChild.value.replace(
                  includesWords(decisionChild.value),
                  ""
                )}`}</p>
                <br />
                <p>{includesWords(decisionChild.value)}</p>
                <br />
              </>
            )}
          {decisionChild.name === "ref" && <Ref refObject={decisionChild} />}
        </Fragment>
      ))}
    </div>
  );
};
export default Decision;
