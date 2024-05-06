package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/student")
@Slf4j
// 학생
public class StudentController {

    // 나의 정보 조회 페이지
    @GetMapping("/myInfo")

    public String myInfo() {

        return "/student/studentInfo";
    }

    // 나의 정보 수정
    @PostMapping("/updateInfo")
    public String updateInfo() {

        return "redirect:/student/studentInfo";
    }

    // 비밀번호 수정 페이지
    @GetMapping("/password")
    private String studentPasswordPage() {

        return "/student/studentPassword";
    }

    // 비밀번호 수정
    @PostMapping("/updatePass")
    private String updatePassword() {

        return "redirect:/student/password";
    }

    // 휴학 신청 페이지
    @GetMapping("/leaveOfAbsence")
    private String leaveOfAbsenceRegisterPage() {

        return "/student/leaveOfAbsenceRegister";
    }

    // 휴학 신청서 제출
    @PostMapping("/leaveApp")
    @ResponseBody
    private void createleaveOfAbsence() {

    }

    // 휴학 신청 리스트
    @GetMapping("/leaveOfAbsenceList")
    private String leaveOfAbsenceList() {

        return "/student/leaveOfAbsenceList";
    }

    // 휴학 신청 취소삭제
    @GetMapping("/deleteLeaveApp/{id}")
    private String deleteLeaveOfAbsence() {

        return "redirect:/student/leaveOfAbsenceList";
    }

    // 등록금 조회 페이지
    @GetMapping("/tuition")
    private String tuitionPage() {

        return "/student/tuitionList";
    }

    // 등록금 고지서 페이지
    @GetMapping("/tuitionBill")
    private String tuitionBill() {

        return "/student/tuitionBill";
    }

    // 성적 상세 조회 페이지
    @GetMapping("/gradeDetailList")
    private String gradeDetailPage() {

        return "/student/gradeDetailList";
    }

    // 전체 성적 리스트 + 필터링
    @GetMapping("/list/search")
    @ResponseBody
    private void readGradeListSearch() {

    }

    // 학생 강의평가 페이지
    @GetMapping("/evaluation/{subjectId}")
    private String evaluationPage() {

        return "/student/evaluation";
    }

    // 강의평가 등록
    @PostMapping("/evaluationPorc/{subjectId}")
    @ResponseBody
    private void evaluationProc() {

    }
}
