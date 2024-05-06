<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학사관리시스템</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.table td, .table th {
	white-space: nowrap; /* 텍스트의 줄바꿈을 막음 */
	overflow: hidden; /* 넘치는 내용 숨김 */
	text-overflow: ellipsis; /* 넘치는 내용을 줄임표로 표시 */
	text-align: center;
}

.table th {
	text-align: center;
}
</style>

</head>


<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>강의신청 목록</h2>

		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/professorAsidebar.jsp"%>

			<div class="col-md-10">

				<!-- 메인 div -->
				<div class="container mt-5" style="height: 582px;">
					<div class="row">
						<div class="col-md-12"></div>
					</div>
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead class="thead-light">
								<tr>
									<th>강의명</th>
									<th>강의실</th>
									<th>전공/교양</th>
									<th>시작시간</th>
									<th>종료시간</th>
									<th>개강년도</th>
									<th>개강학기</th>
									<th>요일</th>
									<th>승인상태</th>
									<th>반려이유</th>
									<th></th>

								</tr>
							</thead>
							<tbody>

									<tr>
										<td>강의명</td>
										<td>강의실</td>
										<td>전공/교양</td>
										<td>시작시간</td>
										<td>종료시간</td>
										<td>개강년도</td>
										<td>개강학기</td>
										<td>요일</td>
										<td>승인상태</td>
										<td>반려이유</td>
										<td><a href="/professor/update-list/"
											class="btn btn-primary">수정</a></td>
									</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>
