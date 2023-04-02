package com.springboot.project.controller;

import lombok.RequiredArgsConstructor;
import org.apache.commons.io.FileUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

@RestController
@RequiredArgsConstructor
@RequestMapping("/acts")
public class ActController {

    @GetMapping("/{actName}")
    public String getAct(@PathVariable String actName) {
        try {
            String content = FileUtils.readFileToString(ResourceUtils.getFile("classpath:acts/" + actName + ".xml"), String.valueOf(StandardCharsets.UTF_8));
            return content;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
