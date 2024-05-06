<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/view/layout/header.jsp"%>

<!-- ======= 상단 제목부분 ======= -->
<div class="breadcrumbs" data-aos="fade-in">
  <div class="container">
    <h2>마이페이지</h2>
  </div>
</div>
<!-- 상단 제목부분 끝 -->

<div class="container mt-5 mb-5">
  <div class="row">
  <%@ include file="/WEB-INF/view/layout/mypageAsidebar.jsp"%>
    
    <!-- 메인 컨텐츠 -->
    <main class="col-lg-9 mt-5" style="margin-bottom: 210px;"> <!-- 여기에 스타일 추가 -->
      <div class="card">
        <div class="card-body">
          <h1 class="card-title">내 정보 조회</h1>
          <div class="split--div"></div>
          <table class="table table-bordered">
            <tr>
              <th>ID</th>
              <td>아이디</td>
              <th>소속</th>
              <td>대학명&nbsp;부서명</td>
            </tr>
          </table>
          <table class="table table-bordered">
            <tr>
              <th>성명</th>
              <td>이름</td>
              <th>생년월일</th>
              <td>2024.04.17.</td>
            </tr>
            <tr>
              <th>성별</th>
              <td>남여</td>
              <th>주소</th>
              <td>해운대구 마린시티</td>
            </tr>
            <tr>
              <th>연락처</th>
              <td>01033987020</td>
              <th>email</th>
              <td>sdf@ah.com</td>
            </tr>
          </table>
          <button type="button" onclick="location.href='/professor/update'" class="btn btn-dark update--button">수정하기</button>
        </div>
      </div>
    </main>
    <!-- 메인 컨텐츠 끝 -->
  </div>
</div>

<%@ include file="/WEB-INF/view/layout/footer.jsp"%>
