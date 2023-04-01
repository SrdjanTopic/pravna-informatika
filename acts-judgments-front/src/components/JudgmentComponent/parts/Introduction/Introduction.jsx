import { Fragment } from "react";
import Ref from "../../../shared/Ref";
import styles from "./Introduction.module.css";

const Introduction = ({ introduction }) => {
  return (
    <div className={styles.introduction} id="introduction">
      {introduction.children.map((introductionChild, id) => (
        <Fragment key={id}>
          {introductionChild.name === "p" &&
            introductionChild.attributes.style && (
              <>
                <br />
                <br />
                <br />
                <p
                  className={styles.centeredText}
                >{`${introductionChild.value} `}</p>
                <br />
                <br />
                <br />
              </>
            )}
          {introductionChild.name !== "ref" &&
            !introductionChild.attributes.style && (
              <p>{`${introductionChild.value} `}</p>
            )}
          {introductionChild.name === "ref" && (
            <Ref refObject={introductionChild} />
          )}
        </Fragment>
      ))}
    </div>
  );
};
export default Introduction;
