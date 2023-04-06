package com.springboot.project;

import com.springboot.project.service.cbr.CaseDescription;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.util.ResourceUtils;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class ActsJudgmentsBack {

	public static void main(String[] args) {
		SpringApplication.run(ActsJudgmentsBack.class, args);

		List<CaseDescription> cases = new ArrayList<>();

		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(ActsJudgmentsBack.class.getResourceAsStream("/testPresude.csv")));
			if (br == null)
				throw new Exception("Error opening file");

			String line = "";
			while ((line = br.readLine()) != null) {
				if (line.startsWith("#") || (line.length() == 0))
					continue;
				String[] values = line.split(";");

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

				cases.add(caseDescription);
			}
			br.close();
			File file = ResourceUtils.getFile("classpath:testPresude.csv/");
			try{
				
			}
			cases.forEach(System.out::println);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
