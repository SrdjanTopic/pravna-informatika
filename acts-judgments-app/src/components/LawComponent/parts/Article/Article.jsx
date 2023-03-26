import { Fragment } from "react";
import Paragraph from "../Paragraph/Paragraph";
import styles from "./Article.module.css";

const Article = ({ article }) => {
  return (
    <div id={article.attributes.eId} className={styles.article}>
      {article.children.map((articleChild, index) => (
        <Fragment key={`${article.attributes.eId}${index}`}>
          {articleChild.name == "num" && <h3>{articleChild.value}</h3>}
          {articleChild.name == "paragraph" && (
            <>
              <Paragraph
                key={articleChild.attributes.eId}
                paragraph={articleChild}
                number={index}
              />
            </>
          )}
        </Fragment>
      ))}
    </div>
  );
};
export default Article;
