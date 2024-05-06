package com.ahim.university.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/applySubject")
@Slf4j
// 교직원 기능
public class ApplySubjectController {

    // 교수가 신청한 강의 리스트
    @GetMapping("/list")
    public String applySubjectList(){
        return "/staff/applySubjectList";
    }

    // 교수가 신청한 강의 상세 뷰
    @GetMapping("/detail")
    public String applySubjectDetail(){
        return "staff/applySubjectDetail";
    }

    // 교수가 신청한 강의 승인 여부
    @PostMapping("/updateApproval")
    public void updateApproval(){

    }

}
