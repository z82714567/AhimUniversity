package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/subject")
@Slf4j
public class SubjectController {

    // 모든 강의 조회 (모든 연도-학기에 대해서)
    @GetMapping("/list/{page}")
    public String readSubjectList() {


        return "/subject/allSubList";
    }

    // 전체 강의 목록에서 필터링
    @GetMapping("/list/search")
    public String readSubjectListSearch() {

        return "/subject/allSubList";
    }


    // 강의계획서
    @GetMapping("/syllabus/{subjectId}")
    public String readSyllabus() {

        return "/professor/syllabus";
    }

}
