package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/break")
@Slf4j
// 교직원 기능
public class BreakController {

    // 휴학 신청 내역 리스트(휴, 복학 처리되지 않은 신청내역 페이지)
    @GetMapping("/list/staff")
    public String breakListByState(){
        return "break/listStaff";
    }

    // 휴학 신청 상세 뷰
    @GetMapping("/detail")
    public String breakDetail(){
        return "break/breakDetail";
    }

    // 휴학 신청 처리
    @PostMapping("/update")
    public String updateBreakApp(){
        return "redirect:/break/list/staff";
    }

}
