<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>휴학신청내역조회</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.application-form {
	width: 100%; /* 수정된 부분: 테이블 폭을 더 넓게 조정 */
	margin: 0 auto;
	border-collapse: collapse;
}

.application-form th, .application-form td {
	border: 1px solid #dddddd;
	padding: 8px;
	text-align: left;
}

.application-form th {
	background-color: #f2f2f2;
}

.application-form p {
	margin: 0;
}

/* 수정된 부분: 버튼 가운데 정렬 */
.button-container {
	display: flex;
	justify-content: center;
	margin-top: 20px; /* 버튼과 위의 내용 사이 여백 설정 */
}

 .btn--confirm {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        cursor: pointer;
    }
</style>

</head>


<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>휴학신청내역조회</h2>

		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/sidebarStaff.jsp"%>

			<div class="col-md-10">

				<!-- 메인 div -->
				<div class="container mt-5">
					<h1>휴학신청내역조회</h1>
					
					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>
					<div class="split--div"></div>

					<div class=" flex-column align-items-center" style="width: 100%">
						<div class="document--layout">
							
							<table class="application-form mb-3">
								<tr>
									<th>단 과 대</th>
									<td>단과대이름</td>
									<th>학 과</th>
									<td>물리치료학과</td>
								</tr>
								<tr>
									<th>학 번</th>
									<td>20121718</td>
									<th>학 년</th>
									<td>1학년</td>
								</tr>
								<tr>
									<th>전 화 번 호</th>
									<td>01033987020</td>
									<th>성 명</th>
									<td>노수현</td>
								</tr>
								<tr>
									<th>주 소</th>
									<td colspan="3">마린시티</td>
								</tr>
								<tr>
									<th>기 간</th>
									<td colspan="3">2024년도
										1학기부터&nbsp; 2030년도
										4학기까지</td>
								</tr>
								<tr>
									<th>휴 학 구 분</th>
									<td colspan="3">없음</td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center; height: 200px">
										<p>위와 같이 휴학하고자 하오니 허가하여 주시기 바랍니다.</p>
										<p>2024.09.18.</p>
									</td>
								</tr>
							</table>
						</div>




						<form action="" method="post" class="d-flex flex-column align-items-center">
							<button type="submit" class="btn btn-dark" onclick="return confirm('신청을 취소하시겠습니까?')">취소하기</button>
						</form>


						<div class="button-container d-flex justify-content-center">
							<form action="" method="post" class="d-flex flex-column align-items-center">
								<input type="hidden" name="status" value="승인">
								<button type="submit" class="btn--confirm" onclick="return confirm('해당 신청을 승인하시겠습니까?')">승인하기</button>
							</form>
							&nbsp; &nbsp; &nbsp;
							<form action="" method="post" class="d-flex flex-column align-items-center">
								<input type="hidden" name="status" value="반려">
								<button type="submit" class="btn--confirm" onclick="return confirm('해당 신청을 반려하시겠습니까?')">반려하기</button>
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
