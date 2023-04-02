package com.springboot.project.controller;

import lombok.RequiredArgsConstructor;
import org.apache.commons.io.FileUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/judgments")
public class JudgmentController {
    @GetMapping("")
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
    @GetMapping("/{judgmentName}")
    public String getJudgment(@PathVariable String judgmentName) {
        try {
            String content = FileUtils.readFileToString(ResourceUtils.getFile("classpath:judgments/" + judgmentName + ".xml"), String.valueOf(StandardCharsets.UTF_8));
            return content;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
