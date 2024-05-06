package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/staff")
@Slf4j
// 교직원 기능
public class StaffController {

    // 강의 등록 페이지
    @GetMapping("/subject")
    public String subject() {

        return "/staff/subject";
    }

    // 강의 리스트
    @GetMapping("/subjectList")
    public String subjectList() {

        return "/staff/list";
    }

    // 강의 등록
    @PostMapping("/subject")
    public String insertSubject() {

        return "redirect:/staff/subjectList";
    }

    // 강의 삭제
    @GetMapping("/subjectDelete")
    public String deleteSubject() {

        return "redirect:/staff/subjectList";
    }

    // 강의 수정
    @PutMapping("/subject")
    public String updateSubject() {

        return "redirect:/staff/subjectList";
    }

    // 단과대별 등록금 페이지
    @GetMapping("/tuition")
    public String collTuit() {

        return "/staff/collTuit";
    }

    // 단과대별 등록금 입력
    @PostMapping("/tuition")
    public String insertcollTuit() {

        return "redirect:/staff/tuition?crud=insert";
    }

    // 단과대별 등록금 삭제
    @GetMapping("/tuitionDelete")
    public String deleteCollTuit() {

        return "redirect:/staff/tuition?crud=insert";
    }

    // 단과대별 등록금 수정
    @PutMapping("/tuitionUpdate")
    public String updateCollTuit() {

        return "redirect:/staff/tuition?crud=insert";
    }


}


