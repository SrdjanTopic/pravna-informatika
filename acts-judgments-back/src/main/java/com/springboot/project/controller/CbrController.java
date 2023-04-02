package com.springboot.project.controller;


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
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;

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
    @GetMapping("/recommend-similar-cases")
    public ResponseEntity<?> recommendCaseSolution() {
        StandardCBRApplication recommender = new BaseCbrApplication();
        try {
            recommender.configure();

            recommender.preCycle();

            CBRQuery query = new CBRQuery();
            CaseDescription caseDescription = new CaseDescription();

            caseDescription.setKrivicnoDjelo("cl.339 st.1 KZ");

            List<String> prekrseniPropisi = new ArrayList();
            prekrseniPropisi.add("cl.41 ZOBSNP");
            caseDescription.setPrekrseniPropisi(prekrseniPropisi);

            List<String> tjelesnePovrede = new ArrayList();
            tjelesnePovrede.add("lake");
            caseDescription.setTjelesnePovrede(tjelesnePovrede);

            caseDescription.setImovnoStanje("lose");

            caseDescription.setOsudjivan(false);

            caseDescription.setBrojOsudjivanja(0);

            query.setDescription( caseDescription );

            recommender.cycle(query);
            recommender.postCycle();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.ok(null);
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
