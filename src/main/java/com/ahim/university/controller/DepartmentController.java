package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/department")
// 교직원 기능
public class DepartmentController {
    // 학과 등록 페이지
    @GetMapping("/departmentRegister")
    public String departmentRegisterPage() {

        return "/department/departmentRegister";
    }
    // 학과 등록
    @PostMapping("/departmentRegister")
    public String inputData() {

        return "redirect:/department/departmentList";
    }
    // 학과 목록 + 페이징
    @GetMapping("/departmentList")
    public String departmentList() {

        return "/department/departmentList";
    }
    // 학과 수정 페이지
    @GetMapping("/departmentUpdate/{id}")
    public String updateById() {

        return "/department/departmentUpdate";
    }
    // 학과 수정
    @PostMapping("/departmentUpdate/{id}")
    public String updateByIdProc() {

        return "redirect:/department/departmentList";
    }
    // 학과 삭제
    @GetMapping("/delete/{id}")
    public String deleteById() {

        return "redirect:/department/departmentList";
    }
}
