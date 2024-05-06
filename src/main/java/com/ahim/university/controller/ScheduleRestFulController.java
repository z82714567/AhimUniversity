package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/schedule")
@Slf4j
public class ScheduleRestFulController {

    // 학사일정 리스트 List<Schedule>
    @GetMapping("/selectAll")
    public void selectAllSchedule(){

    }

}
