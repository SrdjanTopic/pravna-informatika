import { Fragment } from "react";
import Content from "../Content/Content";
import styles from "./Paragraph.module.css";

const Paragraph = ({ paragraph, number }) => {
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
            <Content content={paragraphChild} number={number} />
          )}
        </Fragment>
      ))}
    </div>
  );
};
export default Paragraph;
