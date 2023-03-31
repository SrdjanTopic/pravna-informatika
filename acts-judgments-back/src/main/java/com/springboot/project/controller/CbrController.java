package com.springboot.project.controller;


import com.springboot.project.service.cbr.BaseCbrApplication;
import com.springboot.project.service.cbr.CaseDescription;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
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


    @GetMapping("/recommend-case-solution")
    public ResponseEntity<?> recommendCaseSolution() {
        StandardCBRApplication recommender = new BaseCbrApplication();
        try {
            recommender.configure();

            recommender.preCycle();

            CBRQuery query = new CBRQuery();
            CaseDescription caseDescription = new CaseDescription();

            caseDescription.setKrivicnoDelo("cl.239st.1 KZ");
            caseDescription.setVrednostDuvana(5000);

            query.setDescription( caseDescription );

            recommender.cycle(query);
            recommender.postCycle();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ResponseEntity.ok(null);
    }

    @GetMapping("/cases-pdf")
    public ResponseEntity<?> getCasesPdf() throws IOException {
        List<String> retVal = new ArrayList<>();
        Resource[] resources = resourceResolver.getResources("classpath:cases/*.pdf");
        for (Resource res: resources) {
            retVal.add(res.getFilename());
        }
        return ResponseEntity.ok()
                .body(retVal);
    }

    @GetMapping("/cases-pdf/{caseName}")
    public ResponseEntity<?> getCasePdf(@PathVariable String caseName) throws IOException {
        Resource resource = resourceLoader.getResource("classpath:cases/" + caseName);
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_PDF)
                .body(Files.readAllBytes(path));
    }

    @GetMapping("/laws-pdf")
    public ResponseEntity<?> getLawsPdf() throws IOException {
        List<String> retVal = new ArrayList<>();
        Resource[] resources = resourceResolver.getResources("classpath:law/*.pdf");
        for (Resource res: resources) {
            retVal.add(res.getFilename());
        }
        return ResponseEntity.ok()
                .body(retVal);
    }

    @GetMapping("/laws-pdf/{lawName}")
    public ResponseEntity<?> getLawPdf(@PathVariable String lawName) throws IOException {
        Resource resource = resourceLoader.getResource("classpath:law/" + lawName);
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_PDF)
                .body(Files.readAllBytes(path));
    }

    @GetMapping("/laws-akoma-ntoso")
    public ResponseEntity<?> getLawsAkomaNtoso() throws IOException {
        Resource resource = resourceLoader.getResource("classpath:akoma-ntoso/Akoma Ntoso Zakoni.html");
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_XHTML_XML)
                .body(Files.readAllBytes(path));
    }

    @GetMapping("/cases-akoma-ntoso")
    public ResponseEntity<?> getCasesAkomaNtoso() throws IOException {
        List<String> retVal = new ArrayList<>();
        Resource[] resources = resourceResolver.getResources("classpath:akoma-ntoso/*.html");
        for (Resource res: resources) {
            if (!res.getFilename().contains("Zakoni")) {
                retVal.add(res.getFilename());
            }
        }
        return ResponseEntity.ok()
                .body(retVal);
    }

    @GetMapping("/cases-akoma-ntoso/{caseName}")
    public ResponseEntity<?> getCaseAkomaNtoso(@PathVariable String caseName) throws IOException {
        Resource resource = resourceLoader.getResource("classpath:akoma-ntoso/" + caseName);
        Path path = Paths.get(resource.getURI());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_XHTML_XML)
                .body(Files.readAllBytes(path));
    }

}