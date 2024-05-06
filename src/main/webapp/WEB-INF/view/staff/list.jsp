<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>강의 등록</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery 추가 -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>


<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>강의 등록페이지</h2>

		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/sidebarRegistration.jsp"%>

			
<div class="col-md-10">



				
					<div class="card mt-5">
						<div class="card-header">📖 등록된 강의목록</div>
						<div class="card-body">
							<div class="form--container">
								<table class="table--container table table-striped">
									<thead>
										<tr class="first--tr">
											<th>ID</th>
											<th>강의명</th>
											<th>교수</th>
											<th>강의실</th>
											<th>학과ID</th>
											<th>구분</th>
											<th>연도</th>
											<th>학기</th>
											<th>시간</th>
											<th>이수학점</th>
											<th>정원</th>
											<th>신청인원</th>
										</tr>
									</thead>
									<tbody>

											<tr>

												<td>ID</td>
												<td>강의명</td>
												<td>교수(노수현 교수)</td>
												<td>강의실</td>
												<td>학과ID</td>
												<td>구분</td>
												<td>연도</td>
												<td>학기</td>
												<td>시간</td>
												<td>이수학점</td>
												<td>정원</td>
												<td>신청인원</td>
											</tr>

									</tbody>
								</table>
							</div>
						</div>
						<div style="display: flex; justify-content: center;">

        <nav aria-label="Page navigation" style="text-align: center;">
            <ul class="pagination">

                    <li class="page-item">
                        <a class="page-link" href="?page=1&size=" aria-label="처음">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">처음</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="?page=&size=" aria-label="이전">
                            <span aria-hidden="true">&lt;</span>
                            <span class="sr-only">이전</span>
                        </a>
                    </li>


                                    <li class="page-item active"><span class="page-link"></span></li>

                                    <li class="page-item"><a class="page-link" href="?page=&size="></a></li>

                                            <li class="page-item active"><span class="page-link"></span></li>

                                            <li class="page-item"><a class="page-link" href="?page=&size="></a></li>


                                            <li class="page-item active"><span class="page-link"></span></li>

                                            <li class="page-item"><a class="page-link" href="?page=&size="></a></li>


                                            <li class="page-item active"><span class="page-link"></span></li>


                                            <li class="page-item"><a class="page-link" href="?page=&size="></a></li>




                    <li class="page-item">
                        <a class="page-link" href="?page=&size=" aria-label="다음">
                            <span aria-hidden="true">&gt;</span>
                            <span class="sr-only">다음</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="?page=&size=" aria-label="마지막">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">마지막</span>
                        </a>
                    </li>

            </ul>
        </nav>

</div>
					</div>
				

			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


	
	



</body>
</html>
