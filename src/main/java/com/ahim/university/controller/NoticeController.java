package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;
import java.util.UUID;

@Slf4j
@Controller
@RequestMapping("/notice")
// 공지사항
public class NoticeController {

    // 공지사항 리스트
    @GetMapping("")
    public String notice() {

        return "/notice/notice";
    }
    // 공지사항 작성
    @PostMapping("/write")
    public String insertNotice() {

        return "redirect:/notice";
    }
    // 공지사항 상세보기
    @GetMapping("/read")
    public String selectByIdNotice() {


        return "/notice/notice";
    }
    // 공지사항 리스트 + 페이징
    @GetMapping("/list/{page}")
    public String showNoticeListByPage() {

        return "/notice/notice";
    }
    // 공지사항 검색
    @GetMapping("/search")
    public String showNoticeByKeyword() {

        return "/notice/notice";
    }
    // 공지사항 검색 + 페이징
    @GetMapping("/search/{page}")
    public String showNoticeByKeywordAndPage() {

        return "/notice/notice";
    }
    // 공지사항 수정 페이지 , 메소드 이름 변경
    @GetMapping("/update")
    public String updatePage() {

        return "/notice/notice";
    }
    // 공지사항 수정
    @PutMapping("/update")
    public String update() {

        return "redirect:/notice";
    }
    // 공지사항 삭제
    @GetMapping("/delete")
    public String delete() {

        return "redirect:/notice";
    }
}
