package com.springboot.project.service.DrDevice;

import com.springboot.project.dto.SimilarCaseDto;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class DrDeviceService {

    @Value("${drdevice.path}")
    private String BASE_PATH;

    public List<String> startDrDevice(SimilarCaseDto caseDto) throws IOException, InterruptedException {
        writeFacts(caseDto);

        try {
            ProcessBuilder pb = new ProcessBuilder(BASE_PATH + "clean.bat");
            pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
            pb.redirectError(ProcessBuilder.Redirect.INHERIT);
            pb.directory(new File(BASE_PATH + "clean.bat").getParentFile());
            System.out.println(BASE_PATH + "clean.bat");
            Process process = pb.start();
            int exitCode = process.waitFor();
            System.out.println("CLEAN.BAT file exited with code " + exitCode);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                ProcessBuilder pb = new ProcessBuilder(BASE_PATH + "start.bat");
                pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
                pb.redirectError(ProcessBuilder.Redirect.INHERIT);
                pb.directory(new File(BASE_PATH + "start.bat").getParentFile());

                Process process = pb.start();
                int exitCode = process.waitFor();
                System.out.println("START.BAT file exited with code " + exitCode);
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                return parseResult();
            }
        }
    }

    private void writeFacts(SimilarCaseDto caseDto) throws IOException {
        String wants_to_do_traffic_action="no";
        String has_previously_convinced="yes";
        String wants_to_do_traffic_joining="no";
        String has_adjusted_driving_to_right_road_side = "yes";
        String has_adjusted_speed_according_to_road_condition = "yes";
        String has_adjusted_speed_according_to_crosswalk = "yes";
        String has_adjusted_driving_to_intersection = "yes";
        String has_done_U_turn_prohibited_by_traffic_sign = "no";
        String is_conscious = "";
        String victim_injuries="";

        if(caseDto.getRadnjeBezPrethodnogUvjerenja().size()>0) {
            has_previously_convinced = "no";
            for (String radnja : caseDto.getRadnjeBezPrethodnogUvjerenja()) {
                if (Objects.equals(radnja,"u saobracaju")) {
                    System.out.println(radnja);
                    wants_to_do_traffic_action = "yes";
                } else if (Objects.equals(radnja,"pri ukljucenju u saobracaj")) {
                    System.out.println(radnja);
                    wants_to_do_traffic_joining = "yes";
                }
            }
        }
        if(caseDto.getPrekrsenoKretanjeDesnomStranom()){
            has_adjusted_driving_to_right_road_side="no";
        }
        for (String radnja : caseDto.getRadnjeBezPrilagodjavanjaBrzine()) {
            if (Objects.equals(radnja,"prema stanju puta")) {
                has_adjusted_speed_according_to_road_condition = "no";
            } else if (Objects.equals(radnja,"pred pjesacki")) {
                has_adjusted_speed_according_to_crosswalk = "no";
            }
        }

        if(caseDto.getPrekrsenaPravilaNaRaskrsnici()){
            has_adjusted_driving_to_intersection="no";
        }
        if(caseDto.getNedozvoljenoPolukruznoOkretanje()){
            has_done_U_turn_prohibited_by_traffic_sign="yes";
        }
        if(caseDto.getUgrozenSaobracaj()!=""){
            if(Objects.equals(caseDto.getUgrozenSaobracaj().split(" ")[0],"svjesno")){
                is_conscious="yes";
            }else{
                is_conscious="no";
            }
            if(Objects.equals(caseDto.getUgrozenSaobracaj().split(" ")[1],"lake")){
                victim_injuries="slight";
            }else{
                victim_injuries="serious";
            }
        }




        String fileContent =
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n" +
                        "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n" +
                        "        xmlns:rdfs=\"http://www.w3.org/2000/01/rdf-schema#\"\n" +
                        "        xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n" +
                        "        xmlns:lc=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#\">\n" +
                        "\t<lc:case rdf:about=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#case01\">\n" +
                        "\t\t<lc:defendant>Defendant</lc:defendant>\n" +
                        "\t\t<lc:name>case 01</lc:name>\n" +
                        "\t\t<lc:wants_to_do_traffic_action>" + wants_to_do_traffic_action + "</lc:wants_to_do_traffic_action>\n" +
                        "\t\t<lc:has_previously_convinced>" + has_previously_convinced + "</lc:has_previously_convinced>\n" +
                        "\t\t<lc:wants_to_do_traffic_joining>" + wants_to_do_traffic_joining + "</lc:wants_to_do_traffic_joining>\n" +
                        "\t\t<lc:has_adjusted_driving_to_right_road_side>" + has_adjusted_driving_to_right_road_side + "</lc:has_adjusted_driving_to_right_road_side>\n" +
                        "\t\t<lc:has_adjusted_speed_according_to_road_condition>" + has_adjusted_speed_according_to_road_condition + "</lc:has_adjusted_speed_according_to_road_condition>\n" +
                        "\t\t<lc:has_adjusted_speed_according_to_crosswalk>" + has_adjusted_speed_according_to_crosswalk + "</lc:has_adjusted_speed_according_to_crosswalk>\n" +
                        "\t\t<lc:has_adjusted_driving_to_intersection>" + has_adjusted_driving_to_intersection + "</lc:has_adjusted_driving_to_intersection>\n" +
                        "\t\t<lc:has_done_U_turn_prohibited_by_traffic_sign>" + has_done_U_turn_prohibited_by_traffic_sign + "</lc:has_done_U_turn_prohibited_by_traffic_sign>\n" +
                        "\t\t<lc:victim_injuries>" + victim_injuries + "</lc:victim_injuries>\n" +
                        "\t\t<lc:is_conscious>" + is_conscious + "</lc:is_conscious>\n" +

                        "\t</lc:case>\n" +
                        "</rdf:RDF>";
        FileWriter writer = new FileWriter(BASE_PATH + "facts.rdf", false);
        writer.write(fileContent);
        writer.close();
    }

    private List<String> parseResult() throws IOException {
        List<String> retVal = new ArrayList<>();
        String provenPositive = "<defeasible:truthStatus>defeasibly-proven-positive</defeasible:truthStatus>";

        String fileContent = new String(Files.readAllBytes(Paths.get( BASE_PATH + "export.rdf")), StandardCharsets.UTF_8);

        String commited_cl26_st2 = StringUtils.substringBetween(fileContent, "<export:commited_cl26_st2", "</export:commited_cl26_st2");
        if (commited_cl26_st2 != null && commited_cl26_st2.contains(provenPositive)) {
            retVal.add("Okrivljeni je optuzen za ugrozavanje bezbjednosti saobracaja izvodjenjem radnje u saobracaju " +
                    "bez prethodnog uvjerenja da se moze izvesti na bezbjedan nacin (cl.26 st.2 ZOBSNP).");
        }

        String commited_cl27_st1 = StringUtils.substringBetween(fileContent, "<export:commited_cl27_st1", "</export:commited_cl27_st1>");
        if (commited_cl27_st1 != null && commited_cl27_st1.contains(provenPositive)) {
            retVal.add("Okrivljeni je optuzen za ugrozavanje bezbjednosti saobracaja prikljucivanjem u saobracaj sa druge povrsine " +
                    "bez prethodnog uvjerenja i upozorenja drugih vozila (cl.27 st.1 ZOBSNP).");

        }

        String commited_cl29_st1 = StringUtils.substringBetween(fileContent, "<export:commited_cl29_st1", "</export:commited_cl29_st1>");
        if (commited_cl29_st1 != null && commited_cl29_st1.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje bezbjednosti saobracaja napostovanjem pravila " +
                    "kretanja desnom stranom kolovoza u smijeru kretanja (cl.29 st.1 ZOBSNP).");
        }
        String commited_cl35_st1 = StringUtils.substringBetween(fileContent, "<export:commited_cl35_st1", "</export:commited_cl35_st1>");
        if (commited_cl35_st1 != null && commited_cl35_st1.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje bezbjednosti saobracaja neprilagodjavanjem " +
                    "brzine stanju puta i drugim saobracajnim uslovima  (cl.35 st.1 ZOBSNP).");
        }
        String commited_cl41 = StringUtils.substringBetween(fileContent, "<export:commited_cl41", "</export:commited_cl41>");
        if (commited_cl41 != null && commited_cl41.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje bezbjednosti saobracaja nepropustajuci " +
                    "vozila sa prvenstvom prolaza na raskrsnici  (cl.41).");
        }
        String commited_cl44 = StringUtils.substringBetween(fileContent, "<export:commited_cl44", "</export:commited_cl44>");
        if (commited_cl44 != null && commited_cl44.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje bezbjednosti saobracaja izvodjenjem "  +
                    "polukruznog okretanja na mjestu gdje je to saobracajnim znakom zabranjeno (cl.44 ZOBSNP)");
        }
        String commited_cl97_st3 = StringUtils.substringBetween(fileContent, "<export:commited_cl97_st3", "</export:commited_cl97_st3>");
        if (commited_cl97_st3 != null && commited_cl97_st3.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje bezbjednosti saobracaja neprilagodjavanjem "  +
                    "brzine pred pjesacki prelaz koji nije regulisan uredjajima za saobracajne svjetlosne znakove(cl.97 st.3 ZOBSNP)");
        }
        String commited_cl339_st1 = StringUtils.substringBetween(fileContent, "<export:commited_cl339_st1", "</export:commited_cl339_st1>");
        if (commited_cl339_st1 != null && commited_cl339_st1.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje javnog saobracaja i dovodjenje u opasnost zivot ljudi "  +
                    "pri cemu je uzrokovao lake tjelesne povrede (cl.339 st.1 KZ)");
        }
        String commited_cl339_st3 = StringUtils.substringBetween(fileContent, "<export:commited_cl339_st3", "</export:commited_cl339_st3>");
        if (commited_cl339_st3 != null && commited_cl339_st3.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje javnog saobracaja i dovodjenje u opasnost zivot ljudi "  +
                    "pri cemu je uzrokovao lake tjelesne povrede, ali je to ucinio iz nehata (cl.339 st.3 KZ)");
        }
        String commited_cl348_st1 = StringUtils.substringBetween(fileContent, "<export:commited_cl348_st1", "</export:commited_cl348_st1>");
        if (commited_cl348_st1 != null && commited_cl348_st1.contains(provenPositive)) {
            retVal.add("Okrivljeni je optužen za ugrozavanje javnog saobracaja  i dovodjenje u opasnost zivot ljudi "  +
                    "pri cemu je uzrokovao teske tjelesne povrede (cl.348 st.1 KZ)");
        }
        String commited_cl348_st3 = StringUtils.substringBetween(fileContent, "<export:commited_cl348_st3", "</export:commited_cl348_st3>");
        if (commited_cl348_st3 != null && commited_cl348_st3.contains(provenPositive)) {
            retVal.add( "Okrivljeni je optužen za ugrozavanje javnog saobracaja i dovodjenje u opasnost zivot ljudi "  +
                    "pri cemu je uzrokovao teske tjelesne povrede, ali je to ucinio iz nehata (cl.348 st.3 KZ)");
        }

        String to_pay_min_26 = StringUtils.substringBetween(fileContent, "<export:to_pay_min_26", "</export:to_pay_min_26");
        String to_pay_max_26 = StringUtils.substringBetween(fileContent, "<export:to_pay_max_26", "</export:to_pay_max_26");
        if (to_pay_min_26 != null && to_pay_min_26.contains(provenPositive) && to_pay_max_26 != null && to_pay_max_26.contains(provenPositive)) {
            retVal.add("Okrivljeni je duzan da plati minimalno " + StringUtils.substringBetween(to_pay_min_26, "<export:value>", "</export:value>") + "e, a " +
                    "maksimalno "+ StringUtils.substringBetween(to_pay_max_26, "<export:value>", "</export:value>") +" (za cl.26 st.2 ZOBSNP).");
        }
        String to_pay_min_27 = StringUtils.substringBetween(fileContent, "<export:to_pay_min_27", "</export:to_pay_min_27");
        String to_pay_max_27 = StringUtils.substringBetween(fileContent, "<export:to_pay_max_27", "</export:to_pay_max_27");
        if (to_pay_min_27 != null && to_pay_min_27.contains(provenPositive) && to_pay_max_27 != null && to_pay_max_27.contains(provenPositive)) {
            retVal.add("Okrivljeni je duzan da plati minimalno " + StringUtils.substringBetween(to_pay_min_27, "<export:value>", "</export:value>") + "e, a " +
                    "maksimalno "+ StringUtils.substringBetween(to_pay_max_27, "<export:value>", "</export:value>") +" (za cl.27 st.1 ZOBSNP).");
        }
        String to_pay_min_29 = StringUtils.substringBetween(fileContent, "<export:to_pay_min_29", "</export:to_pay_min_29");
        String to_pay_max_29 = StringUtils.substringBetween(fileContent, "<export:to_pay_max_29", "</export:to_pay_max_29");
        if (to_pay_min_29 != null && to_pay_min_29.contains(provenPositive) && to_pay_max_29 != null && to_pay_max_29.contains(provenPositive)) {
            retVal.add("Okrivljeni je duzan da plati minimalno " + StringUtils.substringBetween(to_pay_min_29, "<export:value>", "</export:value>") + "e, a " +
                    "maksimalno "+ StringUtils.substringBetween(to_pay_max_29, "<export:value>", "</export:value>") +" (za cl.29 st.1 ZOBSNP).");
        }
        String to_pay_min_35 = StringUtils.substringBetween(fileContent, "<export:to_pay_min_35", "</export:to_pay_min_35");
        String to_pay_max_35 = StringUtils.substringBetween(fileContent, "<export:to_pay_max_35", "</export:to_pay_max_35");
        if (to_pay_min_35 != null && to_pay_min_35.contains(provenPositive) && to_pay_max_35 != null && to_pay_max_35.contains(provenPositive)) {
            retVal.add("Okrivljeni je duzan da plati minimalno " + StringUtils.substringBetween(to_pay_min_29, "<export:value>", "</export:value>") + "e, a " +
                    "maksimalno "+ StringUtils.substringBetween(to_pay_max_35, "<export:value>", "</export:value>") +" (za cl.35 st.1 ZOBSNP).");
        }
        String to_pay_min_44 = StringUtils.substringBetween(fileContent, "<export:to_pay_min_44", "</export:to_pay_min_44");
        String to_pay_max_44 = StringUtils.substringBetween(fileContent, "<export:to_pay_max_44", "</export:to_pay_max_44");
        if (to_pay_min_44 != null && to_pay_min_44.contains(provenPositive) && to_pay_max_44 != null && to_pay_max_44.contains(provenPositive)) {
            retVal.add("Okrivljeni je duzan da plati minimalno " + StringUtils.substringBetween(to_pay_min_44, "<export:value>", "</export:value>") + "e, a " +
                    "maksimalno "+ StringUtils.substringBetween(to_pay_max_44, "<export:value>", "</export:value>") +" (za cl.44 ZOBSNP).");
        }
        String to_pay_min_97 = StringUtils.substringBetween(fileContent, "<export:to_pay_min_97", "</export:to_pay_min_97");
        String to_pay_max_97 = StringUtils.substringBetween(fileContent, "<export:to_pay_max_97", "</export:to_pay_max_97");
        if (to_pay_min_97 != null && to_pay_min_97.contains(provenPositive) && to_pay_max_97 != null && to_pay_max_97.contains(provenPositive)) {
            retVal.add("Okrivljeni je duzan da plati minimalno " + StringUtils.substringBetween(to_pay_min_97, "<export:value>", "</export:value>") + "e, a " +
                    "maksimalno "+ StringUtils.substringBetween(to_pay_max_97, "<export:value>", "</export:value>") +" (za cl.97 st.3 ZOBSNP).");
        }

        String min_imprisonment = StringUtils.substringBetween(fileContent, "<export:min_imprisonment", "</export:min_imprisonment");
        if (min_imprisonment != null && min_imprisonment.contains(provenPositive)) {
            retVal.add("Okrivljenom se izrice minimalna zatvorska kazna od " + StringUtils.substringBetween(min_imprisonment, "<export:value>", "</export:value>") + " godine.");
        }


        String max_imprisonment = StringUtils.substringBetween(fileContent, "<export:max_imprisonment", "</export:max_imprisonment");
        if (max_imprisonment != null && max_imprisonment.contains(provenPositive)) {
            retVal.add("Okrivljenom se izrice maksimalna zatvorska kazna od " + StringUtils.substringBetween(max_imprisonment, "<export:value>", "</export:value>") + " godine.");
        }

        if (retVal.isEmpty()) {
            retVal.add("Nema poklapanja sa definisanim pravilima.");
        }

        return retVal;
    }
}
