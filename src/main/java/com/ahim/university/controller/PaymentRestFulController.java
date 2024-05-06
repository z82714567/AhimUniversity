package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@RequestMapping("/buy")
// 학생
public class PaymentRestFulController {

    // 해당학기 등록금 납부 페이지 ???
    @GetMapping("/{tuiYear}/{semester}")
    public void paymentPage() {

    }
    // 해당학기 등록금 납부 기능
    @PostMapping("/{tuiYear}/{semester}")
    public void paymentProc() {

    }


}
