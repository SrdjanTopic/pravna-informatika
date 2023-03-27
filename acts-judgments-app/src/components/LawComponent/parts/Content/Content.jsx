import { Fragment } from "react";
import Ref from "../../../shared/Ref";
import styles from "./Content.module.css";

const Content = ({ content, number }) => {
  return (
    <Fragment>
      <div className={styles.contentWrapper}>
        <p className={styles.contentNumber}>({number})</p>
        <div className={styles.clauseWrapper}>
          {content.children.map((contentChild, index) => (
            <Fragment key={index}>
              {contentChild.name === "p" && <p>{`${contentChild.value} `}</p>}
              {contentChild.name === "ref" && <Ref refObject={contentChild} />}
            </Fragment>
          ))}
        </div>
      </div>
    </Fragment>
  );
};
export default Content;
