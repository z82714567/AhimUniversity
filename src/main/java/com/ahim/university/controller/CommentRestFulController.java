package com.ahim.university.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/comment")
@Slf4j
// 댓글
public class CommentRestFulController {

    // 댓글 생성
    @PostMapping("/create")
    public void createComment() {

    }
    // 댓글 수 가져오기
    @GetMapping("/count/{communityId}")
    public void getCommentCount() {

    }
    // 댓글 수정
    @PutMapping("/update/{id}")
    public void updateComment() {

    }
    // 댓글 삭제
    @DeleteMapping("/delete/{id}")
    public void deleteComment() {

    }
    // 댓글 한 건 조회
    @GetMapping("/{id}")
    public void getCommentById() {

    }
}
