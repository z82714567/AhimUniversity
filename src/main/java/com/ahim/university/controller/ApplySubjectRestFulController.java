package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/applySub")
@Slf4j
// 교직원 기능
public class ApplySubjectRestFulController {

    // 강의 개설 승인
    @PutMapping("/updateApproval")
    public void updateApproval(){

    }
    // 강의 반려 기능
    @PutMapping("/updateReason")
    public void updateReason(){

    }
    // ???
    @PostMapping("/postSubject")
    public void insertSubject(){

    }

}
