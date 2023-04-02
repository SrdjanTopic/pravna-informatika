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
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Equal;
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

        simConfig.addMapping(new Attribute("krivicnoDjelo", CaseDescription.class), new Equal());

        TabularSimilarity slicnostPrekrsenihPropisa = new TabularSimilarity(Arrays.asList(
                "cl.26 st.2 ZOBSNP",
                "cl.27 st.1 ZOBSNP",
                "cl.28 st.1 ZOBSNP",
                "cl.29 st.1 ZOBSNP",
                "cl.30 st.4 ZOBSNP",
                "cl.31 st.1 ZOBSNP",
                "cl.35 st.1 ZOBSNP",
                "cl.45 st.4 ZOBSNP",
                "cl.97 st.3 ZOBSNP",
                "cl.44 ZOBSNP",
                "cl.76 ZOBSNP"
                ));
        slicnostPrekrsenihPropisa.setSimilarity("cl.26 st.2 ZOBSNP", "cl.27 st.1 ZOBSNP", 0.8);
        slicnostPrekrsenihPropisa.setSimilarity("cl.26 st.2 ZOBSNP", "cl.44  ZOBSNP", 0.6);
        slicnostPrekrsenihPropisa.setSimilarity("cl.35 st.1 ZOBSNP", "cl.97 st.3 ZOBSNP", 0.5);
        slicnostPrekrsenihPropisa.setSimilarity("cl.45 st.4 ZOBSNP", "cl.44 ZOBSNP", 0.5);
        slicnostPrekrsenihPropisa.setSimilarity("cl.30 st.4 ZOBSNP", "cl.29 st.1 ZOBSNP", 0.7);
        slicnostPrekrsenihPropisa.setSimilarity("cl.30 st.4 ZOBSNP", "cl.31 st.1 ZOBSNP", 0.5);
        slicnostPrekrsenihPropisa.setSimilarity("cl.31 st.1 ZOBSNP", "cl.76 ZOBSNP", 0.5);
        slicnostPrekrsenihPropisa.setSimilarity("cl.35 st.1 ZOBSNP", "cl.76 ZOBSNP", 0.5);
        simConfig.addMapping(new Attribute("prekrseniPropisi", CaseDescription.class), slicnostPrekrsenihPropisa);

        TabularSimilarity slicnostPovreda = new TabularSimilarity(Arrays.asList(new String[] {"lake", "teske"}));
        slicnostPovreda.setSimilarity("lake", "teske", 0.5);
        simConfig.addMapping(new Attribute("tjelesnePovrede", CaseDescription.class), slicnostPovreda);

        TabularSimilarity slicnostImovnogStanja = new TabularSimilarity(Arrays.asList(new String[] {"dobro", "srednje", "lose"}));
        slicnostImovnogStanja.setSimilarity("dobro", "srednje", 0.5);
        slicnostImovnogStanja.setSimilarity("srednje", "lose", 0.5);
        simConfig.addMapping(new Attribute("imovnoStanje", CaseDescription.class), slicnostImovnogStanja);

        simConfig.addMapping(new Attribute("osudjivan", CaseDescription.class), new Equal());

        simConfig.addMapping(new Attribute("brojOsudjivanja", CaseDescription.class), new Interval(4));



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
        System.out.println("Query:"+query);
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
