package com.springboot.project.service.judgment;

import com.springboot.project.dto.CaseDescriptionFromRegexDto;
import com.springboot.project.service.cbr.CaseDescription;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.util.PDFTextStripper;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.*;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class JudgmentService {
    public List<String> getJudgmentNames() {
        List<String> results = new ArrayList<String>();

        try {
            File[] files = ResourceUtils.getFile("classpath:judgments/").listFiles();
            assert files != null;
            for (File file : files) {
                if (file.isFile()) {
                    results.add(file.getName());
                }
            }
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
        return results;
    }

    public CaseDescriptionFromRegexDto getJudgmentDescriptionWithRegex(String judgmentName) throws IOException {
        File pdfFile = ResourceUtils.getFile("classpath:judgmentPdfs/" + judgmentName + ".pdf");
        PDDocument document = PDDocument.load(pdfFile);
        //Instantiate PDFTextStripper class
        PDFTextStripper pdfStripper = new PDFTextStripper();
        //Retrieving text from PDF document
        String pdfcontent = pdfStripper.getText(document);
        if (pdfcontent.contains("Obrazloženje"))
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("Obrazloženje"));
        if (pdfcontent.contains("O b r a z l o ž e nj e"))
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("O b r a z l o ž e nj e"));
        if (pdfcontent.contains("O b r a z l o ž e n j e"))
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("O b r a z l o ž e n j e"));

        CaseDescriptionFromRegexDto caseDescription = new CaseDescriptionFromRegexDto();

        System.out.print("_____________\n");

        Pattern poslovniBrojPattern = Pattern.compile("(K [0-9]+\\/[0-9][0-9][0-9][0-9])", Pattern.DOTALL);
        Matcher matcher = poslovniBrojPattern.matcher(pdfcontent);
        System.out.print("Poslovni broj: ");
        if (matcher.find()) {
            System.out.print(matcher.group(0) + "\n");
            caseDescription.setPoslovniBroj(matcher.group(0).trim());
        } else System.out.print("---\n");

        Pattern sudPattern = Pattern.compile("(Osnovni Sud u [A-ZŠĐČĆŽ][a-zšđžćč]+ ?[A-ZŠĐČĆŽ]?[a-zšđžćč]*)", Pattern.DOTALL);
        matcher = sudPattern.matcher(pdfcontent);
        System.out.print("Sud: ");
        if (matcher.find()) {
            System.out.print(matcher.group(0) + "\n");
            caseDescription.setSud(matcher.group(0).trim());
        } else System.out.print("---\n");

        Pattern vrstaPresudePattern = Pattern.compile("(USLOVNU OSUDU)|(O S U Đ U J E)|(OSUĐUJE)|(OSLOBAĐA SE OD OPTUŽBE)|(OPTUŽBA SE ODBIJA)", Pattern.DOTALL);
        matcher = vrstaPresudePattern.matcher(pdfcontent);
        System.out.print("Vrsta presude: ");
        if (matcher.find()) {
            if (matcher.group(0).equals("USLOVNU OSUDU")) {
                System.out.print("uslovna" + "\n");
                caseDescription.setVrstaPresude("uslovna");
            }
            if (matcher.group(0).equals("O S U Đ U J E") | matcher.group(0).equals("OSUĐUJE")) {
                System.out.print("osudjujuca" + "\n");
                caseDescription.setVrstaPresude("osudjujuca");
            }
            if (matcher.group(0).equals("OSLOBAĐA SE OD OPTUŽBE") | matcher.group(0).equals("OPTUŽBA SE ODBIJA")) {
                System.out.print("oslobadjajuca" + "\n");
                caseDescription.setVrstaPresude("oslobadjajuca");
            }
        } else System.out.print("---\n");

        Pattern sudijaPattern = Pattern.compile("(sudija|sudiji|suda)(([a-z]* )*)(([A-ZŠĐČĆŽ][a-zšđžćč]+[ ,-]*)+)", Pattern.DOTALL);
        matcher = sudijaPattern.matcher(pdfcontent);
        System.out.print("Sudija: ");
        if (matcher.find()) {
            System.out.print(matcher.group(4).substring(0, matcher.group(4).length() - 1) + "\n");
            caseDescription.setSudija(matcher.group(4).substring(0, matcher.group(4).length() - 1).trim());
        } else System.out.print("---\n");

        Pattern tuzilacPattern = Pattern.compile("(Osnovn[a-z \\n\\r]*državno[a-z \\n\\r]*tuži[a-zš \\n\\r]*|ODT-a[ \\n\\r]|ODT-u[ \\n\\r]|ODT[ \\n\\r])([a-z]+[ \\n\\r])*(([A-ZŠĐČĆŽ][a-zšđžćč]{3,}[ \\n\\r])+)", Pattern.DOTALL);
        matcher = tuzilacPattern.matcher(pdfcontent);
        System.out.print("Tuzilac: ");
        if (matcher.find()) {
            System.out.print("Osnovno drzavno tuzilastvo " + matcher.group(3) + "\n");
            caseDescription.setTuzilac("Osnovno drzavno tuzilastvo " + matcher.group(3).trim());
        } else System.out.print("---\n");

        Pattern okrivljeniPattern = Pattern.compile("(optuženog |optužene |okrivljenog |okrivljene )(([A-ZŠĐČĆŽ]. ?){2,})", Pattern.DOTALL);
        matcher = okrivljeniPattern.matcher(pdfcontent);
        System.out.print("Okrivljeni: ");
        if (matcher.find()) {
            System.out.print(matcher.group(2) + "\n");
            caseDescription.setOkrivljeni(matcher.group(2).trim());
        } else System.out.print("---\n");

        String osudjivanStr = pdfcontent;
        int idxfrom = 0;
        int idxto = osudjivanStr.length();
        if (osudjivanStr.contains("P R E S U D U"))
            idxfrom = osudjivanStr.indexOf("P R E S U D U") + 1;
        if (osudjivanStr.contains("PRESUDU"))
            idxfrom = osudjivanStr.indexOf("PRESUDU") + 1;
        osudjivanStr = osudjivanStr.toLowerCase();
        if (osudjivanStr.contains("k r i v j e"))
            idxto = osudjivanStr.indexOf("k r i v j e");
        if (osudjivanStr.contains("kriv je"))
            idxto = osudjivanStr.indexOf("kriv je");
        osudjivanStr = osudjivanStr.substring(idxfrom, idxto);
        Pattern osudjivanPattern = Pattern.compile("(neosuđivan|neosuđivana|neosudjivan|neosudjivana)", Pattern.DOTALL);
        matcher = osudjivanPattern.matcher(osudjivanStr);
        System.out.print("Osudjivan: ");
        if (matcher.find()) {
            System.out.print("ne" + "\n");
            caseDescription.setOsudjivan(false);
        } else {
            System.out.print("da" + "\n");
            caseDescription.setOsudjivan(true);
        }

        Pattern imovnoStanjePattern = Pattern.compile("([a-zšđžćč]+)[ \\n\\r]+imovnog[ \\n\\r]+stanja", Pattern.DOTALL);
        matcher = imovnoStanjePattern.matcher(pdfcontent);
        System.out.print("Imovno stanje: ");
        if (matcher.find()) {
            if (matcher.group(1).contains("loše")) {
                System.out.print("lose" + "\n");
                caseDescription.setImovnoStanje("lose");
            }
            if (matcher.group(1).contains("dobro")) {
                System.out.print("dobro" + "\n");
                caseDescription.setImovnoStanje("dobro");
            }
            if (matcher.group(1).contains("srednje")) {
                System.out.print("srednje" + "\n");
                caseDescription.setImovnoStanje("srednje");
            }
        } else {
            System.out.print("lose" + "\n");
            caseDescription.setImovnoStanje("lose");
        }

        Pattern krivicnoDjeloPattern = Pattern.compile("(javnog[ \\n\\r]saobraćaja[ \\n\\r]iz)(([ \\n\\r]?([1-9a-zšđžćč.]+)[ \\n\\r]?)+)", Pattern.DOTALL);
        matcher = krivicnoDjeloPattern.matcher(pdfcontent);
        System.out.print("Krivicno djelo: ");
        if (matcher.find()) {
            String resultStr = matcher.group(2).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim() + "KZ";
            resultStr = resultStr.replaceAll("([0-9]+)\\.", "$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)", "$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])", "$1 $2");
            resultStr = resultStr.replace("  ", " ");
            System.out.print(resultStr + "\n");
            caseDescription.setKrivicnoDjelo(resultStr);
        } else System.out.print("---\n");


        System.out.print("Broj osudjivanja: ");
        if (caseDescription.getOsudjivan().equals("ne")) {
            caseDescription.setBrojOsudjivanja(0);
            System.out.print("0" + "\n");
        } else {
            String brOsudjivanjaStr = pdfcontent;
            idxfrom = 0;
            idxto = brOsudjivanjaStr.length();
            if (brOsudjivanjaStr.contains("P R E S U D U"))
                idxfrom = brOsudjivanjaStr.indexOf("P R E S U D U") + 1;
            if (brOsudjivanjaStr.contains("PRESUDU"))
                idxfrom = brOsudjivanjaStr.indexOf("PRESUDU") + 1;
            brOsudjivanjaStr = brOsudjivanjaStr.toLowerCase();
            if (brOsudjivanjaStr.contains("k r i v j e"))
                idxto = brOsudjivanjaStr.indexOf("k r i v j e");
            if (brOsudjivanjaStr.contains("kriv je"))
                idxto = brOsudjivanjaStr.indexOf("kriv je");
            brOsudjivanjaStr = brOsudjivanjaStr.substring(idxfrom, idxto);
            Pattern brojOsudjivanjaPattern = Pattern.compile("([0-9]+\\/[0-9]+)", Pattern.DOTALL | Pattern.MULTILINE);
            matcher = brojOsudjivanjaPattern.matcher(brOsudjivanjaStr);
            int count = 0;
            while (matcher.find()) count++;

            System.out.print(count + "\n");
            caseDescription.setBrojOsudjivanja(count);
        }

        String propisiString = pdfcontent;
        idxfrom = 0;
        idxto = propisiString.length();
        //(USLOVNU OSUDU)|(O S U Đ U J E)|(OSUĐUJE)|(OSLOBAĐA SE OD OPTUŽBE)|(OPTUŽBA SE ODBIJA)
        if (propisiString.contains("USLOVNU OSUDU"))
            idxto = propisiString.indexOf("USLOVNU OSUDU");
        if (propisiString.contains("O S U Đ U J E"))
            idxto = propisiString.indexOf("O S U Đ U J E");
        if (propisiString.contains("OSUĐUJE"))
            idxto = propisiString.indexOf("OSUĐUJE");
        if (propisiString.contains("OSLOBAĐA SE OD OPTUŽBE"))
            idxto = propisiString.indexOf("OSLOBAĐA SE OD OPTUŽBE");
        if (propisiString.contains("OPTUŽBA SE ODBIJA"))
            idxto = propisiString.indexOf("OPTUŽBA SE ODBIJA");
        propisiString = propisiString.toLowerCase();
        if (propisiString.contains("k r i v j e"))
            idxfrom = propisiString.indexOf("k r i v j e") + 1;
        if (propisiString.contains("kriv je"))
            idxfrom = propisiString.indexOf("kriv je") + 1;
        if (idxfrom == 0) idxfrom = propisiString.indexOf("obrazloženje") + 1;
        propisiString = pdfcontent.substring(idxfrom, idxto);

        System.out.println("Prekrseni propisi: ");
        Pattern prekrseniPropisiPattern = Pattern.compile("((odredb[a-z]+)|(propisa iz))(([ \\n\\r]?([0-9a-zšđžćč.,]+)[ \\n\\r]?)+)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = prekrseniPropisiPattern.matcher(propisiString);
        if (matcher.find()) {
            String resultStr = matcher.group(4).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim();
            resultStr = resultStr.replaceAll("([0-9]+)\\.", "$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)", "$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])", "$1 $2");
            resultStr = resultStr.replace("  ", " ");

            List<String> prekrseniPropisi = new ArrayList<>();
            String[] propisiArr = resultStr.split(", ");
            if (propisiArr.length > 1) {
                for (int i = 0; i < propisiArr.length; i++) {
                    if (i != propisiArr.length - 1)
                        prekrseniPropisi.add(propisiArr[i] + " ZOBSNP");
                    else {
                        if (propisiArr[i].split(" i ").length == 1) {
                            prekrseniPropisi.add(propisiArr[i].split(" i ")[0] + " ZOBSNP");
                        } else {
                            prekrseniPropisi.add(propisiArr[i].split(" i ")[0] + " ZOBSNP");
                            prekrseniPropisi.add(propisiArr[i].split(" i ")[1] + " ZOBSNP");
                        }
                    }
                }
            } else {
                if (propisiArr[0].split(" i ").length == 1) {
                    prekrseniPropisi.add(propisiArr[0].split(" i ")[0] + " ZOBSNP");
                } else {
                    prekrseniPropisi.add(propisiArr[0].split(" i ")[0] + " ZOBSNP");
                    prekrseniPropisi.add(propisiArr[0].split(" i ")[1] + " ZOBSNP");
                }
            }
            prekrseniPropisi.forEach(System.out::println);
            caseDescription.setPrekrseniPropisi(prekrseniPropisi);
        } else System.out.print("---\n");

        System.out.println("Primijenjeni propisi: ");
        Pattern primijenjeniPropisiKZPattern = Pattern.compile("(primjenom|na osnovu) [a-zšđžćčA-ZŠĐČĆŽ ,\\n\\r]*((čl[a-z.]*)(([ \\n\\r]*([0-9a-zšđžćč.,]+)[ \\n\\r]*)+))K", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = primijenjeniPropisiKZPattern.matcher(propisiString);
        if (matcher.find()) {
            String resultStr = matcher.group(2).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim();
            resultStr = resultStr.replaceAll("([0-9]+)\\.", "$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)", "$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])", "$1 $2");
            resultStr = resultStr.replace("  ", " ");
            resultStr = resultStr.replaceAll(",([0-9]+)", ", $1");
            resultStr = resultStr.replaceAll("([a-z,])( [0-9]+)", "$1 čl.$2");

            List<String> primijenjeniPropisi = new ArrayList<>();
            String[] propisiArr = resultStr.split(", ");
            if (propisiArr.length > 1) {
                for (int i = 0; i < propisiArr.length; i++) {
                    if (i != propisiArr.length - 1)
                        primijenjeniPropisi.add((propisiArr[i] + " KZ").replace("  ", " "));
                    else {
                        if (propisiArr[i].split(" i ").length == 1) {
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                        } else {
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[1].trim() + " KZ").replace("  ", " "));

                        }
                    }
                }
            } else {
                if (propisiArr[0].split(" i ").length == 1) {
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                } else {
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[1].trim() + " KZ").replace("  ", " "));
                }
            }

            caseDescription.setPrimijenjeniPropisi(primijenjeniPropisi);
        } else System.out.print("---\n");

        Pattern primijenjeniPropisiZKPPattern = Pattern.compile("(čl[a-z0-9 ,\\.\\n\\r]*)(Zakonika|ZKP)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = primijenjeniPropisiZKPPattern.matcher(propisiString);
        if (matcher.find()) {
            String resultStr = matcher.group(1).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim();
            resultStr = resultStr.replaceAll("([0-9]+)\\.", "$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)", "$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])", "$1 $2");
            resultStr = resultStr.replace("  ", " ");
            resultStr = resultStr.replaceAll(",([0-9]+)", ", $1");
            resultStr = resultStr.replaceAll("([a-z,])( [0-9]+)", "$1 čl.$2");

            List<String> primijenjeniPropisi = new ArrayList<>();
            String[] propisiArr = resultStr.split(", ");
            if (propisiArr.length > 1) {
                for (int i = 0; i < propisiArr.length; i++) {
                    if (i != propisiArr.length - 1)
                        primijenjeniPropisi.add((propisiArr[i] + " ZKP").replace("  ", " "));
                    else {
                        if (propisiArr[i].split(" i ").length == 1) {
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                        } else {
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[1].trim() + " ZKP").replace("  ", " "));

                        }
                    }
                }
            } else {
                if (propisiArr[0].split(" i ").length == 1) {
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                } else {
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[1].trim() + " ZKP").replace("  ", " "));
                }
            }
            List<String> finalPropisi = new ArrayList<>(caseDescription.getPrimijenjeniPropisi());
            finalPropisi.addAll(primijenjeniPropisi);
            caseDescription.setPrimijenjeniPropisi(finalPropisi);

            finalPropisi.forEach(System.out::println);
        } else System.out.print("---\n");

        System.out.print("Ugrozen saobracaj: ");
        String ugrozenSaobracaj = "";
        Pattern svjestanPattern = Pattern.compile("(pristao)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = svjestanPattern.matcher(propisiString);
        if (matcher.find()) {
            ugrozenSaobracaj = ugrozenSaobracaj.concat("svjesno");
        } else ugrozenSaobracaj = ugrozenSaobracaj.concat("nehat");

        Pattern vrstePovredePattern = Pattern.compile("(lak|tešk)[a-z][ \\n\\r,]*tjelesn", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = vrstePovredePattern.matcher(propisiString);
        if (matcher.find()) {
            if (matcher.group(1).equals("lak"))
                ugrozenSaobracaj = ugrozenSaobracaj.concat(" lake");
             else
                ugrozenSaobracaj = ugrozenSaobracaj.concat(" teske");

        } else System.out.print("---\n");
        System.out.println(ugrozenSaobracaj);
        caseDescription.setUgrozenSaobracaj(ugrozenSaobracaj);

        System.out.print("Prekrseno kretanje desnom stranom : ");
        Pattern prekrsenoKretanjeDesnomStranom = Pattern.compile("(desnom stranom kolovoza)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = prekrsenoKretanjeDesnomStranom.matcher(propisiString);
        if (matcher.find()) {
            caseDescription.setPrekrsenoKretanjeDesnomStranom(true);
            System.out.println("Da");
        } else {
            caseDescription.setPrekrsenoKretanjeDesnomStranom(false);
            System.out.println("Ne");
        }

        System.out.print("Nedozvoljeno Polukruzno Okretanje : ");
        Pattern nedozvoljenoPolukruznoOkretanje = Pattern.compile("(polukružno)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = nedozvoljenoPolukruznoOkretanje.matcher(propisiString);
        if (matcher.find()) {
            caseDescription.setNedozvoljenoPolukruznoOkretanje(true);
            System.out.println("Da");
        } else {
            caseDescription.setNedozvoljenoPolukruznoOkretanje(false);
            System.out.println("Ne");
        }

        System.out.print("Vozac se nije prdrzavao pravila na raskrsnici : ");
        Pattern prekrsenaPravilaNaRaskrsnici = Pattern.compile("(raskrsni.*) [\\n\\r ,.]*(prvenst)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = prekrsenaPravilaNaRaskrsnici.matcher(propisiString);
        if (matcher.find()) {
            caseDescription.setPrekrsenaPravilaNaRaskrsnici(true);
            System.out.println("Da");
        } else {
            caseDescription.setPrekrsenaPravilaNaRaskrsnici(false);
            System.out.println("Ne");
        }

        System.out.println("Vozac nije prilagodio brzinu: ");
        List<String> radnjeBezPrilagodjavanjaBrzine = new ArrayList<>();
        Pattern pjesackiPattern = Pattern.compile("(pješačkog prelaza)|(pješačkom prelazu)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = pjesackiPattern.matcher(propisiString);
        if (matcher.find())
            radnjeBezPrilagodjavanjaBrzine.add("pred pjesacki");
        Pattern stanjePutaPattern = Pattern.compile("(prilago.*) [\\n\\r ,.]*(stanj)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = stanjePutaPattern.matcher(propisiString);
        if (matcher.find())
            radnjeBezPrilagodjavanjaBrzine.add("prema stanju puta");

        caseDescription.setRadnjeBezPrilagodjavanjaBrzine(radnjeBezPrilagodjavanjaBrzine);
        radnjeBezPrilagodjavanjaBrzine.forEach(System.out::println);

        System.out.println("Vozac se nije uvjerio: ");
        List<String> slicnostRadnjiBezPrethodnogUvjerenja = new ArrayList<>();
        Pattern uSaobracajuPattern = Pattern.compile("(prethodno nije uvjerio)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = uSaobracajuPattern.matcher(propisiString);
        if (matcher.find())
            slicnostRadnjiBezPrethodnogUvjerenja.add("u saobracaju");
        Pattern priUkljucenjuUSaobracajPattern = Pattern.compile("(uključi)", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = priUkljucenjuUSaobracajPattern.matcher(propisiString);
        if (matcher.find())
            slicnostRadnjiBezPrethodnogUvjerenja.add("pri ukljucenju u saobracaj");

        caseDescription.setRadnjeBezPrethodnogUvjerenja(slicnostRadnjiBezPrethodnogUvjerenja);
        slicnostRadnjiBezPrethodnogUvjerenja.forEach(System.out::println);

        System.out.print("Datum: ");
        Pattern datumPattern = Pattern.compile("[\\r\\n](([0-9]{2}\\.) ([A-Za-z]{3,}) ([0-9]{4}))", Pattern.DOTALL | Pattern.MULTILINE);
        matcher = datumPattern.matcher(pdfStripper.getText(document));
        if (matcher.find()) {
            String datStr = matcher.group(1).toLowerCase();
            datStr = datStr.replace(". ", "/");
            final Matcher m = Pattern.compile("([A-Za-z]*)").matcher(datStr);
            if (m.find()) {
                if(datStr.contains("januar")) datStr = datStr.replaceAll("[A-za-z]+ ", "01/");
                if(datStr.contains("februar")) datStr = datStr.replaceAll("[A-za-z]+ ", "02/");
                if(datStr.contains("mart")) datStr = datStr.replaceAll("[A-za-z]+ ", "03/");
                if(datStr.contains("april")) datStr = datStr.replaceAll("[A-za-z]+ ", "04/");
                if(datStr.contains("maj")) datStr = datStr.replaceAll("[A-za-z]+ ", "05/");
                if(datStr.contains("jun")) datStr = datStr.replaceAll("[A-za-z]+ ", "06/");
                if(datStr.contains("jul")) datStr = datStr.replaceAll("[A-za-z]+ ", "07/");
                if(datStr.contains("avgust")) datStr = datStr.replaceAll("[A-za-z]+ ", "08/");
                if(datStr.contains("septembar")) datStr = datStr.replaceAll("[A-za-z]+ ", "09/");
                if(datStr.contains("oktobar")) datStr = datStr.replaceAll("[A-za-z]+ ", "10/");
                if(datStr.contains("novembar")) datStr = datStr.replaceAll("[A-za-z]+ ", "11/");
                if(datStr.contains("decembar")) datStr = datStr.replaceAll("[A-za-z]+ ", "12/");
            }
            caseDescription.setDatum(datStr);
            System.out.println(datStr);
        }
        else System.out.println("---");
        

        System.out.print("_____________\n");
        document.close();
        return caseDescription;
    }


    public void addAllJudgmentsFromPdfToCsv() throws FileNotFoundException {
        List<CaseDescription> cases = new ArrayList<>();
        List<String> judgmentNames = new ArrayList<>();
        getJudgmentNames().forEach(s -> judgmentNames.add(s.replace(".xml","")));

        for (int idx = 0; idx < judgmentNames.size(); idx++) {
            try {
                CaseDescriptionFromRegexDto caseDescriptionFromRegexDto = getJudgmentDescriptionWithRegex(judgmentNames.get(idx));
                CaseDescription caseDescription = new CaseDescription(idx, caseDescriptionFromRegexDto);
                cases.add(caseDescription);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        File file = new File(ResourceUtils.getFile("classpath:testPresude.csv/").toURI());
        try {
            FileWriter myWriter = new FileWriter(file);
            myWriter.write("#id;Sud;Poslovni broj;Datum;Sudija;Tuzilac;Okrivljeni;Krivicno djelo;Prekrseni propisi;Primijenjeni propisi;Vrsta presude;Ugrozen saobracaj;Radnje bez prethodnog uvjerenja;Radnje bez prilagodjavanja brzine;Nedozvoljeno polukruzno okretanje;Prekrsena pravila na raskrsnici;;Prekrseno kretanje desnom stranom;Osudjivan;#Broj osudjivanja;Imovno stanje\n");
            cases.forEach(caseDescription -> {
                try {
                    myWriter.write(caseDescription.toString() + "\n");
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            });
            myWriter.close();
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    public CaseDescription addJudgmentToCsv(CaseDescriptionFromRegexDto caseDescriptionToAdd) {
        List<CaseDescription> cases = new ArrayList<>();
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(Objects.requireNonNull(JudgmentService.class.getResourceAsStream("/testPresude.csv"))));

            String line = "";
            while ((line = br.readLine()) != null) {
                if (line.startsWith("#") || (line.length() == 0))
                    continue;
                String[] values = line.split(";");

                CaseDescription caseDescription = new CaseDescription();
                caseDescription.setId(Integer.parseInt(values[0]));
                caseDescription.setSud(values[1]);
                caseDescription.setPoslovniBroj(values[2]);
                caseDescription.setDatum(values[3]);
                caseDescription.setSudija(values[4]);
                caseDescription.setTuzilac(values[5]);
                caseDescription.setOkrivljeni(values[6]);
                caseDescription.setKrivicnoDjelo(values[7]);
                caseDescription.setPrekrseniPropisi(Arrays.asList(values[8].split(",")));
                caseDescription.setPrimijenjeniPropisi(Arrays.asList(values[9].split(",")));
                caseDescription.setVrstaPresude(values[10]);

                caseDescription.setUgrozenSaobracaj(values[11]);
                caseDescription.setRadnjeBezPrethodnogUvjerenja(Arrays.asList(values[12].split(",")));
                caseDescription.setRadnjeBezPrilagodjavanjaBrzine(Arrays.asList(values[13].split(",")));
                caseDescription.setNedozvoljenoPolukruznoOkretanje(values[14].equals("da"));
                caseDescription.setPrekrsenaPravilaNaRaskrsnici(values[15].equals("da"));
                caseDescription.setPrekrsenoKretanjeDesnomStranom(values[16].equals("da"));
                caseDescription.setOsudjivan(values[17].equals("da"));
                caseDescription.setBrojOsudjivanja(Integer.parseInt(values[18]));
                caseDescription.setImovnoStanje(values[19]);

                cases.add(caseDescription);
            }
            br.close();
            if(caseDescriptionToAdd!=null)
                cases.add(new CaseDescription(cases.get(cases.size()-1).getId()+1, caseDescriptionToAdd));

            File file = new File(ResourceUtils.getFile("classpath:testPresude.csv/").toURI());
            try {
                FileWriter myWriter = new FileWriter(file);
                myWriter.write("#id;Sud;Poslovni broj;Datum;Sudija;Tuzilac;Okrivljeni;Krivicno djelo;Prekrseni propisi;Primijenjeni propisi;Vrsta presude;Ugrozen saobracaj;Radnje bez prethodnog uvjerenja;Radnje bez prilagodjavanja brzine;Nedozvoljeno polukruzno okretanje;Prekrsena pravila na raskrsnici;;Prekrseno kretanje desnom stranom;Osudjivan;#Broj osudjivanja;Imovno stanje\n");
                cases.forEach(caseDescription -> {
                    try {
                        myWriter.write(caseDescription.toString() + "\n");
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                });
                myWriter.close();
            } catch (IOException e) {
                System.out.println("An error occurred.");
                e.printStackTrace();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        if(caseDescriptionToAdd!=null)
            return new CaseDescription(cases.get(cases.size()-1).getId()+1, caseDescriptionToAdd);
        else return null;
    }
}
