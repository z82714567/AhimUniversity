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

#scheduleTable {
	text-align: center;
	margin-top: 20px;
	margin: 10px;
}

#scheduleTable td {
	padding: 10px;
	width: 300px;
}

.month {
  background-color: #f5f5f5;
  border-top: 1px solid #666;
  border-bottom: 1px solid #666;
}

.line{
  border-top: 1px solid #666;
  border-bottom: 1px solid #666;	
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
		
		<!-- 학사일정 목록 -->
		<div class="container">
		<table id="scheduleTable">
			<tbody>

				<tr>
					<td class ="month" width ="100px;">3월</td>
					<td class = "line">2024.3.17.~2024.4.17.</td>
					<td class = "line" >학사정보</td>
				</tr>


			</tbody>
		</table>
		</div>
		</div>
		</div>
	</div>
	</div>
</div>
	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>

