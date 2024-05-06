<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
			<h2>학사일정</h2>
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
		
		<!-- 학사일정 상세페이지 -->
		<div class="container">

		<table class="table">
			<thead>
				<tr class="first--tr">
					<th colspan="2">2024년 학교 학사일정</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>시작날짜</td>
					<td><input type ="date" name="startDay" value=""></td>
				</tr>
				<tr>
					<td>종료날짜</td>
					<td><input type ="date" name="endDay" value=""></td>
				</tr>
				<tr>
					<td class="td">내용</td>
					<td class="info"><input type = "text" name="information" value=""></td>
				</tr>
			</tbody>
		</table>
		

		<div class="checkbox">
			<a href="/schedule/detail?crud=update&id=" class="button">수정</a>
			<a href="/schedule/delete?id=" class="button">삭제</a>
		</div>

		

		<form action="/schedule/update?id=" method="post">
		<table class="table">
		<thead>
			<tr class="first--tr">
				<th colspan="2">3년 학교 학사일정</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>시작날짜</td>
				<td>2024.8.2.</td>
			</tr>
			<tr>
				<td>종료날짜</td>
				<td>2024.12.25.</td>
			</tr>
			<tr>
				<td class="td">내용</td>
				<td class="info">${schedule.information}</td>
			</tr>
		</tbody>
		</table>
		<div class="checkbox">
			<button class="button">수정</button>
		</div>
		
		</form>

		
	
		</div>
		</div>
		</div>
	</div>
	</div>
</div>

	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>

</body>
</html>
