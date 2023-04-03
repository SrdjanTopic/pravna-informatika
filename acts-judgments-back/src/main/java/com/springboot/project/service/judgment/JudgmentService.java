package com.springboot.project.service.judgment;

import com.springboot.project.dto.CaseDescriptionFromRegexDto;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.util.PDFTextStripper;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class JudgmentService {
    public void getJudgmentDescriptionWithRegex(String judgmentName) throws IOException {
        File pdfFile = ResourceUtils.getFile("classpath:judgmentPdfs/" + judgmentName + ".pdf");
        PDDocument document = PDDocument.load(pdfFile);
        //Instantiate PDFTextStripper class
        PDFTextStripper pdfStripper = new PDFTextStripper();
        //Retrieving text from PDF document
        String pdfcontent = pdfStripper.getText(document);
        if(pdfcontent.indexOf("Obrazloženje") != -1)
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("Obrazloženje"));
        if(pdfcontent.indexOf("O b r a z l o ž e nj e") != -1)
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("O b r a z l o ž e nj e"));
        if(pdfcontent.indexOf("O b r a z l o ž e n j e") != -1)
            pdfcontent = pdfcontent.substring(0, pdfcontent.indexOf("O b r a z l o ž e n j e"));
        System.out.println(pdfcontent);
        //Closing the document
        document.close();

        CaseDescriptionFromRegexDto caseDescription = new CaseDescriptionFromRegexDto();

        System.out.print("_____________\n");

        Pattern poslovniBrojPattern = Pattern.compile("(K [0-9]+\\/[0-9][0-9][0-9][0-9])", Pattern.DOTALL);
        Matcher matcher = poslovniBrojPattern.matcher(pdfcontent);
        System.out.print("Poslovni broj: ");
        if (matcher.find()) {
            System.out.print(matcher.group(0) + "\n");
            caseDescription.setPoslovniBroj(matcher.group(0));
        }
        else System.out.print("---\n");

        Pattern sudPattern = Pattern.compile("(Osnovni Sud u [A-ZŠĐČĆŽ][a-zšđžćč]+ ?[A-ZŠĐČĆŽ]?[a-zšđžćč]*)", Pattern.DOTALL);
        matcher = sudPattern.matcher(pdfcontent);
        System.out.print("Sud: ");
        if (matcher.find()) {
            System.out.print(matcher.group(0) + "\n");
            caseDescription.setSud(matcher.group(0));
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
            caseDescription.setSudija(matcher.group(4).substring(0, matcher.group(4).length()-1));
        }
        else System.out.print("---\n");

        Pattern tuzilacPattern = Pattern.compile("(Osnovn[a-z \\n\\r]*državno[a-z \\n\\r]*tužil[a-zš \\n\\r]*|ODT-a[ \\n\\r]|ODT-u[ \\n\\r]|ODT[ \\n\\r])([a-z]+[ \\n\\r])*(([A-ZŠĐČĆŽ][a-zšđžćč]{3,}[ \\n\\r])+)", Pattern.DOTALL);
        matcher = tuzilacPattern.matcher(pdfcontent);
        System.out.print("Tuzilac: ");
        if (matcher.find()) {
            System.out.print("Osnovno drzavno tuzilastvo " + matcher.group(3) + "\n");
            caseDescription.setTuzilac("Osnovno drzavno tuzilastvo " + matcher.group(3));
        }
        else System.out.print("---\n");

        Pattern okrivljeniPattern = Pattern.compile("(optuženog |optužene |okrivljenog |okrivljene )(([A-ZŠĐČĆŽ]. ?){2,})", Pattern.DOTALL);
        matcher = okrivljeniPattern.matcher(pdfcontent);
        System.out.print("Okrivljeni: ");
        if (matcher.find()) {
            System.out.print(matcher.group(2) + "\n");
            caseDescription.setOkrivljeni(matcher.group(2));
        }
        else System.out.print("---\n");

        Pattern osudjivanPattern = Pattern.compile("neosuđivan", Pattern.DOTALL);
        matcher = osudjivanPattern.matcher(pdfcontent);
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

        System.out.print("_____________\n");
    }
}
