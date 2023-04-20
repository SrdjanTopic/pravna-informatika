package com.springboot.project.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CaseDescriptionFromRegexDto {
    private String sud; //*
    private String poslovniBroj; //*
    private String datum;
    private String sudija; //*
    private String tuzilac; //*
    private String okrivljeni; //*
    private String krivicnoDjelo; //*
    private List<String> prekrseniPropisi =new ArrayList<>(); //*
    private List<String> primijenjeniPropisi =new ArrayList<>(); //*
    private String vrstaPresude; //*
    private String ugrozenSaobracaj; //*
    private List<String> radnjeBezPrethodnogUvjerenja = new ArrayList<>(); //*
    private List<String> radnjeBezPrilagodjavanjaBrzine =new ArrayList<>(); //*
    private Boolean nedozvoljenoPolukruznoOkretanje; //*
    private Boolean prekrsenaPravilaNaRaskrsnici; //----------
    private Boolean prekrsenoKretanjeDesnomStranom; //*
    private Boolean osudjivan; //*
    private Integer brojOsudjivanja; //*
    private String imovnoStanje; //*

}
