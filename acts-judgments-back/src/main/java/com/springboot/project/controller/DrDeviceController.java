package com.springboot.project.controller;

import com.springboot.project.dto.SimilarCaseDto;
import com.springboot.project.service.DrDevice.DrDeviceService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cbr")
public class DrDeviceController {

    @Autowired
    DrDeviceService drDeviceService;

    @PostMapping(value="/recommend-by-rules",produces = {
            MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
    public String recommendByRules(@RequestBody SimilarCaseDto caseDto) {
        try{
            return drDeviceService.startDrDevice(caseDto);
        }catch (Exception e){
            return "sdsd";
        }

    }

}
