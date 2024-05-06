<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>강의실 리스트</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/css/cdr-list.css" rel="stylesheet">	
</head>

<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>강의실 리스트 페이지</h2>
		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5" style="height:740px;">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<!-- 사이드바 메뉴 -->
			<%@ include file="/WEB-INF/view/layout/sidebarCdrList.jsp"%>
			<!-- main 시작 -->
					<div class="col-md-10" style="text-align: center;">
				<h1 class="mt-5 mb-4"></h1>
				<!-- main 넣는 시작 부분 -->
				<div class="container">
					<table class="table table hover">
						<thead>
							<tr>
								<th scope="col">강의실명</th>
								<th scope="col">단과대학명</th>
								<th>settings</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<th>강의실명</th>
								<th>단과대학명</th>
								<th><a href="/room/roomUpdate/" class="me-3"><button type="button" style="border-color:#5FCF80;border-width:1px;font-size:15px;"class="btn btn-outline-update">수정</button></a>
								<a href="/room/delete/"><button type="button" style="border-color:#A0307F;border-width:1px;font-size:15px;" class="btn btn-outline-delete">삭제</button></a></th>
								
							</tr>	

						</tbody>
					</table>
				<!-- main 끝 -->   
				
							
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

					
					<!--pagination end -->
				</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


