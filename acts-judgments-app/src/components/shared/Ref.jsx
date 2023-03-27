import { useEffect, useState } from "react";

const Ref = ({ refObject }) => {
  const [finalRef, setFinalRef] = useState("");
  useEffect(() => {
    setFinalRef(getFinalHref(refObject.attributes.href));
  }, []);

  function getFinalHref(href) {
    let finalHref = href;
    finalHref = finalHref.replace("/cnr@/!main.xml", "");
    let lIndex = finalHref.lastIndexOf("/");
    finalHref =
      finalHref.substring(0, lIndex) + "_" + finalHref.substring(lIndex + 1);
    return finalHref;
  }
  return (
    <p>
      <a href={finalRef}>{`${refObject.value}`}</a>
      {` `}
    </p>
  );
};
export default Ref;
