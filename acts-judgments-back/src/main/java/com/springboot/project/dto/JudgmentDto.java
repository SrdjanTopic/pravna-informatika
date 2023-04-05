package com.springboot.project.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class JudgmentDto {
    private CaseDescriptionFromRegexDto caseDescription;
    private String xmlContent;
}
