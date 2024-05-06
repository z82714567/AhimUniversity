package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/sugang")
@Slf4j
public class StuSubController {
    // 예비 수강신청 기간에서 수강신청 기간으로 변경하는 페이지 (교직원용)
    @GetMapping("/period")
    public String updatePeriod() {

        return "/stuSub/updatePeriod";
    }

    // 예비 수강 신청 기간 -> 수강 신청 기간
    @GetMapping("/updatePeriod1")
    public String updatePeriodProc1() {

        return "/stuSub/updatePeriod";
    }

    // 수강 신청 기간 -> 종료
    @GetMapping("/updatePeriod2")
    public String updatePeriodProc2() {

        return "/stuSub/updatePeriod";
    }

    // 종료 -> 예비 수강 신청 기간
    @GetMapping("/updatePeriod0")
    public String updatePeriodProc0() {

        return "/stuSub/updatePeriod";
    }

    // 과목 조회 (현재 학기)
    @GetMapping("/subjectList/{page}")
    public String readSubjectList() {

        return "/stuSub/subList";
    }

    // 과목 조회 (현재 학기)에서 필터링
    @GetMapping("/subjectList/search")
    public String readSubjectListSearch() {

        return "/stuSub/subList";
    }

    // 예비 수강 신청
    @GetMapping("/pre/{page}")
    public String preStuSubApplication() {

        return "/stuSub/preApplication";
    }

    // 예비 수강 신청 처리 (신청)
    @PostMapping("/pre/{subjectId}")
    public String insertPreStuSubAppProc() {

        return "redirect:/sugang/pre/1";
    }

    //예비 수강 신청 처리 (취소)
    @DeleteMapping("/pre/{subjectId}")
    public String deletePreStuSubAppProc() {

        return  "redirect:/sugang/preAppList?type=0";
    }

    // 예비 수강 신청 강의 목록에서 필터링
    @GetMapping("/pre/search")
    public String preStuSubApplicationSearch() {

        return "/stuSub/preApplication";
    }

    // 수강 신청
    @GetMapping("/application/{page}")
    public String stuSubApplication() {

        return "stuSub/application";
    }

    // 수강 신청 강의 목록에서 필터링
    @GetMapping("/application/search")
    public String stuSubApplicationSearch() {

        return "/stuSub/application";
    }

    // 수강 신청 처리 (신청)
    @PostMapping("/insertApp/{subjectId}")
    public String insertStuSubAppProc() {

        return "redirect:/sugang/preAppList?type=1";
    }

    //수강 신청 처리 (취소)
    @DeleteMapping("/deleteApp/{subjectId}")
    public String deleteStuSubAppProc() {
       return  "redirect:/sugang/preAppList?type=1";
    }

    //예비 수강 신청 내역
    @GetMapping("/preAppList")
    public String preStuSubAppList() {

        return "/stuSub/preAppList";
    }

    // 수강 신청 내역
    @GetMapping("/list")
    public String stuSubAppList() {

        return "/stuSub/appList";
    }

    // 강의 시간표 조회 테이블
    @GetMapping("/timeTable")
    private String timeTableProc() {

        return "/stuSub/timeTable";
    }
}
