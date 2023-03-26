import { Fragment } from "react";
import Article from "../Article/Article";
import Section from "../Section/Section";
import styles from "./Chapter.module.css";
const Chapter = ({ chapter }) => {
  return (
    <div
      id={chapter.attributes.eId}
      key={chapter.attributes.eId}
      className={styles.chapter}
    >
      {chapter.children.map((chapterChild, index) => (
        <Fragment key={`${chapter.attributes.eId}${index}`}>
          <h2>
            {chapterChild.name == "num" &&
              (chapterChild.value.includes("GLAVA") ? (
                <>
                  {chapterChild.value}
                  <br />
                </>
              ) : (
                <>{`${chapterChild.value} `}</>
              ))}
            {chapterChild.name == "heading" && chapterChild.value}
          </h2>
          {chapterChild.name == "section" && <Section section={chapterChild} />}
          {chapterChild.name == "subheading" && (
            <>
              {chapter.children[index - 1].name !== "article" && <br />}
              <h3>{chapterChild.value}</h3>
            </>
          )}
          {chapterChild.name == "article" && <Article article={chapterChild} />}
        </Fragment>
      ))}
    </div>
  );
};
export default Chapter;
