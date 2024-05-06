package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/department")
@Slf4j
// ???
public class DepartmentRestFulController {

    // List<DepartmentWithCollegeDto>
    // 대학별 학과 전체 조회?
    @GetMapping("/findAll")
    public void findAll (){

    }
}
