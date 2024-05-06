package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/professor")
@Slf4j
public class ProfessorRestFulController {

    // 과목별 교수 리스트??List<ProfessorAndSubjectFormDto>
    @GetMapping("/findAll")
    public void findAllProfessor(){


    }

}
