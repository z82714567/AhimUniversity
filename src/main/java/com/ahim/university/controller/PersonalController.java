package com.ahim.university.controller;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.support.DefaultMessageSourceResolvable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Controller
// ????
public class PersonalController {

    // 메인페이지
    @GetMapping("/")
    public String home() {

        return "main";
    }

    // 로그인 페이지
    @GetMapping("/login")
    public String login() {
        return "/user/login";
    }

    // 로그인
    @PostMapping("/login")
    public String signInProc() {

        return "redirect:/";
    }

    // 로그아웃
    @GetMapping("/logout")
    public String logout() {

        return "redirect:/login";
    }

    // 에러페이지
    @GetMapping("/error")
    public String handleError() {
        return "/error/errorPage";
    }

    // 비밀번호 변경 안내 페이지
    @GetMapping("/guide")
    public String pop() {

        return "/user/passwordPop";
    }

    // 교직원 마이페이지
    @GetMapping("/info/staff")
    public String readStaffInfo() {

        return "/user/staffInfo";
    }

    // 비밀번호 수정 페이지
    @GetMapping("/password")
    public String updatePassword() {

        return "/user/updatePassword";
    }

    // 비밀번호 수정
    @PutMapping("/password")
    public String updatePasswordProc() {
        
        return "redirect:/password";
    }

    // 아이디 찾기 페이지
    @GetMapping("/find/id")
    public String findId() {

        return "/user/findId";
    }

    // 아이디 찾기 결과 페이지
    @PostMapping("/find/id")
    public String findIdProc() {
        
        return "/user/findIdComplete";
    }

    // 비밀번호 찾기 페이지
    @GetMapping("/find/password")
    public String findPassword() {

        return "/user/findPassword";
    }

    // 비밀번호 찾기 결과
    @PostMapping("/find/password")
    public String findPasswordProc() {

        return "/user/findPasswordComplete";
    }

    // 회원정보 수정 페이지
    @GetMapping("/update")
    public String updateUser() {

       
        return "/user/updateUser";
    }

    // 회원정보 수정
    @PutMapping("/update")
    public String updateUserProc() {
        
        return "redirect:";
    }

    // 세션에서 현재 사용자의 정보를 가져오는 메서드입니다.
    

    // 입력 유효성 검사에서 발생한 오류 메시지를 문자열로 반환하는 메서드입니다.
    private String getValidationErrors(BindingResult bindingResult) {
        return bindingResult.getAllErrors().stream().map(DefaultMessageSourceResolvable::getDefaultMessage)
                .collect(Collectors.joining("\\n"));
    }


    // 캠퍼스맵
    @GetMapping("/campusMap")
    public String campus() {

        return "/campus/campusMap";
    }

}
