<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학점 내역</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.table td, .table th {
	white-space: nowrap; /* 텍스트의 줄바꿈을 막음 */
	overflow: hidden; /* 넘치는 내용 숨김 */
	text-overflow: ellipsis; /* 넘치는 내용을 줄임표로 표시 */
}

.nav-item>.active {
	color: #5fcf80 !important;
}

.nav-item>.nav-link {
	color: #37423B;
}

link:focus, .nav-link:hover {
	color: #5fcf80 !important;
}
</style>


</head>


<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>성적</h2>

		</div>
	</div>

	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/studentGradeSidebar.jsp"%>

			<div class="col-md-10">

				<!-- 메인 div -->
				<div class="container mt-5">
					<H3>성적 조회</H3>

					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>

					<ul class="nav nav-underline nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#id1">금학기 성적</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#id2">학기별 성적 조회</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#id3">누계 성적</a></li>
					</ul>
					<div class="tab-content">



						<div id="id1" class="tab-pane fade  show active ">

									<div class="container mt-4">
										<H5>금학기 성적 조회</H5>

										<div class="table-responsive">
											<table class="table table-bordered">
												<thead class="thead-light">
													<tr>
														<th>연도</th>
														<th>학기</th>
														<th>과목번호</th>
														<th>과목명</th>
														<th>강의 구분</th>
														<th>이수 학점</th>
														<th>성적</th>
														<th>강의 평가</th>
													</tr>
												</thead>
												<tbody>


															<tr>
																<td>연도</td>
																<td>학기</td>
																<td>과목번호</td>
																<td>과목명</td>
																<td>강의 구분</td>
																<td>이수 학점</td>
																<td>성적</td>
																<td>강의 평가</td>
															</tr>


												</tbody>
											</table>

										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<hr>
										</div>
									</div>

									<div class="container mt-4">
										<H5>금학기 총점 조회</H5>

										<div class="table-responsive">
											<table class="table table-bordered">
												<thead class="thead-light">
													<tr>
														<th>연도</th>
														<th>학기</th>
														<th>신청 학점</th>
														<th>취득 학점</th>
														<th>학점 평균</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>연도</td>
														<td>학기</td>
														<td>신청 학점</td>
														<td>취득 학점</td>
														<td>학점 평균</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>


									<p class="no--list--p">성적 조회 기간이 아닙니다.</p>


						</div>
						<div id="id2" class="tab-pane fade">
							<div class="container mt-4">
								<H5>학기별 성적 조회</H5>
								<div class="row">
									<div class="col-md-12">
										<form action="/student/list/search" method="get" class="mb-4">
											<input type="hidden" name="gradeTab" value="">

											<div class="row">
												<div class="col-md-3">
													<label for="subYear">연도</label> <input type="number"
														class="form-control" value=""
														name="subYear" id="subYear" min="2005" max="2024">
												</div>
												<div class="col-md-3">
													<label for="subSemester">학기</label> <select
														class="form-control" name="semester" id="subSemester">
														<option value="1">1학기</option>
														<option value="2">2학기</option>
													</select>
												</div>
												<div class="col-md-3">
													<label for="type">분류</label> <select class="form-control"
														name="type" id="type">
														<option value="전체">전체</option>
														<option value="전공">전공</option>
														<option value="교양">교양</option>
													</select>
												</div>
											</div>
											<button type="submit" class=" btn--confirm mt-3">
												<i class="fas fa-search"></i> 검색
											</button>
										</form>
									</div>
								</div>
								<!-- 강의 목록 -->
								<div class="row">
									<div class="col-md-12">

												<div class="table-responsive">
													<table class="table table-bordered">
														<thead>
															<tr>
																<th>연도/학기</th>
																<th>과목번호</th>
																<th style="width: 200px;">강의명</th>
																<th>강의구분</th>
																<th>이수 학점</th>
																<th>성적</th>
															</tr>
														</thead>
														<tbody>

																	<tr>
																		<td>연도/학기</td>
																		<td>과목번호</td>
																		<td class="sub--list--name">강의명</td>
																		<td>강의구분</td>
																		<td>이수 학점</td>
																		<td>성적</td>
																	</tr>

														</tbody>
													</table>
												</div>

												<p class="no--list--p">검색 결과가 없습니다.</p>

									</div>
								</div>
							</div>
						</div>
						<!-- id3 -->
						<div id="id3" class="tab-pane fade">

							<div class="container mt-4">
								<H5>학기별 총점 조회</H5>



										<div class="table-responsive">
											<table class="table table-bordered">
												<thead class="thead-light">
													<tr>
														<th>연도</th>
														<th>학기</th>
														<th>신청학점</th>
														<th>취득학점</th>
														<th>학점 평균</th>
													</tr>
												</thead>
												<tbody>

														<tr>
															<td>연도</td>
															<td>학기</td>
															<td>신청학점</td>
															<td>취득학점</td>
															<td>학점 평균</td>
														</tr>

												</tbody>
											</table>
										</div>

										<p class="no--list--p">확인 할 수 있는 성적 정보가 없습니다.</p>


								<div class="container mt-5">
									<H5>전체 총점 조회</H5>

									<div class="table-responsive">
										<table class="table table-bordered">
											<thead class="thead-light">
												<tr>
													<th>총 신청학점</th>
													<th>총 취득학점</th>
													<th>총 학점 평균</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>총 신청학점</td>
													<td>총 취득학점</td>
													<td class="rounder average">총 학점 평균</td>
												</tr>
											</tbody>
										</table>
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
