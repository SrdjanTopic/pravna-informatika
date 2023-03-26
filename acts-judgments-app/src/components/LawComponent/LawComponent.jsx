import styles from "./LawComponent.module.css";
import Chapter from "./parts/Chapter/Chapter";

const LawComponent = ({ law }) => {
  return (
    <div className={styles.act}>
      <h1 className={styles.docTitle}>
        {/* docTitle */}
        {law.preface.children[0].children[0].value}
      </h1>
      {law.body.children.map((chapter) => (
        <Chapter chapter={chapter} key={chapter.attributes.eId} />
      ))}
    </div>
  );
};
export default LawComponent;
