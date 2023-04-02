package com.springboot.project.dto;

import java.util.ArrayList;
import java.util.List;

public class SimilarCaseDto {
    private String krivicnoDjelo;
    private List<String> prekrseniPropisi = new ArrayList<String>();
    private List<String> tjelesnePovrede = new ArrayList<String>();
    private String imovnoStanje;
    private Boolean osudjivan;
    private Integer brojOsudjivanja;





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

    public List<String> getTjelesnePovrede() {
        return tjelesnePovrede;
    }

    public void setTjelesnePovrede(List<String> tjelesnePovrede) {
        this.tjelesnePovrede = tjelesnePovrede;
    }

    public String getImovnoStanje() {
        return imovnoStanje;
    }

    public void setImovnoStanje(String imovnoStanje) {
        this.imovnoStanje = imovnoStanje;
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


}
