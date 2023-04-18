package com.springboot.project.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.mindswap.pellet.utils.Bool;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CaseDescriptionFromRegexDto {
    private String sud; //*
    private String poslovniBroj; //*
    private Date datum;
    private String sudija; //*
    private String tuzilac; //*
    private String okrivljeni; //*
    private String krivicnoDjelo; //*
    private List<String> prekrseniPropisi =new ArrayList<String>(); //*
    private List<String> primijenjeniPropisi =new ArrayList<String>();; //*
    private String vrstaPresude; //*
    private String ugrozenSaobracaj;
    private List<String> radnjeBezPrethodnogUvjerenja =new ArrayList<String>();;
    private List<String> radnjeBezPrilagodjavanjaBrzine =new ArrayList<String>();;
    private Boolean nedozvoljenoPolukruznoOkretanje;
    private Boolean prekrsenaPravilaNaRaskrsnici;
    private Boolean prekrsenoPrvenstvoProlaza;
    private Boolean osudjivan; //*
    private Integer brojOsudjivanja; //*
    private String imovnoStanje; //*

}
