package com.springboot.project.controller;


import com.springboot.project.dto.SimilarCaseDto;
import com.springboot.project.service.cbr.BaseCbrApplication;
import com.springboot.project.service.cbr.CaseDescription;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import lombok.RequiredArgsConstructor;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cbr")
public class CbrController  {

    Connector _connector;  /** Connector object */
    CBRCaseBase _caseBase;  /** CaseBase object */
    NNConfig simConfig;  /** KNN configuration */

    @Autowired ResourceLoader resourceLoader;

    @Autowired
    ResourcePatternResolver resourceResolver;


    @PostMapping(value="/recommend-similar-cases",produces = {
            MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
    public ResponseEntity<List<String>> recommendSimilarCases(@RequestBody SimilarCaseDto caseDto){
        StandardCBRApplication recommender = new BaseCbrApplication();
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
            recommender.cycle(query);
            recommender.postCycle();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(new ArrayList<>(),HttpStatus.OK);
    }

    @GetMapping("/judgments/{judgmentName}")
    public String getJudgment(@PathVariable String judgmentName) {
        try {
            String content = FileUtils.readFileToString(ResourceUtils.getFile("classpath:judgments/" + judgmentName + ".xml"), String.valueOf(StandardCharsets.UTF_8));
            return content;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @GetMapping("judgments")
    public List<String> getJudgmentNames(){
        List<String> results = new ArrayList<String>();

        try {
            File[] files = ResourceUtils.getFile("classpath:judgments/").listFiles();
            assert files != null;
            for (File file : files) {
                if (file.isFile()) {
                    results.add(file.getName());
                }
            }
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
        return results;
    }

    @GetMapping("/acts/{actName}")
    public String getAct(@PathVariable String actName) {
        try {
            String content = FileUtils.readFileToString(ResourceUtils.getFile("classpath:acts/" + actName + ".xml"), String.valueOf(StandardCharsets.UTF_8));
            return content;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
