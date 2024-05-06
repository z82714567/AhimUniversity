package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/college")
@Slf4j
// 교직원 기능
public class CollegeController {
    // 단과대 리스트
    @GetMapping("/collegeList")
    public String collegeList(){
        return "/college/collegeList";
    }
    // 단과대 등록 화면
    @GetMapping("/collegeRegister")
    public String collegeRegisterPage(){
        return "/college/collegeRegister";
    }
    // 단과대 등록
    @PostMapping("/collegeRegister")
    public String inputData(){
        return "redirect:/college/collegeList";
    }
    // 단과대 수정 화면
    @GetMapping("/collegeUpdate")
    public String updateById(){
        return "/college/collegeUpdate";
    }
    // 단과대 수정
    @PostMapping("/collegeUpdate")
    public String updateByIdProc(){
        return "redirect:/college/collegeList";
    }
    // 단과대 삭제
    @GetMapping("/delete")
    public String deleteById(){
        return "redirect:/college/collegeList";
    }
}
