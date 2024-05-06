<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>등록금 납부 리스트</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.table td, .table th {
	white-space: nowrap; /* 텍스트의 줄바꿈을 막음 */
	overflow: hidden; /* 넘치는 내용 숨김 */
	text-overflow: ellipsis; /* 넘치는 내용을 줄임표로 표시 */
}
</style>


</head>


<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>등록금 납부 조회</h2>

		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/mypageAsidebar.jsp"%>

			<div class="col-md-10">

				<!-- 메인 div -->
				<div class="container mt-5">
					<h1>등록금 납부 조회</h1>
					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>
					<!-- 필터 및 검색 -->
					<div class="row mb-3">
						<div class="col-md-7">
							<form action="/user/studentList" method="get" class="form-inline">
								<div class="form-group mr-2">
									<label for="deptId">학과 :  </label>&nbsp;&nbsp;&nbsp;
									<label for="studentId">학번 :</label>&nbsp;&nbsp;&nbsp;
									<label for="studentId">이름 : </label>&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;
								</div>

							</form>
						</div>
					</div>
					
					

							<div class="table-responsive">
								<table class="table table-bordered">
									<thead class="thead-light">
										<tr>
											<th>등록 연도</th>
											<th>등록 학기</th>
											<th>장학금 유형</th>
											<th>등록금</th>
											<th>장학금</th>
											<th>납입금</th>
											<th>상태</th>
											<th>납부 확인</th>
										</tr>
									</thead>
									<tbody>

											<tr>
												<td>등록 연도</td>
												<td>등록 학기</td>
												<td>장학금 유형</td>
												<td id="formatTuiAmount"><input type="hidden"
													value="" id="tuiAmount" />등록금</td>
												<td id="formatSchAmount"><input type="hidden"
													value="" id="schAmount" />장학금</td>
												<td id="totalAmount">납입금</td>
												<td><a
													href="/student/tuitionBill?tuiYear=&semester="
													onclick="window.open(this.href, '_blank', 'width=600, height=900'); return false;">

																<button class="btn btn-primary" id="tuitionButton"
																	type="button">등록금 납부</button>

																<button class="btn btn-primary" id="tuitionButton"
																	type="button">등록금 영수증</button>

												</a></td>

											</tr>

									</tbody>
								</table>
							</div>
							<ul class="pagination">

									<li class="page-item">

												<a class="page-link"
													href="/user/studentList/?deptId="></a>

												<a class="page-link"
													href="/user/studentList/?deptId="></a>

												<a class="page-link" href="/user/studentList/"></a>

												<a class="page-link" href="/user/studentList/"></a>

									</li>

							</ul>

							<p class="no--list--p">검색 결과가 없습니다.</p>

				</div>


			</div>
		</div>

	</div>



	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>
