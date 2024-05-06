<%@page import="org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<style>
body > div{
	padding-top: 100px;
}
main {
	height: 500px;
}
.table {
	width: 1000px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>공지사항</h2>
		</div>
	</div>
	<!-- 상단 제목부분 끝 -->

<!-- 세부 메뉴 + 메인 -->
<div class="container mb-5">
	<div class="row">
		<!-- 사이드바 메뉴 -->
		<aside class="sidebar col-md-2 mt-5">
			<div class="card">
					<div class="card-header">
						<h5 class="mb-0">학사정보</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item p-3"><a href="/notice" class="text-black"><i
								class="fas fa-user mr-2"></i> 공지사항</a></li>
						<li class="list-group-item p-3"><a href="/schedule" class="text-black"><i
								class="fas fa-lock mr-2"></i> 학사일정</a></li>

						<li class="list-group-item p-3"><a href="/schedule/list" class="text-black"><i
								class="fas fa-lock mr-2"></i> 학사일정 등록</a></li>

					</ul>
				</div>
		</aside>
	<!-- 메인 div -->
	
	<div class="col-md-10">
	<h1>공지사항</h1>
		<div class="split--div"></div>


		<!-- 공지 검색 -->

		<form action="/notice/search" method="get" class="form--container">
				<select class="input--box" name="type">
					<option value="title">제목</option>
					<option value="keyword">제목+내용</option>
				</select>
				<input type="text" name="keyword" class="input--box" placeholder="검색어를 입력하세요"> 
				<input type="submit" class="button" value="검색">
			</form>
			
			<table class="table table-striped">

            <thead class="thead-dark">
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">말머리</th>
                    <th scope="col" style="width: 450px">제목</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
            </thead>
            <tbody>

                    <tr class="table-row" onclick="location.href='/notice/read?id=';">
                        <td>공지번호</td>
                        <td>공지카테고리</td>
                        <td>공지제목</td>
                        <td>2024.04.17.</td>
                        <td>555</td>
                    </tr>

            </tbody>

            <tr>
                <td colspan="5">
                    <h5>해당 키워드로 작성된 공지글이 없습니다.</h5>
                </td>
            </tr>

</table>

			<div class="pagination">
    <ul class="pagination">

                    <li class="page-item"><a class="page-link" href="/notice/search/?keyword=">인덱스</a></li>

                    <li class="page-item"><a class="page-link" href="/notice/list/">인덱스</a></li>

    </ul>
</div>

			


		<!-- 공지 조회 -->

			<form action="/notice/search" method="get" class="form--container">
				<select class="input--box" name="type">
					<option value="title">제목</option>
					<option value="keyword">제목+내용</option>
				</select>
				<input type="text" name="keyword" class="input--box" placeholder="검색어를 입력하세요"> 
				<input type="submit" class="button" value="검색">
			</form>

			<div class="text-end">
        <a href="/notice?crud=write" class="btn btn-primary">등록</a>
        </div>

			<table class="table table-hover">

            <thead>
                <tr class="first--tr">
                    <th scope="col">번호</th>
                    <th scope="col">말머리</th>
                    <th scope="col" style="width: 450px">제목</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
            </thead>
            <tbody>

                    <tr class="second--tr" onclick="location.href='/notice/read?id=';">
                        <td>공지번호</td>
                        <td>공지카테고리</td>
                        <td>공지제목</td>
                        <td>2024.04.17.</td>
                        <td>555</td>
                    </tr>

            </tbody>

            <tbody>
                <tr>
                    <td colspan="5" class="text-center">공지사항이 없습니다. 작성해주세요.</td>
                </tr>
            </tbody>

</table>

			
			<div class="pagination">
    <ul class="pagination">

                    <li class="page-item"><a class="page-link" href="/notice/search/?keyword=">1</a></li>

                    <li class="page-item"><a class="page-link" href="/notice/list/">1</a></li>

      
    </ul>
      
</div>




		<!-- 공지 상세 조회 -->

			<div class="container">
				<table class="table">
					<tr class="title">
						<td class="type">제목</td>
						<td>공지카테 공지제목</td>
					</tr>
					<tr class="content--container">
						<td class="type">내용</td>
						<td>공지내용<br><br><img alt="" src="" width="600" height="800" onerror="this.style.display='none'"></td>
					</tr>
				</table>

				<div class="btn-group">
    <a href="/notice" class="btn btn-primary">목록</a>

        <a href="/notice/update?id=" class="btn btn-secondary">수정</a>
        <a href="/notice/delete?id=" class="btn btn-danger">삭제</a>

</div>

			</div>



		<!-- 공지 수정 -->

		<div class="container">
			<form action="/notice/update" method="post">
				<input type="hidden" name="_method" value="put" />
				<input type="hidden" name="id" value="">
					<table class="table">
						<tr class="title">
							<td class="type">제목</td>
							<td>공지카테 <input type="text" name="title" class="update--box" value="공지제목"></td>
						</tr>
						<tr class="content--container">
							<td class="type">내용</td>
							<td><textarea rows="20" cols="100" class="textarea" name="content">공지내용</textarea></td>
						</tr>
						
					</table>
				<div class="select--button">
					<input type="submit" value="수정" class="btn btn-danger">
				</div>
			</form>
		</div>



		<!-- 공지 등록 -->

			<div class="write--div">
				<form action="/notice/write" method="post" enctype="multipart/form-data">
					<div class="title--container">
						<div class="category">
							<select name="category" class="input--box">
								<option value="[일반]">[일반]</option>
								<option value="[학사]">[학사]</option>
								<option value="[장학]">[장학]</option>
							</select>
						</div>
						<div class="title">
							<input type="text" class="form-control form-control-sm" name="title" placeholder="제목을 입력하세요" required="required" style="width: 900px;">
						</div>
					</div>
					<div class="content--container">
						<textarea name="content" class="form-control" cols="100" rows="20" placeholder="내용을 입력하세요"></textarea>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="customFile" name="file" accept=".jpg, .jpeg, .png"> <label class="custom-file-label" for="customFile"></label>
					</div>
					<div class="text-start mt-3">
					<a href="/notice" class="btn btn-warning">공지사항 목록</a> 
					<input type="submit" class="btn btn-primary" value="등록">
					</div>
					
				</form>

			</div>

		</div>
</div>
</div>
	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>