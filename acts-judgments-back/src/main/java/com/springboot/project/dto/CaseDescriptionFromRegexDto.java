package com.springboot.project.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CaseDescriptionFromRegexDto {
    private String sud; //*
    private String poslovniBroj; //*
//    private Date datum;
    private String sudija; //*
    private String tuzilac; //*
    private String okrivljeni; //*
    private String krivicnoDjelo;
    private List<String> prekrseniPropisi;
    private String tjelesnePovrede;
    private String osudjivan; //*
    private Integer brojOsudjivanja;
    private String imovnoStanje; //*
    private String vrstaPresude; //*
    private List<String> primijenjeniPropisi;
}
