import { Fragment } from "react";
import styles from "./JudgmentComponent.module.css";
import Introduction from "./parts/Introduction/Introduction";
import Background from "./parts/Background/Background";
import Decision from "./parts/Decision/Decision";
import Motivation from "./parts/Motivation/Motivation";
import Meta from "./parts/Meta/Meta";

const JudgmentComponent = ({ judgment }) => {
  return (
    <>
      <Meta meta={judgment.meta} />
      <div className={styles.judgment}>
        {judgment.judgmentBody.children.map((judgmentPart) => (
          <Fragment key={judgmentPart.name}>
            {judgmentPart.name === "introduction" && (
              <Introduction introduction={judgmentPart} />
            )}
            {judgmentPart.name === "background" && (
              <Background background={judgmentPart} />
            )}
            {judgmentPart.name === "decision" && (
              <Decision decision={judgmentPart} />
            )}
            {judgmentPart.name === "motivation" && (
              <Motivation motivation={judgmentPart} />
            )}
          </Fragment>
        ))}
      </div>
    </>
  );
};
export default JudgmentComponent;
