package com.springboot.project.service.judgment;

import com.springboot.project.dto.CaseDescriptionFromRegexDto;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.util.PDFTextStripper;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class JudgmentService {
    public CaseDescriptionFromRegexDto getJudgmentDescriptionWithRegex(String judgmentName) throws IOException {
        File pdfFile = ResourceUtils.getFile("classpath:judgmentPdfs/" + judgmentName + ".pdf");
        PDDocument document = PDDocument.load(pdfFile);
        //Instantiate PDFTextStripper class
        PDFTextStripper pdfStripper = new PDFTextStripper();
        //Retrieving text from PDF document
        String pdfcontent = pdfStripper.getText(document);
        if(pdfcontent.contains("Obrazloženje"))
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("Obrazloženje"));
        if(pdfcontent.contains("O b r a z l o ž e nj e"))
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("O b r a z l o ž e nj e"));
        if(pdfcontent.contains("O b r a z l o ž e n j e"))
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("O b r a z l o ž e n j e"));
//        System.out.println(pdfcontent);
        //Closing the document
        document.close();

        CaseDescriptionFromRegexDto caseDescription = new CaseDescriptionFromRegexDto();

        System.out.print("_____________\n");

        Pattern poslovniBrojPattern = Pattern.compile("(K [0-9]+\\/[0-9][0-9][0-9][0-9])", Pattern.DOTALL);
        Matcher matcher = poslovniBrojPattern.matcher(pdfcontent);
        System.out.print("Poslovni broj: ");
        if (matcher.find()) {
            System.out.print(matcher.group(0) + "\n");
            caseDescription.setPoslovniBroj(matcher.group(0).trim());
        }
        else System.out.print("---\n");

        Pattern sudPattern = Pattern.compile("(Osnovni Sud u [A-ZŠĐČĆŽ][a-zšđžćč]+ ?[A-ZŠĐČĆŽ]?[a-zšđžćč]*)", Pattern.DOTALL);
        matcher = sudPattern.matcher(pdfcontent);
        System.out.print("Sud: ");
        if (matcher.find()) {
            System.out.print(matcher.group(0) + "\n");
            caseDescription.setSud(matcher.group(0).trim());
        }
        else System.out.print("---\n");

        Pattern vrstaPresudePattern = Pattern.compile("(USLOVNU OSUDU)|(O S U Đ U J E)|(OSUĐUJE)|(OSLOBAĐA SE OD OPTUŽBE)|(OPTUŽBA SE ODBIJA)", Pattern.DOTALL);
        matcher = vrstaPresudePattern.matcher(pdfcontent);
        System.out.print("Vrsta presude: ");
        if (matcher.find()) {
            if(matcher.group(0).equals("USLOVNU OSUDU"))
            {
                System.out.print("uslovna" + "\n");
                caseDescription.setVrstaPresude("uslovna");
            }
            if(matcher.group(0).equals("O S U Đ U J E")|matcher.group(0).equals("OSUĐUJE"))
            {
                System.out.print("osudjujuca" + "\n");
                caseDescription.setVrstaPresude("osudjujuca");
            }
            if(matcher.group(0).equals("OSLOBAĐA SE OD OPTUŽBE")|matcher.group(0).equals("OPTUŽBA SE ODBIJA"))
            {
                System.out.print("oslobadjajuca" + "\n");
                caseDescription.setVrstaPresude("oslobadjajuca");
            }
        }
        else System.out.print("---\n");

        Pattern sudijaPattern = Pattern.compile("(sudija|sudiji)(([a-z]* )*)(([A-ZŠĐČĆŽ][a-zšđžćč]+[ ,])+)", Pattern.DOTALL);
        matcher = sudijaPattern.matcher(pdfcontent);
        System.out.print("Sudija: ");
        if (matcher.find()) {
            System.out.print(matcher.group(4).substring(0, matcher.group(4).length()-1) + "\n");
            caseDescription.setSudija(matcher.group(4).substring(0, matcher.group(4).length()-1).trim());
        }
        else System.out.print("---\n");

        Pattern tuzilacPattern = Pattern.compile("(Osnovn[a-z \\n\\r]*državno[a-z \\n\\r]*tužil[a-zš \\n\\r]*|ODT-a[ \\n\\r]|ODT-u[ \\n\\r]|ODT[ \\n\\r])([a-z]+[ \\n\\r])*(([A-ZŠĐČĆŽ][a-zšđžćč]{3,}[ \\n\\r])+)", Pattern.DOTALL);
        matcher = tuzilacPattern.matcher(pdfcontent);
        System.out.print("Tuzilac: ");
        if (matcher.find()) {
            System.out.print("Osnovno drzavno tuzilastvo " + matcher.group(3) + "\n");
            caseDescription.setTuzilac("Osnovno drzavno tuzilastvo " + matcher.group(3).trim());
        }
        else System.out.print("---\n");

        Pattern okrivljeniPattern = Pattern.compile("(optuženog |optužene |okrivljenog |okrivljene )(([A-ZŠĐČĆŽ]. ?){2,})", Pattern.DOTALL);
        matcher = okrivljeniPattern.matcher(pdfcontent);
        System.out.print("Okrivljeni: ");
        if (matcher.find()) {
            System.out.print(matcher.group(2) + "\n");
            caseDescription.setOkrivljeni(matcher.group(2).trim());
        }
        else System.out.print("---\n");

        String osudjivanStr = pdfcontent;
        int idxfrom = 0;
        int idxto = osudjivanStr.length();
        if(osudjivanStr.contains("P R E S U D U"))
            idxfrom = osudjivanStr.indexOf("P R E S U D U") + 1;
        if(osudjivanStr.contains("PRESUDU"))
            idxfrom = osudjivanStr.indexOf("PRESUDU") + 1;
        osudjivanStr = osudjivanStr.toLowerCase();
        if(osudjivanStr.contains("k r i v j e"))
            idxto = osudjivanStr.indexOf("k r i v j e");
        if(osudjivanStr.contains("kriv je"))
            idxto = osudjivanStr.indexOf("kriv je");
        osudjivanStr = osudjivanStr.substring(idxfrom, idxto);
        Pattern osudjivanPattern = Pattern.compile("(neosuđivan|neosuđivana|neosudjivan|neosudjivana)", Pattern.DOTALL);
        matcher = osudjivanPattern.matcher(osudjivanStr);
        System.out.print("Osudjivan: ");
        if (matcher.find()) {
            System.out.print("ne" + "\n");
            caseDescription.setOsudjivan("ne");
        }
        else {
            System.out.print("da" + "\n");
            caseDescription.setOsudjivan("da");
        }

        Pattern imovnoStanjePattern = Pattern.compile("([a-zšđžćč]+)[ \\n\\r]+imovnog[ \\n\\r]+stanja", Pattern.DOTALL);
        matcher = imovnoStanjePattern.matcher(pdfcontent);
        System.out.print("Imovno stanje: ");
        if (matcher.find()) {
            if(matcher.group(1).contains("loše")) {
                System.out.print("lose" + "\n");
                caseDescription.setImovnoStanje("lose");
            }
            if(matcher.group(1).contains("dobro")) {
                System.out.print("dobro" + "\n");
                caseDescription.setImovnoStanje("dobro");
            }
            if(matcher.group(1).contains("srednje")) {
                System.out.print("srednje" + "\n");
                caseDescription.setImovnoStanje("srednje");
            }
        }
        else System.out.print("---\n");

        Pattern krivicnoDjeloPattern = Pattern.compile("(javnog[ \\n\\r]saobraćaja[ \\n\\r]iz)(([ \\n\\r]?([1-9a-zšđžćč.]+)[ \\n\\r]?)+)", Pattern.DOTALL);
        matcher = krivicnoDjeloPattern.matcher(pdfcontent);
        System.out.print("Krivicno djelo: ");
        if (matcher.find()) {
            String resultStr = matcher.group(2).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim()+ "KZ";
            resultStr = resultStr.replaceAll("([0-9]+)\\.","$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)","$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])","$1 $2");
            resultStr = resultStr.replace("  ", " ");
            System.out.print(resultStr + "\n");
            caseDescription.setKrivicnoDjelo(resultStr);
        }
        else System.out.print("---\n");


        System.out.print("Broj osudjivanja: ");
        if(caseDescription.getOsudjivan().equals("ne")){
            caseDescription.setBrojOsudjivanja(0);
            System.out.print("0" + "\n");
        }
        else{
            String brOsudjivanjaStr = pdfcontent;
            idxfrom = 0;
            idxto = brOsudjivanjaStr.length();
            if(brOsudjivanjaStr.contains("P R E S U D U"))
                idxfrom = brOsudjivanjaStr.indexOf("P R E S U D U") + 1;
            if(brOsudjivanjaStr.contains("PRESUDU"))
                idxfrom = brOsudjivanjaStr.indexOf("PRESUDU") + 1;
            brOsudjivanjaStr = brOsudjivanjaStr.toLowerCase();
            if(brOsudjivanjaStr.contains("k r i v j e"))
                idxto = brOsudjivanjaStr.indexOf("k r i v j e");
            if(brOsudjivanjaStr.contains("kriv je"))
                idxto = brOsudjivanjaStr.indexOf("kriv je");
            brOsudjivanjaStr = brOsudjivanjaStr.substring(idxfrom, idxto);
            Pattern brojOsudjivanjaPattern = Pattern.compile("([0-9]+\\/[0-9]+)", Pattern.DOTALL|Pattern.MULTILINE);
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
        if(propisiString.contains("USLOVNU OSUDU"))
            idxto = propisiString.indexOf("USLOVNU OSUDU");
        if(propisiString.contains("O S U Đ U J E"))
            idxto = propisiString.indexOf("O S U Đ U J E");
        if(propisiString.contains("OSUĐUJE"))
            idxto = propisiString.indexOf("OSUĐUJE");
        if(propisiString.contains("OSLOBAĐA SE OD OPTUŽBE"))
            idxto = propisiString.indexOf("OSLOBAĐA SE OD OPTUŽBE");
        if(propisiString.contains("OPTUŽBA SE ODBIJA"))
            idxto = propisiString.indexOf("OPTUŽBA SE ODBIJA");
        propisiString = propisiString.toLowerCase();
        if(propisiString.contains("k r i v j e"))
            idxfrom = propisiString.indexOf("k r i v j e")+1;
        if(propisiString.contains("kriv je"))
            idxfrom = propisiString.indexOf("kriv je")+1;
        if(idxfrom == 0) idxfrom = propisiString.indexOf("obrazloženje")+1;
        propisiString = pdfcontent.substring(idxfrom, idxto);

        System.out.println("Prekrseni propisi: ");
        Pattern prekrseniPropisiPattern = Pattern.compile("((odredb[a-z]+)|(propisa iz))(([ \\n\\r]?([0-9a-zšđžćč.,]+)[ \\n\\r]?)+)", Pattern.DOTALL|Pattern.MULTILINE);
        matcher = prekrseniPropisiPattern.matcher(propisiString);
        if (matcher.find()) {
            String resultStr = matcher.group(4).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim();
            resultStr = resultStr.replaceAll("([0-9]+)\\.","$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)","$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])","$1 $2");
            resultStr = resultStr.replace("  ", " ");

            List<String> prekrseniPropisi = new ArrayList<>();
            String[] propisiArr = resultStr.split(", ");
            if(propisiArr.length>1){
                for(int i=0; i<propisiArr.length; i++){
                    if(i!=propisiArr.length-1)
                        prekrseniPropisi.add(propisiArr[i] + " ZOBSNP");
                    else{
                        if(propisiArr[i].split(" i ").length==1){
                            prekrseniPropisi.add(propisiArr[i].split(" i ")[0] + " ZOBSNP");
                        }
                        else{
                            prekrseniPropisi.add(propisiArr[i].split(" i ")[0] + " ZOBSNP");
                            prekrseniPropisi.add(propisiArr[i].split(" i ")[1] + " ZOBSNP");
                        }
                    }
                }
            }
            else{
                if(propisiArr[0].split(" i ").length==1){
                    prekrseniPropisi.add(propisiArr[0].split(" i ")[0] + " ZOBSNP");
                }
                else{
                    prekrseniPropisi.add(propisiArr[0].split(" i ")[0] + " ZOBSNP");
                    prekrseniPropisi.add(propisiArr[0].split(" i ")[1] + " ZOBSNP");
                }
            }
            prekrseniPropisi.forEach(System.out::println);
            caseDescription.setPrekrseniPropisi(prekrseniPropisi);
        }
        else System.out.print("---\n");

        System.out.println("Primijenjeni propisi: ");
        Pattern primijenjeniPropisiKZPattern = Pattern.compile("(primjenom|na osnovu) [a-zšđžćčA-ZŠĐČĆŽ ,\\n\\r]*((čl[a-z.]*)(([ \\n\\r]?([0-9a-zšđžćč.,]+)[ \\n\\r]?)+))K", Pattern.DOTALL|Pattern.MULTILINE);
        matcher = primijenjeniPropisiKZPattern.matcher(propisiString);
        if (matcher.find()) {
            String resultStr = matcher.group(2).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim();
            resultStr = resultStr.replaceAll("([0-9]+)\\.","$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)","$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])","$1 $2");
            resultStr = resultStr.replace("  ", " ");
            resultStr = resultStr.replaceAll(",([0-9]+)", ", $1");
            resultStr = resultStr.replaceAll("([a-z,])( [0-9]+)", "$1 čl.$2");

            List<String> primijenjeniPropisi = new ArrayList<>();
            String[] propisiArr = resultStr.split(", ");
            if(propisiArr.length>1){
                for(int i=0; i<propisiArr.length; i++){
                    if(i!=propisiArr.length-1)
                        primijenjeniPropisi.add((propisiArr[i] + " KZ").replace("  ", " "));
                    else{
                        if(propisiArr[i].split(" i ").length==1){
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                        }
                        else{
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[1].trim() + " KZ").replace("  ", " "));

                        }
                    }
                }
            }
            else{
                if(propisiArr[0].split(" i ").length==1){
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                }
                else{
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " KZ").replace("  ", " "));
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[1].trim() + " KZ").replace("  ", " "));
                }
            }

            caseDescription.setPrimijenjeniPropisi(primijenjeniPropisi);
        }
        else System.out.print("---\n");

        Pattern primijenjeniPropisiZKPPattern = Pattern.compile("(čl[a-z0-9 ,\\.\\n\\r]*)(Zakonika|ZKP)", Pattern.DOTALL|Pattern.MULTILINE);
        matcher = primijenjeniPropisiZKPPattern.matcher(propisiString);
        if (matcher.find()) {
            String resultStr = matcher.group(1).replace("\n", " ").replace("\r", " ").replace("  ", " ").trim();
            resultStr = resultStr.replaceAll("([0-9]+)\\.","$1 ");
            resultStr = resultStr.replaceAll("([a-zšđžćč]+)(\\.)(.)","$1$2 $3");
            resultStr = resultStr.replaceAll("([0-9]+)([a-zA-z])","$1 $2");
            resultStr = resultStr.replace("  ", " ");
            resultStr = resultStr.replaceAll(",([0-9]+)", ", $1");
            resultStr = resultStr.replaceAll("([a-z,])( [0-9]+)", "$1 čl.$2");

            List<String> primijenjeniPropisi = new ArrayList<>();
            String[] propisiArr = resultStr.split(", ");
            if(propisiArr.length>1){
                for(int i=0; i<propisiArr.length; i++){
                    if(i!=propisiArr.length-1)
                        primijenjeniPropisi.add((propisiArr[i] + " ZKP").replace("  ", " "));
                    else{
                        if(propisiArr[i].split(" i ").length==1){
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                        }
                        else{
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                            primijenjeniPropisi.add((propisiArr[i].split(" i ")[1].trim() + " ZKP").replace("  ", " "));

                        }
                    }
                }
            }
            else{
                if(propisiArr[0].split(" i ").length==1){
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                }
                else{
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[0].trim() + " ZKP").replace("  ", " "));
                    primijenjeniPropisi.add((propisiArr[0].split(" i ")[1].trim() + " ZKP").replace("  ", " "));
                }
            }
            List<String> finalPropisi =new ArrayList<>(caseDescription.getPrimijenjeniPropisi());
            finalPropisi.addAll(primijenjeniPropisi);
            caseDescription.setPrekrseniPropisi(finalPropisi);

            finalPropisi.forEach(System.out::println);
        }
        else System.out.print("---\n");

        System.out.print("Tjelesne povrede: ");
        Pattern vrstePovredePattern = Pattern.compile("(lak|lak|lak|tešk|tešk|tešk)[a-z][ \\n\\r,]tjelesn", Pattern.DOTALL|Pattern.MULTILINE);
        matcher = vrstePovredePattern.matcher(propisiString);
        if (matcher.find()) {
            if(matcher.group(1).equals("lak")){
                System.out.println("lake");
                caseDescription.setTjelesnePovrede("lake");
            }
            else{
                System.out.println("teske");
                caseDescription.setTjelesnePovrede("teske");
            }
        }
        else System.out.print("---\n");

        System.out.print("_____________\n");

        return caseDescription;
    }
}
