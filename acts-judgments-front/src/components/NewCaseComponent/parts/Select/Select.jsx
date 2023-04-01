import { useEffect, useRef, useState } from "react";
import styles from "./Select.module.css";
import arrowTopSvg from "../../../../assets/svgs/arrow_top.svg";
import { forwardRef } from "react";

const Select = forwardRef(
  ({ options, label, width, triggerFunction = null }, ref) => {
    const [selectedOption, setSelectedOption] = useState("");
    const [isExpanded, setIsExpanded] = useState(false);
    const selectDivRef = useRef();

    useEffect(() => {
      const handleClickOutside = (event) => {
        if (
          selectDivRef.current &&
          !selectDivRef.current.contains(event.target)
        ) {
          setIsExpanded(false);
        }
      };
      document.addEventListener("click", handleClickOutside, true);
      return () => {
        document.removeEventListener("click", handleClickOutside, true);
      };
    }, [selectDivRef]);

    return (
      <div
        className={styles.selectDiv}
        ref={selectDivRef}
        style={{ width: width }}
      >
        <div
          className={styles.labelAndArrowWrapper}
          onClick={() => setIsExpanded(!isExpanded)}
        >
          <div className={styles.labelWrapper}>
            <p
              className={`${styles.label} ${
                selectedOption !== "" || isExpanded
                  ? styles.smallLabel
                  : styles.bigLabel
              }`}
            >
              {label}
            </p>
            <p ref={ref} className={styles.selectedValue}>
              {selectedOption}
            </p>
          </div>
          <img
            src={arrowTopSvg}
            className={`${styles.arrowTop} ${
              isExpanded ? styles.rotateArrowTop : ""
            }`}
          />
        </div>
        {isExpanded && (
          <div className={styles.dropdownList}>
            {options.map((option, id) => (
              <div
                onClick={() => {
                  if (triggerFunction) triggerFunction(option);
                  setSelectedOption(option);
                  setIsExpanded(!isExpanded);
                }}
                key={id}
                className={`${styles.option} ${
                  option === selectedOption ? styles.selectedOption : null
                }`}
              >
                {option}
              </div>
            ))}
          </div>
        )}
      </div>
    );
  }
);
export default Select;
