package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Slf4j
@RequestMapping("/comment")
// 댓글
public class CommentController {

    // 댓글 생성
    @PostMapping("/create")
    public void createComment() {
        
    }
    // 댓글 리스트
    @GetMapping("/community/{communityId}")
    public void getCommentsByCommunityId() {
        
    }
    // 댓글 조회
    @GetMapping("/{id}")
    public void getCommentById() {
        
    }
    // 댓글 수정
    @PutMapping("/{id}")
    public void updateComment() {
        
    }
    // 댓글 삭제
    @DeleteMapping("/{id}")
    public void deleteComment() {
        
    }
}
