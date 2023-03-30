import { Fragment } from "react";
import Ref from "../../../shared/Ref";
import styles from "./Motivation.module.css";

const Motivation = ({ motivation }) => {
  return (
    <div className={styles.motivation} id="motivation">
      {motivation.children.map((motivationChild, id) => (
        <Fragment key={id}>
          {motivationChild.name === "p" && motivationChild.attributes.style && (
            <>
              <br />
              <br />
              <br />
              <p
                className={styles.centeredText}
              >{`${motivationChild.value} `}</p>
              <br />
              <br />
              <br />
            </>
          )}
          {motivationChild.value &&
            motivationChild.name === "p" &&
            !motivationChild.attributes.style &&
            motivation.children[id - 1]?.name === "p" &&
            motivation.children[id + 1]?.name !== "p" && (
              <>
                <br />
                <p>{`${motivationChild.value} `}</p>
              </>
            )}
          {motivationChild.value &&
            motivationChild.name === "p" &&
            !motivationChild.attributes.style &&
            motivation.children[id + 1]?.name === "p" &&
            motivation.children[id - 1]?.name !== "p" && (
              <>
                <p>{`${motivationChild.value} `}</p>
                <br />
              </>
            )}
          {motivationChild.value &&
            motivationChild.name === "p" &&
            !motivationChild.attributes.style &&
            motivation.children[id - 1]?.name === "p" &&
            motivation.children[id + 1]?.name === "p" && (
              <>
                <br />
                <p>{`${motivationChild.value} `}</p>
                <br />
              </>
            )}
          {motivationChild.name === "ref" && (
            <Ref refObject={motivationChild} />
          )}
        </Fragment>
      ))}
    </div>
  );
};
export default Motivation;
