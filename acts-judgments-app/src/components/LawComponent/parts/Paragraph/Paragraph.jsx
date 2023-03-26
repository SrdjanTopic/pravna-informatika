import { Fragment } from "react";
import styles from "./Paragraph.module.css";

const Paragraph = ({ paragraph, number }) => {
  console.log(paragraph);
  return (
    <div
      key={paragraph.attributes.eId}
      id={paragraph.attributes.eId}
      className={styles.paragraph}
    >
      {paragraph.children.map((paragraphChild, index) => (
        <Fragment key={`${paragraph.attributes.eId}${index}`}>
          {paragraphChild.name === "intro" && (
            <div className={styles.paragraphWrapper}>
              <p className={styles.paragraphNumber}>({number})</p>
              <p>{paragraphChild.value}</p>
            </div>
          )}
          {paragraphChild.name === "point" && (
            <p
              className={styles.point}
            >{`${paragraphChild.children[0].value} ${paragraphChild.children[1].children[0].value}`}</p>
          )}
          {paragraphChild.name === "content" && (
            <div className={styles.paragraphWrapper}>
              <p className={styles.paragraphNumber}>({number})</p>
              <p>{paragraphChild.children[0].value}</p>
            </div>
          )}
        </Fragment>
      ))}
    </div>
  );
};
export default Paragraph;
