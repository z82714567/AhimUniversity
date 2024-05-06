package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/room")
@Slf4j
public class RoomRestFulCountroller {

    // 대학별 강의실 리스트???List<RoomWithCollegeDto>
    @GetMapping("/findAll")
    public void findAll(){


    }
}
