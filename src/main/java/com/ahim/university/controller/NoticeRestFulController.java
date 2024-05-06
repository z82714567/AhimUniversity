package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/notice")
@Slf4j
// 공지사항
public class NoticeRestFulController {

    // 공지사항 리스트
    @GetMapping("/list")
    public void readNoticeList() {

    }

    // 공지사항 상세보기
    @GetMapping("/detail/{id}")
    public void readNoticeDetail() {

    }

}
