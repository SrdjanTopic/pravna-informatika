import { Fragment } from "react";
import Ref from "../../../shared/Ref";
import styles from "./Background.module.css";

const Background = ({ background }) => {
  return (
    <div className={styles.background} id="background">
      {background.children.map((backgroundChild, id) => (
        <Fragment key={id}>
          {backgroundChild.name === "p" && backgroundChild.attributes.style && (
            <>
              <br />
              <br />
              <br />
              <p
                className={styles.centeredText}
              >{`${backgroundChild.value} `}</p>
              <br />
              <br />
              <br />
            </>
          )}
          {backgroundChild.name === "p" &&
            !backgroundChild.attributes.style && (
              <p>{`${backgroundChild.value} `}</p>
            )}
          {backgroundChild.name === "ref" && (
            <Ref refObject={backgroundChild} />
          )}
        </Fragment>
      ))}
    </div>
  );
};
export default Background;
