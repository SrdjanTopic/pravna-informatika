import { useEffect, useState } from "react";
import { getFinalHref } from "../../utils/functions";

const Ref = ({ refObject }) => {
  const [finalRef, setFinalRef] = useState("");
  useEffect(() => {
    setFinalRef(getFinalHref(refObject.attributes.href));
  }, []);

  return (
    <p>
      <a href={finalRef}>{`${refObject.value}`}</a>
      {` `}
    </p>
  );
};
export default Ref;
