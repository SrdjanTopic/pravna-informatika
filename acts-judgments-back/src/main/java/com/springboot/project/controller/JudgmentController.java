package com.springboot.project.controller;

import com.springboot.project.dto.CaseDescriptionFromRegexDto;
import com.springboot.project.dto.JudgmentDto;
import com.springboot.project.service.cbr.CaseDescription;
import com.springboot.project.service.judgment.JudgmentService;
import lombok.AllArgsConstructor;
import org.apache.commons.io.FileUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("/judgments")
public class JudgmentController {
    private final JudgmentService judgmentService;
    @GetMapping("")
    public List<String> getJudgmentNames(){
        return judgmentService.getJudgmentNames();
    }
    @GetMapping("/{judgmentName}")
    public JudgmentDto getJudgment(@PathVariable String judgmentName) {
        try {
            String xmlcontent = FileUtils.readFileToString(ResourceUtils.getFile("classpath:judgments/" + judgmentName + ".xml"), String.valueOf(StandardCharsets.UTF_8));
            return new JudgmentDto(judgmentService.getJudgmentDescriptionWithRegex(judgmentName), xmlcontent);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @PostMapping("")
    public CaseDescription addNewJudgment(@RequestBody CaseDescriptionFromRegexDto description){
        return judgmentService.addJudgmentToCsv(description);
    }

    @PutMapping("/reset/csv")
    public void addAllJudgmentsFromPdfToCsv() throws FileNotFoundException {
        judgmentService.addAllJudgmentsFromPdfToCsv();
    }
}
