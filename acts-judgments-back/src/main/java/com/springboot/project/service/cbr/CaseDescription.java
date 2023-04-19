package com.springboot.project.service.cbr;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.springboot.project.dto.CaseDescriptionFromRegexDto;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CaseDescription implements CaseComponent {
    private int id;
    private String sud;
    private String poslovniBroj;
    private Date datum;
    private String sudija;
    private String tuzilac;
    private String okrivljeni;
    private String krivicnoDjelo;
    private List<String> prekrseniPropisi = new ArrayList<String>();
    private List<String> primijenjeniPropisi = new ArrayList<String>();
    private String vrstaPresude;

    //atributi za slicnost
    private String ugrozenSaobracaj;
    private List<String> radnjeBezPrethodnogUvjerenja = new ArrayList<String>();
    private List<String> radnjeBezPrilagodjavanjaBrzine= new ArrayList<String>();
    private Boolean nedozvoljenoPolukruznoOkretanje;
    private Boolean prekrsenaPravilaNaRaskrsnici;
    private Boolean prekrsenoPrvenstvoProlaza;
    private Boolean osudjivan;
    private Integer brojOsudjivanja;
    private String imovnoStanje;

    public CaseDescription() {

    }


    @Override
    public String toString() {
        String prethodnaUvjerenja="";
        if(radnjeBezPrethodnogUvjerenja!=null) {
            for (String radnja:radnjeBezPrethodnogUvjerenja) {
                prethodnaUvjerenja+=radnja+",";
            }
        }
        String prilagodjenjaBrzine="";
        if(radnjeBezPrilagodjavanjaBrzine!=null) {
            for (String radnja:radnjeBezPrilagodjavanjaBrzine) {
                prilagodjenjaBrzine+=radnja+",";
            }
        }
        String prekrseni="";
        if(prekrseniPropisi!=null) {
            for (String propis : prekrseniPropisi) {
                prekrseni += propis + ",";
            }
        }
        String primijenjeni="";
        if(primijenjeniPropisi!=null) {
            for (String propis1 : primijenjeniPropisi) {
                primijenjeni += propis1 + ",";
            }
        }
        String datum_ispis="";
        if (datum!=null) {
            datum_ispis = datum.toString();
        }
        return id +";"
                + sud +";"
                + poslovniBroj + ";"
                + datum_ispis  + ";"
                + sudija +";"
                + tuzilac +";"
                + okrivljeni +";"
                + krivicnoDjelo +";"
                + prekrseni +";"
                + primijenjeni+";"
                + vrstaPresude +";"
                + ugrozenSaobracaj +";"
                + radnjeBezPrethodnogUvjerenja +";"
                + radnjeBezPrilagodjavanjaBrzine +";"
                + nedozvoljenoPolukruznoOkretanje +";"
                + prekrsenaPravilaNaRaskrsnici +";"
                + prekrsenoPrvenstvoProlaza +";"
                + osudjivan +";"
                + brojOsudjivanja +";"
                + imovnoStanje;

    }

    @Override
    public Attribute getIdAttribute() {
        return new Attribute("id", this.getClass());
    }

    public CaseDescription(int id, CaseDescriptionFromRegexDto description){
        this.id = id;
        this.sud = description.getSud();
        this.poslovniBroj = description.getPoslovniBroj();
        this.datum=description.getDatum();
        this.sudija = description.getSudija();
        this.tuzilac = description.getTuzilac();
        this.okrivljeni = description.getOkrivljeni();
        this.krivicnoDjelo = description.getKrivicnoDjelo();
        this.prekrseniPropisi = description.getPrekrseniPropisi();
        this.primijenjeniPropisi = description.getPrimijenjeniPropisi();
        this.vrstaPresude = description.getVrstaPresude();
        this.ugrozenSaobracaj=description.getUgrozenSaobracaj();
        this.radnjeBezPrethodnogUvjerenja=description.getRadnjeBezPrethodnogUvjerenja();
        this.radnjeBezPrilagodjavanjaBrzine=description.getRadnjeBezPrilagodjavanjaBrzine();
        this.nedozvoljenoPolukruznoOkretanje=description.getNedozvoljenoPolukruznoOkretanje();
        this.prekrsenaPravilaNaRaskrsnici=description.getPrekrsenaPravilaNaRaskrsnici();
        this.prekrsenoPrvenstvoProlaza=description.getPrekrsenoPrvenstvoProlaza();
        this.osudjivan = description.getOsudjivan().equals("da");
        this.brojOsudjivanja = description.getBrojOsudjivanja();
        this.imovnoStanje = description.getImovnoStanje();


    }
}
