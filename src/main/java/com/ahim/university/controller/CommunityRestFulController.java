package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/Community")
@Slf4j
// 게시판
public class CommunityRestFulController {

    // 게시글 수정
    @PutMapping("/update/{id}")
    public void updateCommunity() {

    }
    // 게시글 삭제
    @DeleteMapping("/delete/{id}")
    public void deleteCommunity() {

    }

}

