package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/tuition")
@Slf4j
public class TuitionController {

    // 납부된 등록금 내역 조회 페이지
    @GetMapping("/list")
    public String tuitionList() {


        return "/tuition/tuiList";
    }

    // 등록금 납부 고지서 조회 페이지
    // 해당 학기 (2024-1)에 등록금을 납부한 기록이 있다면 납부하기 버튼 제거
    @GetMapping("/payment")
    public String tuitionPayment() {

        return "/tuition/payment";
    }

    // 등록금 납부
    // 등록금 납부 페이지로 다시 돌아가서 납부 완료됨을 보여주기
    @PostMapping("/payment")
    public String tuitionPaymentProc() {

        return "redirect:/tuition/payment";
    }

    // 장학금 유형 설정 + 등록금 납부 고지서 생성 페이지
    @GetMapping("/bill")
    public String createPayment() {

        return "/tuition/createPayment";
    }

    // 등록금 납부 고지서 생성
    @GetMapping("/create")
    public String createTuiProc() {

        return "/tuition/createPayment";
    }


}
