package com.springboot.project.controller;

import com.springboot.project.dto.SimilarCaseDto;
import com.springboot.project.service.cbr.BaseCbrApplication;
import com.springboot.project.service.cbr.CaseDescription;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cbr")
public class CbrController  {
    @Autowired
    ResourceLoader resourceLoader;
    @Autowired
    ResourcePatternResolver resourceResolver;


    @PostMapping(value="/recommend-similar-cases",produces = {
            MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
    public ArrayList<String> recommendSimilarCases(@RequestBody SimilarCaseDto caseDto){
        BaseCbrApplication recommender = new BaseCbrApplication();
        try {
            recommender.configure();
            recommender.preCycle();

            CBRQuery query = new CBRQuery();
            CaseDescription caseDescription = new CaseDescription();

            caseDescription.setKrivicnoDjelo(caseDto.getKrivicnoDjelo());

            List<String> prekrseniPropisi = new ArrayList();
            for (String propis : caseDto.getPrekrseniPropisi()) {
                prekrseniPropisi.add(propis);
            }
            caseDescription.setPrekrseniPropisi(prekrseniPropisi);

            List<String> tjelesnePovrede = new ArrayList();
            for (String povreda : caseDto.getTjelesnePovrede()) {
                tjelesnePovrede.add(povreda);
            }
            caseDescription.setTjelesnePovrede(tjelesnePovrede);

            caseDescription.setImovnoStanje(caseDto.getImovnoStanje());

            caseDescription.setOsudjivan(caseDto.getOsudjivan());

            caseDescription.setBrojOsudjivanja(caseDto.getBrojOsudjivanja());

            query.setDescription( caseDescription );
            return recommender.calculateSimilarity(query);
            //ecommender.postCycle();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
