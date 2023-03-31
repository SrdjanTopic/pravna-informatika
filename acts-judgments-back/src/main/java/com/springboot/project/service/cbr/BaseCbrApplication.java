package com.springboot.project.service.cbr;

import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Interval;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;

public class BaseCbrApplication implements StandardCBRApplication {

    Connector _connector;  /** Connector object */
    CBRCaseBase _caseBase;  /** CaseBase object */

    NNConfig simConfig;  /** KNN configuration */

    public void configure() throws ExecutionException {
        _connector =  new CsvConnector();

        _caseBase = new LinealCaseBase();  // Create a Lineal case base for in-memory organization

        simConfig = new NNConfig(); // KNN configuration
        simConfig.setDescriptionSimFunction(new Average());  // global similarity function = average

        //simConfig.addMapping(new Attribute("krivicnoDelo", CaseDescription.class), new Equal());
        TabularSimilarity slicnostKrivicnogDela = new TabularSimilarity(Arrays.asList(
                "cl.284st.3 KZ",
                "cl.265.st.2 KZ",
                "cl.239st.1 KZ"));
        slicnostKrivicnogDela.setSimilarity("cl.284st.3 KZ", "cl.265.st.2 KZ", 0.5);
        slicnostKrivicnogDela.setSimilarity("cl.265.st.2 KZ", "cl.239st.1 KZ", 0.8);
        slicnostKrivicnogDela.setSimilarity("cl.284st.3 KZ", "cl.239st.1 KZ", 0.8);
        simConfig.addMapping(new Attribute("krivicnoDelo", CaseDescription.class), slicnostKrivicnogDela);

        simConfig.addMapping(new Attribute("vrednostDuvana", CaseDescription.class), new Interval(20000));

        TabularSimilarity slicnostPropisa = new TabularSimilarity(Arrays.asList(
                "cl.226 ZOKP",
                "cl.229 ZOKP",
                "cl.374 ZOKP",
                "cl.227 ZOKP",
                "cl.303 ZOKP",
                "cl.239 ZOKP"));
        slicnostPropisa.setSimilarity("cl.226 ZOKP", "cl.229 ZOKP", .8);
        slicnostPropisa.setSimilarity("cl.226 ZOKP", "cl.374 ZOKP", .8);
        slicnostPropisa.setSimilarity("cl.229 ZOKP", "cl.374 ZOKP", .8);
        slicnostPropisa.setSimilarity("cl.227 ZOKP", "cl.226 ZOKP", .5);

        simConfig.addMapping(new Attribute("primenjeniPropisi", CaseDescription.class), slicnostPropisa);

        // Equal - returns 1 if both individuals are equal, otherwise returns 0
        // Interval - returns the similarity of two number inside an interval: sim(x,y) = 1-(|x-y|/interval)
        // Threshold - returns 1 if the difference between two numbers is less than a threshold, 0 in the other case
        // EqualsStringIgnoreCase - returns 1 if both String are the same despite case letters, 0 in the other case
        // MaxString - returns a similarity value depending of the biggest substring that belong to both strings
        // EnumDistance - returns the similarity of two enum values as the their distance: sim(x,y) = |ord(x) - ord(y)|
        // EnumCyclicDistance - computes the similarity between two enum values as their cyclic distance
        // Table - uses a table to obtain the similarity between two values. Allowed values are Strings or Enums. The table is read from a text file.
        // TabularSimilarity - calculates similarity between two strings or two lists of strings on the basis of tabular similarities
    }

    public void cycle(CBRQuery query) throws ExecutionException {
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        System.out.println("Retrieved cases:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
    }

    public void postCycle() throws ExecutionException {

    }

    public CBRCaseBase preCycle() throws ExecutionException {
        _caseBase.init(_connector);
        java.util.Collection<CBRCase> cases = _caseBase.getCases();
//		for (CBRCase c: cases)
//			System.out.println(c.getDescription());
        return _caseBase;
    }

}
