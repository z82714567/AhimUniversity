<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>강의 평가</title>






<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

body {
	background-color: #f8f9fa;
}

.header--top {
	height: 40px;
	background-color: #3ac162;
}

.section--header {
	margin-top: 30px;
	text-align: center;
}

.search--table {
	width: 400px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.search--table td {
	padding: 10px;
	text-align: left;
}

.col1 {
	width: 20%;
}

.col2 {
	width: 80%;
}

.button--container {
	text-align: center;
	margin-top: 20px;
}

.submit--button {
	padding: 10px 15px;
	border: none;
	border-radius: 10px;
	color: white;
	background-color: #3ac162;
	cursor: pointer;
}

.submit--button:hover {
	background-color: #0d1e3b;
}

.radio--container {
	text-align: center;
}

.radio--container {
	text-align: center;
}
</style>

</head>

<body>
	<header>
		<div class="header--top"></div>
	</header>
	<section>
		<div class="section--header">
			<h2>강의 평가</h2>
			<br>
		</div>

		<!-- 강의평가 헤더 -->
		<div class="container">

			<div class="container mt-4 text-center">
				<p>본 강의 평가 설문지는 익명으로 작성되며, 이번 학기 교과목의 수업 진행에 대한 학생들의 솔직한 의견을
					파악하여, 앞으로 보다 나은 강의를 하기 위한 목적으로 실시하는 것입니다. 따라서 학생 여러분은 각 평가 문항에 대하여
					성실하고 진지하게 답변해 주시기 바랍니다.</p>
			</div>
			<!-- 강의평가 테이블 -->
			<div class="table-responsive">


				<table class="table table-bordered">
					<tr>
						<th>학기</th>
						<td>2024년도2학기</td>
						<th>학년</th>
						<td>3학년</td>
					</tr>
					<tr>
						<th>학번</th>
						<td>20121718</td>
						<th>이름</th>
						<td>노수현</td>
					</tr>
					<tr>
						<th>과목명</th>
						<td>과목명</td>
						<th>담당 교수</th>
						<td>노수현</td>
					</tr>
				</table>
			</div>

			<!-- 강의평가 체크 테이블 -->
			<div class="table-responsive">
				<form action="/student/evaluationPorc/"
					id="evaluationForm">
					<input type="hidden" name="studentId"
						value="" /> <input type="hidden"
						name="subjectId" value="" />
					<table class="table table-bordered">
						<tr class="radio--container">
							<th></th>
							<th class="bg-light">강의 평가 내용</th>
							<th class="bg-light">매우그렇다</th>
							<th class="bg-light">그런편이다</th>
							<th class="bg-light">보통이다</th>
							<th class="bg-light">그렇지 않다</th>
							<th class="bg-light">전혀 그렇지 않다</th>
						</tr>

						<tr class="radio-container">
							<th class="bg-light">1</th>
							<td>질문</td>
							<td><input type="radio" value="5" name="answer1" id="a1_5"></td>
							<td><input type="radio" value="4" name="answer1" id="a1_4"></td>
							<td><input type="radio" value="3" name="answer1" id="a1_3"></td>
							<td><input type="radio" value="2" name="answer1" id="a1_2"></td>
							<td><input type="radio" value="1" name="answer1" id="a1_1"></td>
						</tr>

						<tr class="radio-check">
							<th class="bg-light">2</th>
							<td>질문</td>
							<td><input type="radio" value="5" name="answer2" id="a2_5"></td>
							<td><input type="radio" value="4" name="answer2" id="a2_4"></td>
							<td><input type="radio" value="3" name="answer2" id="a2_3"></td>
							<td><input type="radio" value="2" name="answer2" id="a2_2"></td>
							<td><input type="radio" value="1" name="answer2" id="a2_1"></td>
						</tr>

						<tr class="radio-check">
							<th class="bg-light">3</th>
							<td>질문</td>
							<td><input type="radio" value="5" name="answer3" id="a3_5"></td>
							<td><input type="radio" value="4" name="answer3" id="a3_4"></td>
							<td><input type="radio" value="3" name="answer3" id="a3_3"></td>
							<td><input type="radio" value="2" name="answer3" id="a3_2"></td>
							<td><input type="radio" value="1" name="answer3" id="a3_1"></td>
						</tr>
						<tr class="radio-check">
							<th class="bg-light">4</th>
							<td>질문</td>
							<td><input type="radio" value="5" name="answer4" id="a4_5"></td>
							<td><input type="radio" value="4" name="answer4" id="a4_4"></td>
							<td><input type="radio" value="3" name="answer4" id="a4_3"></td>
							<td><input type="radio" value="2" name="answer4" id="a4_2"></td>
							<td><input type="radio" value="1" name="answer4" id="a4_1"></td>
						</tr>
						<tr class="radio-check">
							<th class="bg-light">5</th>
							<td>질문</td>
							<td><input type="radio" value="5" name="answer5" id="a5_5"></td>
							<td><input type="radio" value="4" name="answer5" id="a5_4"></td>
							<td><input type="radio" value="3" name="answer5" id="a5_3"></td>
							<td><input type="radio" value="2" name="answer5" id="a5_2"></td>
							<td><input type="radio" value="1" name="answer5" id="a5_1"></td>
						</tr>
						<tr class="radio-check">
							<th class="bg-light">6</th>
							<td>질문</td>
							<td><input type="radio" value="5" name="answer6" id="a6_5"></td>
							<td><input type="radio" value="4" name="answer6" id="a6_4"></td>
							<td><input type="radio" value="3" name="answer6" id="a6_3"></td>
							<td><input type="radio" value="2" name="answer6" id="a6_2"></td>
							<td><input type="radio" value="1" name="answer6" id="a6_1"></td>
						</tr>
						<tr class="radio-check">
							<th class="bg-light">7</th>
							<td>질문</td>
							<td><input type="radio" value="5" name="answer7" id="a7_5"></td>
							<td><input type="radio" value="4" name="answer7" id="a7_4"></td>
							<td><input type="radio" value="3" name="answer7" id="a7_3"></td>
							<td><input type="radio" value="2" name="answer7" id="a7_2"></td>
							<td><input type="radio" value="1" name="answer7" id="a7_1"></td>
						</tr>
						<tr>
							<td colspan="7"><textarea
									style="width: 100%; height: 150px; resize: none;"
									placeholder="해당 강의가 살려 나가야 할 장점과 개선이 필요한 점(또는 다루어 주었으면 하는 주제나 내용, 강의 진행 방식 등)을 구체적으로 기술하시오."
									name="improvements"></textarea></td>

						</tr>

					</table>
				</form>

			</div>

			<div class="container mt-4 text-center noprint">
				<button type="button" id="evaluationBtn" class="btn"
					style="border: 2px solid #3ac162;">등록</button>
			</div>
	</section>

