package com.springboot.project.dto;
import lombok.Getter;
import lombok.Setter;
import org.mindswap.pellet.utils.Bool;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class SimilarCaseDto {
    private String ugrozenSaobracaj;
    private List<String> radnjeBezPrethodnogUvjerenja = new ArrayList<String>();
    private List<String> radnjeBezPrilagodjavanjaBrzine = new ArrayList<String>();
    private Boolean nedozvoljenoPolukruznoOkretanje;
    private Boolean prekrsenaPravilaNaRaskrsnici;
    private Boolean prekrsenoPrvenstvoProlaza;
    private Boolean osudjivan;
    private Integer brojOsudjivanja;
    private String imovnoStanje;




}
