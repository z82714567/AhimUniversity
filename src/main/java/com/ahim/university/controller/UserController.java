package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserController {

    // staff 입력 페이지
    @GetMapping("/staff")
    public String createStaff() {

        return "/user/createStaff";
    }

    // staff 생성
    @PostMapping("/staff")
    public String createStaffProc() {

        return "redirect:/user/staff";
    }





    // 학생 리스트
    @GetMapping("/studentList")
    public String showStudentList() {

        return "/user/studentList";
    }

    // 학생 리스트 + 페이징 처리
    @GetMapping("/studentList/{page}")
    public String showStudentListByPage() {

        return "/user/studentList";
    }


    // 교수 리스트
    @GetMapping("/professorList")
    public String showProfessorList() {

        return "/user/professorList";
    }

    // 교수 리스트 + 페이징 처리
    @GetMapping("/professorList/{page}")
    public String showProfessorListByPage() {

        return "/user/professorList";
    }

    // 교수 등록 페이지
    @GetMapping("/professor")
    public String createProfessor() {

        return "/user/createProfessor";
    }

    // 교수 등록
    @PostMapping("/professor")
    public String createProfessorProc() {

        return "redirect:/user/professor";
    }



    // 학생 등록 페이지
    @GetMapping("/student")
    public String createStudent() {

        return "/user/createStudent";
    }

    // 학생 등록
    @PostMapping("/student")
    public String createStudentProc() {

        return "redirect:/user/studentList";
    }


    // 학생의 학년, 학기 수정
    @GetMapping("/student/update")
    public String updateStudentGradeAndSemester() {

        return "redirect:/user/studentList";
    }

}
