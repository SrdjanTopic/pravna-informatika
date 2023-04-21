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
    "</date>",
    "</date><p>"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<party id",
    "</p><party id"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</party> ",
    "</party><p> "
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</party>,",
    "</party>,<p>"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<judge id",
    "</p><judge id"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</judge>,",
    "</judge>,<p> "
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</judge> ",
    "</judge><p> "
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "<lawyer id",
    "</p><lawyer id"
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</lawyer> ",
    "</lawyer><p> "
  );
  adjustedStringXml = adjustedStringXml.replaceAll(
    "</lawyer>,",
    "</lawyer>,<p> "
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

export function getCaseObjectFromString(caseString) {
  const caseSplit = caseString.split(";");
  const caseObject = {
    sud: caseSplit[1],
    poslovniBroj: caseSplit[2],
    datum: caseSplit[3],
    sudija: caseSplit[4],
    tuzilac: caseSplit[5],
    okrivljeni: caseSplit[6],
    krivicnoDjelo: caseSplit[7],
    prekrseniPropisi: caseSplit[8].slice(0, -1).split(","),
    primijenjeniPropisi: caseSplit[9].slice(0, -1).split(","),
    vrstaPresude: caseSplit[10],
    ugrozenSaobracaj: caseSplit[11],
    radnjeBezPrethodnogUvjerenja: caseSplit[12].slice(0, -1).split(","),
    radnjeBezPilagodjavanjaBrzine: caseSplit[13].slice(0, -1).split(","),
    nedozvoljenoPolukreuznoOkretanje: caseSplit[14] === 'true' ? "Da" : "Ne",
    prekrsenaPravilaNaRaskrsnici: caseSplit[15] === 'true' ? "Da" : "Ne",
    prekrsenoKretanjeDesnomStranom: caseSplit[16] === 'true' ? "Da" : "Ne",
    osudjivan: caseSplit[17] ? "Da" : "Ne",
    brOsudjivanja: caseSplit[18],
    imovnoStanje: caseSplit[19],
    kazna:caseSplit[20],
    slicnost: parseFloat(caseSplit[21].slice(0, 4))
  }
  return caseObject;
}