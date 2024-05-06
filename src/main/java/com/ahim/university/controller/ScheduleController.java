package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/schedule")
// 학사일정
public class ScheduleController {

    // 학사일정 페이지
    @GetMapping("")
    public String schedule() {

        return "/schedule/schedule";
    }

    // 학사일정 리스트
    @GetMapping("/list")
    public String scheduleList() {

        return "/schedule/scheduleList";
    }

    // 학사일정 상세보기
    @GetMapping("/detail")
    public String detailSchedule() {

        return "/schedule/scheduleDetail";

    }


    // 학사일정 등록
    @PostMapping("/write")
    public String insertSchedule() {

        return "redirect:/schedule/list";
    }


    // 학사일정 수정
    @PostMapping("/update")
    public String updateSchedule() {

        return "redirect:/schedule/list";
    }

    // 학사일정 삭제
    @GetMapping("/delete")
    public String deleteSchedule() {

        return "redirect:/schedule/list";
    }

}
