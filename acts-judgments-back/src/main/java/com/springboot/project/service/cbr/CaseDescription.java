package com.springboot.project.service.cbr;

import java.util.ArrayList;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class CaseDescription implements CaseComponent {
    private int id;
    private String sud;
    private String poslovniBroj;
    private String datum;
    private String sudija;
    private String tuzilac;
    private String okrivljeni;
    private String krivicnoDjelo;
    private List<String> prekrseniPropisi = new ArrayList<String>();
    private List<String> tjelesnePovrede = new ArrayList<String>();
    private Boolean osudjivan;
    private Integer brojOsudjivanja;
    private String imovnoStanje;
    private String vrstaPresude;
    private List<String> primijenjeniPropisi = new ArrayList<String>();

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getSud() {
        return sud;
    }
    public void setSud(String sud) {
        this.sud = sud;
    }

    public String getPoslovniBroj() {
        return poslovniBroj;
    }
    public void setPoslovniBroj(String poslovniBroj) {
        this.poslovniBroj = poslovniBroj;
    }

    public String getSudija() {
        return sudija;
    }
    public void setSudija(String sudija) {
        this.sudija = sudija;
    }

    public String getTuzilac() {
        return tuzilac;
    }
    public void setTuzilac(String tuzilac) {
        this.tuzilac = tuzilac;
    }

    public String getOkrivljeni() {
        return okrivljeni;
    }
    public void setOkrivljeni(String okrivljeni) {
        this.okrivljeni = okrivljeni;
    }

    public String getKrivicnoDjelo() {
        return krivicnoDjelo;
    }
    public void setKrivicnoDjelo(String krivicnoDjelo) {
        this.krivicnoDjelo = krivicnoDjelo;
    }

    public List<String> getPrekrseniPropisi() {
        return prekrseniPropisi;
    }
    public void setPrekrseniPropisi(List<String> prekrseniPropisi) {
        this.prekrseniPropisi = prekrseniPropisi;
    }
    public String getDatum() {
        return datum;
    }
    public void setDatum(String datum) {
        this.datum = datum;
    }
    public List<String> getTjelesnePovrede() {
        return tjelesnePovrede;
    }

    public void setTjelesnePovrede(List<String> tjelesnePovrede) {
        this.tjelesnePovrede = tjelesnePovrede;
    }

    public Boolean getOsudjivan() {
        return osudjivan;
    }

    public void setOsudjivan(Boolean osudjivan) {
        this.osudjivan = osudjivan;
    }

    public Integer getBrojOsudjivanja() {
        return brojOsudjivanja;
    }

    public void setBrojOsudjivanja(Integer brojOsudjivanja) {
        this.brojOsudjivanja = brojOsudjivanja;
    }

    public String getImovnoStanje() {
        return imovnoStanje;
    }

    public void setImovnoStanje(String imovnoStanje) {
        this.imovnoStanje = imovnoStanje;
    }

    public String getVrstaPresude() {
        return vrstaPresude;
    }
    public void setVrstaPresude(String vrstaPresude) {
        this.vrstaPresude = vrstaPresude;
    }

    public List<String> getPrimijenjeniPropisi() {
        return primijenjeniPropisi;
    }
    public void setPrimijenjeniPropisi(List<String> primijenjeniPropisi) {
        this.primijenjeniPropisi = primijenjeniPropisi;
    }


    @Override
    public String toString() {
        String povrede="";
        for (String povreda:tjelesnePovrede) {
            povrede+=povreda+",";
        }
        povrede=povrede.substring(0,povrede.length()-1);
        String prekrseni="";
        for (String propis:prekrseniPropisi) {
            prekrseni+=propis+",";
        }
        prekrseni=prekrseni.substring(0,prekrseni.length()-1);
        String primijenjeni="";
        for (String propis1:primijenjeniPropisi) {
            primijenjeni+=propis1+",";
        }
        return id +";"
                + sud +";"
                + poslovniBroj + ";"
                + sudija +";"
                + tuzilac +";"
                + okrivljeni +";"
                + krivicnoDjelo +";"
                + prekrseni +";"
                + povrede +";"
                + osudjivan +";"
                + brojOsudjivanja +";"
                + imovnoStanje +";"
                + vrstaPresude +";"
                + primijenjeni;
    }

    @Override
    public Attribute getIdAttribute() {
        return new Attribute("id", this.getClass());
    }
}
