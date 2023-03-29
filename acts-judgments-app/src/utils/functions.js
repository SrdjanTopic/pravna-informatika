export function getFinalHref(href) {
  let finalHref = href;
  finalHref = finalHref.replace("/cnr@/!main.xml", "");
  finalHref = finalHref.replace("/cnr@/main.xml", "");
  let lIndex = finalHref.lastIndexOf("/");
  finalHref =
    finalHref.substring(0, lIndex) + "_" + finalHref.substring(lIndex + 1);
  return finalHref;
}

export function getJudgmentString(loadedString) {
  let adjustedStringXml = loadedString;
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<ref ",
    "</p><ref "
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</ref>",
    "</ref><p>"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<date ",
    "</p><date "
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</date> ",
    "</date><p>"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<party id",
    "</p><party id"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</party> ",
    "</party><p>"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</party>,",
    "</party><p>"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<judge id",
    "</p><judge id"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</judge> ",
    "</judge><p>"
  );
  return adjustedStringXml;
}

export function getLawString(loadedString) {
  let adjustedStringXml = loadedString;
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<ref ",
    "</p><ref "
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</ref>",
    "</ref><p>"
  );
  return adjustedStringXml;
}

export function getDateFromString(stringDate) {
  let date = new Date(Date.parse(stringDate))
  return date.toLocaleDateString('sr-ME', { year: "numeric", month: 'long', day: "2-digit" })
}

export function includesWords(string) {
  if (string.includes("Što je:")) return "Što je:"
  if (string.includes("Š t o j e")) return "Š t o j e"
  if (string.includes("izriče") && !string.includes(" izriče ")) return "izriče"
  if (string.includes("i z r i č e")) return "i z r i č e"
  return null
}