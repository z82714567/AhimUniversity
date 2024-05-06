package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/room")
// 강의실
public class RoomController {

    // 강의실 등록 페이지
    @GetMapping("/roomRegister")
    public String roomRegisterPage() {


        return "/room/roomRegister";
    }

    // 강의실 등록
    @PostMapping("/roomRegister")
    public String space() {

        return "redirect:/room/roomList";
    }

    // 강의실 리스트
    @GetMapping("/roomList")
    public String roomList() {

        return "/room/roomList";
    }


    // 강의실 삭제
    @GetMapping("/delete/{id}")
    public String deleteById() {

        return "redirect:/room/roomList";
    }

    // 강의실 수정 페이지
    @GetMapping("/roomUpdate/{id}")
    public String updateById() {


        return "/room/roomUpdate";
    }

    // 강의실 수정
    @PostMapping("/roomUpdate/{id}")
    public String updateRoomProc() {

        return "redirect:/room/roomList";
    }
}
