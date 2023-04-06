package com.springboot.project.service.cbr;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseBaseFilter;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.InitializingException;
import org.mindswap.pellet.utils.Bool;

public class CsvConnector implements Connector {

    @Override
    public Collection<CBRCase> retrieveAllCases() {
        LinkedList<CBRCase> cases = new LinkedList<CBRCase>();

        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(getClass().getResourceAsStream("/presude.csv")));
            if (br == null)
                throw new Exception("Error opening file");

            String line = "";
            while ((line = br.readLine()) != null) {
                if (line.startsWith("#") || (line.length() == 0))
                    continue;
                String[] values = line.split(";");

                CBRCase cbrCase = new CBRCase();

                CaseDescription caseDescription = new CaseDescription();
                caseDescription.setId(Integer.parseInt(values[0]));
                caseDescription.setSud(values[1]);
                caseDescription.setPoslovniBroj(values[2]);
                caseDescription.setSudija(values[3]);
                caseDescription.setTuzilac(values[4]);
                caseDescription.setOkrivljeni(values[5]);
                caseDescription.setKrivicnoDjelo(values[6]);
                caseDescription.setPrekrseniPropisi(Arrays.asList(values[7].split(",")));
                caseDescription.setTjelesnePovrede(Arrays.asList(values[8].split(",")));
                caseDescription.setOsudjivan(values[9].equals("da"));
                caseDescription.setBrojOsudjivanja(Integer.parseInt(values[10]));
                caseDescription.setImovnoStanje(values[11]);
                caseDescription.setVrstaPresude(values[12]);
                caseDescription.setPrimijenjeniPropisi(Arrays.asList(values[13].split(",")));

                cbrCase.setDescription(caseDescription);
                cases.add(cbrCase);
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cases;
    }

    @Override
    public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter arg0) {
        return null;
    }

    @Override
    public void storeCases(Collection<CBRCase> arg0) {
    }

    @Override
    public void close() {
    }

    @Override
    public void deleteCases(Collection<CBRCase> arg0) {
    }

    @Override
    public void initFromXMLfile(URL arg0) throws InitializingException {
    }


}
