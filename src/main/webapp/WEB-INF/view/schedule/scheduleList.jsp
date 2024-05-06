<%@page import="org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/view/layout/header.jsp"%>
<style>
body > div{
	padding-top: 100px;
}
main {
	height: 1000px;
}

</style>
</head>
<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>학사정보</h2>
		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
<div class="container mb-5">
	<div class="row">
		<!-- 사이드바 메뉴 -->
		<aside class="sidebar col-md-2 mt-5">
			<div class="card">
					<div class="card-header">
						<h5 class="mb-0">학사정보</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item p-3"><a href="/notice" class="text-black"><i
								class="fas fa-user mr-2"></i> 공지사항</a></li>
						<li class="list-group-item p-3"><a href="/schedule" class="text-black"><i
								class="fas fa-lock mr-2"></i> 학사일정</a></li>

						<li class="list-group-item p-3"><a href="/schedule/list" class="text-black"><i
								class="fas fa-lock mr-2"></i> 학사일정 등록</a></li>

					</ul>
				</div>
		</aside>
	<!-- 메인 div -->
	<div class="col-md-10">
		<div class="main-content">
		<h1>학사일정</h1>
		<hr />
		<div class="row">
		
		<!-- 학사일정 목록 -->

		<div class="container">
			<table class="table">	
				<thead>
					<tr class="first--tr">
						<th>ID</th>
						<th>날짜</th>
						<th>내용</th>
					</tr>
				</thead>
				<tbody>

					<tr onclick="location.href='/schedule/detail?id=';">
						<td>아이디</td>
						<td>시작일~완료일</td>
						<td>정보</td>
					</tr>

				</tbody>
			</table>
			<button type="button" onclick="location.href='/schedule/list?crud=insert'" 
				class="btn btn-dark update--button">등록</button>
		</div>


		<form action="/schedule/write" method="post">
		    <table class="table">
				<thead>
					<tr class="first--tr">
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>시작날짜</td>
						<td><input type="date" name ="startDay"></td>
					</tr>
					<tr>
						<td>종료날짜</td>
						<td><input type="date" name = "endDay"></td>
					</tr>
					<tr>
						<td class="td">내용</td>
						<td class="info"><input type="text" name = "information" class="textbox"></td>
					</tr>
				</tbody>
			</table>
		   <input type="submit" class="button" value="등록">
	    </form>

		</div>
		</div>
	</div>
	</div>
</div>

	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>

