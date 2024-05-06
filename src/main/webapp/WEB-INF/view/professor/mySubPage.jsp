<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내 강의 조회</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.table td, .table th {
	white-space: nowrap; /* 텍스트의 줄바꿈을 막음 */
	overflow: hidden; /* 넘치는 내용 숨김 */
	text-overflow: ellipsis; /* 넘치는 내용을 줄임표로 표시 */
}
	
ul	{
	list-style-type: none;
}

#mysub--btn {
   background: #5fcf80;
   border-radius: 50px;
   padding: 8px 25px;
   border: none;
   color: #fff;
}	
</style>

</head>


<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>내 강의 조회</h2>

		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/professorAsidebar.jsp"%>

			<div class="col-md-10">

				<!-- 메인 div -->
				<div class="container mt-5">
					<!-- 필터 및 검색 -->
					<div class="row mb-3">
						<div class="col-md-7">
							<form action="/professor/mysub" method="post">
								<div>
									<select name="period">

											<option
												value="year">년도&nbsp;학기</option>

									</select>
									<button type="submit" id="mysub--btn">조회</button>
								</div>
							</form>
						</div>
					</div>

							<h4>
								<span style="font-weight: 600;">강의 목록</span>
							</h4>
							<div class="table-responsive " style="height: 500px;">
								<table class="table table-bordered">
									<thead class="thead-light">
										<tr>
											<th>학수번호</th>
											<th>강의명</th>
											<th>강의시간</th>
											<th style="text-align: center;">강의계획서</th>
											<th style="text-align: center;">학생 목록</th>
										</tr>
									</thead>
									<tbody>

											<tr>
												<td>강의번호</td>
												<td>강의이름</td>
												<td>
													강의시간
												</td>
												<td style="text-align: center; padding: 5px;">									
												    <ul class="d-flex justify-content-center sub--plan--view" style="margin: 0; padding: 0;">
												        <li style="height: 24px;"><a href="/professor/syllabus/" onclick="window.open(this.href, '_blank', 'width=1000, height=1000'); return false;">조회</a></li>
												    </ul>
												</td>
												<td style="text-align: center; padding: 5px;">
												    <ul class="d-flex justify-content-center sub--plan--view" style="margin: 0; padding: 0;">
												        <li style="height: 24px;"><a href="/professor/subject/">조회</a></li>
												    </ul>
												</td>
											</tr>

									</tbody>
								</table>
							</div>							
							<ul class="pagination">

									<li class="page-item">

												<a class="page-link"
													href="/user/professorList/?deptId="></a>


												<a class="page-link"
													href="/user/professorList/?deptId="></a>

												<a class="page-link" href="/user/professorList/"></a>

												<a class="page-link" href="/user/professorList/"></a>
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
