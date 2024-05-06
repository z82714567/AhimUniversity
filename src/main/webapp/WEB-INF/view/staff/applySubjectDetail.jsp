<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>교수 강의신청 상세조회</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.pro-card {
	width: 100%;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 15px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.pro-card-title {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

.pro-card-content {
	font-size: 16px;
	margin-bottom: 5px;
}

.table th {
	width: 20%; /* 원하는 너비로 조정하세요 */
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>교수 강의신청 상세조회</h2>
		</div>
	</div>
	<div class="container mb-5">
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/sidebarStaff.jsp"%>
			<div class="col-md-10">
				<div class="container mt-5">
					<div class="h1">교수 강의신청 상세조회</div>
					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>
					<div class="split--div"></div>
					<div class="flex-column align-items-center" style="width: 100%">
						<div class="document--layout">
							<div class="pro-card">
								<div class="card-body">
									<table class="table table-bordered">
										<tbody>
											
											<tr>
												<th scope="row">강의명</th>
												<td>강의명</td>
											</tr>
											<tr>
												<th scope="row">강의실</th>
												<td>강의실</td>
											</tr>
											<tr>
												<th scope="row">학과명</th>
												<td>학과명</td>
											</tr>
											<tr>
												<th scope="row">전공/교양</th>
												<td>전공</td>
											</tr>
											<tr>
												<th scope="row">강의시작시간</th>
												<td>${subject.startTime}</td>
											</tr>
											<tr>
												<th scope="row">강의시작시간</th>
												<td>15:30</td>
											</tr>
											<tr>
												<th scope="row">강의개설연도</th>
												<td>2024</td>
											</tr>
											<tr>
												<th scope="row">강의개설학기</th>
												<td>1</td>
											</tr>
											<tr>
												<th scope="row">강의요일</th>
												<td>수</td>
											</tr>
											<tr>
												<th scope="row">이수학점</th>
												<td>22</td>
											</tr>
											<tr>
												<th scope="row">총인원</th>
												<td>10</td>
											</tr>
											<tr>
												<th scope="row">승인 여부</th>
												<td>예스</td>
											</tr>
											<tr>
												<th scope="row">사유</th>
												<td><textarea class="form-control" rows="3" id="reason"
														name="reason" style="height: 300px">이유</textarea></td>
											</tr>
										</tbody>
									</table>
									<div class="button-container d-flex justify-content-center">

										<button type="button" class="btn btn-primary" id="approveBtn">승인하기</button>
										
										&nbsp; &nbsp; &nbsp;
										<button type="button" class="btn btn-primary" id="rejectBtn">반려하기</button>
									</div>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>
	








</body>
</html>
