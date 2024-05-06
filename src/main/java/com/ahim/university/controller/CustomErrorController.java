package com.ahim.university.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
// 에러페이지
public class CustomErrorController {

    @GetMapping("/")
    public String handleError() {
        return "/error/errorPage";
    }

}
