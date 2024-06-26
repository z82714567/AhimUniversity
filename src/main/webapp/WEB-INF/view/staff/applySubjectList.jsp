<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>강의 신청 리스트</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.table td, .table th {
	white-space: nowrap; /* 텍스트의 줄바꿈을 막음 */
	overflow: hidden; /* 넘치는 내용 숨김 */
	text-overflow: ellipsis; /* 넘치는 내용을 줄임표로 표시 */
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
			<h2>교수 강의신청 리스트</h2>

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
					<h1>교수 강의신청 리스트</h1>
					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>


							<h4>
								<span style="font-weight: 600;">교수 강의신청 목록</span>
							</h4>
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead class="thead-light">
										<tr>
											<th>순번</th>
											<th>교수 아이디</th>
											<th>강의명</th>
											<th>학과명</th>
											<th>전공/교양</th>
											<th>강의시작시간</th>
											<th>강의종료시간</th>
											<th>강의개설연도</th>
											<th>강의개설학기</th>
											<th>강의요일</th>
											<th>이수학점</th>
											<th>총인원</th>
											<th>승인여부</th>
											<th>바로가기</th>

										</tr>
									</thead>
									<tbody>

										
										
											<tr>
												<td>순번</td>
												<td>교수 아이디</td>
												<td>강의명</td>
												<td>학과명</td>
												<td>전공/교양</td>
												<td>강의시작시간</td>
												<td>강의종료시간</td>
												<td>강의개설연도</td>
												<td>강의개설학기</td>
												<td>강의요일</td>
												<td>이수학점</td>
												<td>총인원</td>
												<td>승인여부</td>

												<td style="text-align: center;"><a
													href="/applySubject/detail/"
													class="btn btn-primary">바로가기</a></td>

											</tr>

									</tbody>
								</table>
							</div>


							<p class="no--list--p">신청 내역이 없습니다.</p>

				</div>


			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>
