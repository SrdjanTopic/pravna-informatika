import { forwardRef } from "react";

import styles from "./Input.module.css";

const Input = forwardRef(({ label }, ref) => {
  return (
    <div className={styles.labelWrapper}>
      <p className={styles.label}>{label}</p>
      <input type="text" ref={ref} placeholder={"."} />
    </div>
  );
});

export default Input;
