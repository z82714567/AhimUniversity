package com.ahim.university.controller;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/professor")
@Slf4j
// 교수 기능
public class ProfessorController {

    // 정보 조회 페이지
    @GetMapping("/info")
    public String professerInfoPage() {


        return "/professor/professorInfo";
    }

    // 정보 수정 페이지
    @GetMapping("/update")
    public String updateUserPage() {

        return "/professor/updateUser";
    }

    // 강의 등록 페이지
    @GetMapping("/apply")
    public String applySubjectPage() {

        return "/professor/applysubject";
    }

    // 강의 신청
    @PostMapping("/apply")
    public String applySubjectProc() {

        return "redirect:/professor/update-list";
    }


    // 나의 강의 조회 페이지
    @GetMapping("/mysub")
    public String mySubPage() {


        return "/professor/mySubPage";
    }

    // 나의 강의 조회
    @PostMapping("/mysub")
    public String subjectListProc() {


        return "/professor/mySubPage";
    }

    // 교수 비밀번호 변경 페이지
    @GetMapping("/updatepw")
    public String updatePwPage() {

        return "/professor/updatePW";
    }

    // 강의 성적 평가 페이지
    @GetMapping("/subject/{subjectId}")
    public String subjectPage() {

        return "/professor/subjectDetail";
    }

    // 성적 입력 페이지
    @GetMapping("/subject/{subjectId}/{studentId}")
    public String updateStudentSubjdectPage() {


        return "/professor/updateStudentDetail";
    }

    // 성적 입력
    @PostMapping("/subject/{subjectId}/{studentId}")
    public String updateStudentSubjdectProc() {


        return "redirect:/professor/subject/{subjectId}";
    }

    // 강의 평가 페이지
    @GetMapping("/readevaluation")
    public String readEvaluationPage() {

        return "/professor/myEvaluation";
    }

    // 과목별 강의 평가 조회
    @PostMapping("/readevaluation")
    public String readEvaluation() {


        return "/professor/myEvaluation";

    }

    // 강의계획서 조회
    @GetMapping("/syllabus/{subjectId}")
    public String syllabusPage() {

        return "professor/syllabus";
    }

    // 강의계획서 수정 페이지
    @GetMapping("/syllabus/update/{subjectId}")
    public String updateSyllabusPage() {

        return "professor/updateSyllabus";
    }

    // 강의계획서 수정
    @PutMapping("/syllabus/update/{subjectId}")
    public String createSyllabusProc() {

        return "redirect:/professor/syllabus/";
    }

    // 신청 강의 리스트
    @GetMapping("/update-list")
    public String myApplySubListpage() {

        return "professor/myApplySubList";
    }

    // 신청 강의 수정 페이지
    @GetMapping("/update-list/{id}")
    public String updateApplySubPage() {

        return "professor/updateApplySubject";
    }

    // 신청 강의 수정
    @PutMapping("/update-list/{id}")
    public String updateApplySubProc() {



        return "redirect:/professor/update-list";
    }
}
