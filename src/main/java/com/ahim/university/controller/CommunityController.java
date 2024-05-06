package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@Slf4j
@RequestMapping("/community")
// 게시판
public class CommunityController {

    // 게시글 리스트 + 페이징
    @GetMapping("/list")
    public String list() {

        return "/community/list";
    }
    // 게시글 작성 페이지
    @GetMapping("/write")
    public String write() {

        return "/community/write";
    }
    // 게시글 작성
    @PostMapping("/create")
    public String createCommunity() {

        return "redirect:/community/list"; // 적절한 리다이렉트 경로로 수정해주세요
    }
    // 게시글 리스트
    @GetMapping("/all")
    public void getAllCommunities() {

    }
    // 게시글 상세보기
    @GetMapping("/{id}")
    public String getCommunityById() {

        return "/community/detail";
    }
    // 게시글 수정 페이지 (메소드 이름 변경)
    @GetMapping("/update/{id}")
    public String updateCommunityPage() {

        return "/community/update";
    }
    // 게시글 수정
    @PutMapping("/{id}")
    public String updateCommunity() {
        return "redirect:/community/list";
    }
    // 게시글 삭제
    @DeleteMapping("/delete/{id}")
    public void deleteCommunity() {

    }
}
