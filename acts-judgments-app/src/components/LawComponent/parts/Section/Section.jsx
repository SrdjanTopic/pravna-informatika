import { Fragment } from "react";
import Article from "../Article/Article";
import styles from "./Section.module.css";

const Section = ({ section }) => {
  return (
    <div key={section.attributes.eId} className={styles.section}>
      {section.children.map((sectionChild, index) => (
        <Fragment key={`${section.attributes.eId}${index}`}>
          {sectionChild.name == "num" && <h3>{`${sectionChild.value} `}</h3>}
          {sectionChild.name == "heading" && <h3>{sectionChild.value}</h3>}
          {sectionChild.name == "subheading" && (
            <>
              {section.children[index - 1].name !== "article" && <br />}
              <h3>{sectionChild.value}</h3>
            </>
          )}
          {sectionChild.name == "article" && <Article article={sectionChild} />}
        </Fragment>
      ))}
    </div>
  );
};
export default Section;
