<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의계획서</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
*{
	margin: 0 auto;
	padding: 0 auto;
	font-family: 'Noto Sans KR', sans-serif;
}

.header--top {
	width: 100%;
	height: 40px; 
	background-color: #031734;
}
.section--header{
	text-align: center;
}

.syllabus--table {
	width: 800px;
	border-collapse: collapse;
	border: 1px solid black;
}

.syllabus--table td {
	padding: 4px;
	text-align: center;
}

.col1 {
	width: 14%;
	
}

.col2 {
	width: 13%;
}

.col3 {
	width: 30%;
}

.col4 {
	width: 13%;
}

.col5 {
	width: 30%;
}

.align--left{
	text-align: left;
}

a{
	text-decoration: none;
	color: black;
}

a:hover {
	color: gray;
}
</style>
</head>

<body>
	<header>
		<div class="header--top"></div>
	</header>
	<section>
		<div class="section--header">
			<h2>강의 계획서 조회</h2>
			<br>
		</div>

		<table border="1" class="syllabus--table">
			<colgroup>
				<col class="col1">
				<col class="col2">
				<col class="col3">
				<col class="col4">
				<col class="col5">
			</colgroup>
			<tr>
				<td rowspan="4">교과목 정보</td>
				<td>수업 번호</td>
				<td>아이디</td>
				<td>교과목 명</td>
				<td>이름</td>
			</tr>
			<tr>
				<td>수업 연도</td>
				<td>2024.04.17.</td>
				<td>수업 학기</td>
				<td>1</td>
			</tr>
			<tr>
				<td>학점</td>
				<td>4.0</td>
				<td>이수 구분</td>
				<td>졸업</td>
			</tr>
			<tr>
				<td>강의 시간</td>
				<td>15:30</td>
				<td>강의실</td>
				<td>룸넘버(대학명)</td>
			</tr>
		</table>
		<br>
		<table border="1" class="syllabus--table">
			<colgroup>
				<col class="col1">
				<col class="col2">
				<col class="col3">
				<col class="col4">
				<col class="col5">
			</colgroup>
			<tr>
				<td rowspan="2">교강사 정보</td>
				<td>소속</td>
				<td>부서명</td>
				<td>성명</td>
				<td>이름</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>01032145744</td>
				<td>email</td>
				<td>sdf@ah.com</td>
			</tr>
		</table>
		<br>
		<table border="1" class="syllabus--table">
			<colgroup>
				<col style="width: 14%">
				<col>
			</colgroup>
			<tr>
				<td>강의 개요</td>
				<td class="align--left">강의개요</td>
			</tr>
			<tr>
				<td>강의 목표</td>
				<td class="align--left">강의목표</td>
			</tr>
			<tr>
				<td>교재 정보</td>
				<td class="align--left">교재정보</td>
			</tr>
			<tr>
				<td>주간 계획</td>
				<td class="align--left">주간계획</td>
			</tr>
		</table>

		<table>
			<tr>
				<td><a href="/professor/syllabus/update/">수정하기</a></td>
			</tr>
		</table>

	</section>

</body>
</html>