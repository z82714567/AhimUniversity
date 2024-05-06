<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 상세보기</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.breadcrumbs {
	background-color: #f9f9f9;
	padding: 20px 0;
}

.breadcrumbs h2 {
	margin-bottom: 0;
	color: #333;
}

.list-group-item {
	border: none;
}

.list-group-item:nth-child(even) {
	background-color: #f9f9f9;
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

.btn--delete {
	display: inline-block;
	padding: 10px 20px;
	background-color: #bb2d3b;
	color: white;
	border: none;
	border-radius: 5px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	cursor: pointer;
}

.btn--update {
	display: inline-block;
	padding: 10px 20px;
	background-color: #0b5ed7;
	color: white;
	border: none;
	border-radius: 5px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	cursor: pointer;
}

.btn--confirm:hover {
	background-color: #45a049;
}

/* 숨김 처리 */
#commentForm {
	display: none;
}

.comment-actions {
	margin-top: 10px;
}

.comment-info {
	margin-bottom: 5px;
}

.comment-content {
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h3>게시글 상세보기</h3>
		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mt-5 mb-5  border border-1 rounded-2 pt-3 pb-5">
		<div class="row ">
			<div class="col-lg-12">
				<h2>커뮤니티 제목<h2>
				<hr>
				<div class="border border-1 rounded-2 p-2" style="width: 300px;">
					<strong>작성자:</strong> 20121718 <br> <strong>작성 시간 :</strong>
					2024.3.27.<br>

											<strong>수정 시간 :</strong> 2024.3.28.



				</div>
				<hr>
				<div style="height: 300px;">
					<p>커뮤니티 내용</p>
				</div>

				<hr>
				<div class="btn-group">
					<a href="/community/list"><button class="btn--confirm me-3">목록으로</button></a>
					<!-- 삭제 버튼 -->
					<%-- 삭제 버튼 표시 여부를 결정하는 조건문 --%>

						<a href="/community/update/"><button
								class="btn--update me-3">게시글 수정</button></a>
						<form id="deleteForm"
							action="/api/Community/delete/" method="post">
							<input type="hidden" name="_method" value="DELETE">
							<button type="submit" class="btn--delete ">게시글 삭제</button>
						</form>



				</div>

				<hr />
				<!-- 댓글 작성 버튼 -->
				<button id="showCommentFormBtn" class="btn--confirm">댓글 작성</button>

				<!-- 댓글 작성 폼 -->
				<form id="commentForm" action="/api/comment/create" method="post">
					<div class="form-group">
						<label for="commentContent">댓글 내용</label>
						<textarea class="form-control" id="commentContent"
							name="commentContent" rows="3"></textarea>
					</div>
					<!-- 숨은 필드로 userId와 communityId 추가 -->
					<input type="hidden" id="userId" name="userId"
						value=""> <input type="hidden"
						id="communityId" name="communityId" value="">
					<input type="hidden" id="role" name="role"
						value="">

					<button type="submit" class="btn btn-primary">댓글 등록</button>

				</form>

				<hr>
				<h4>댓글</h4>

					<ul class="list-group">

							<li class="list-group-item">
								<div class="row">
									<div class="col-md-9">
										<div class="comment-info border border-1 rounded-2 p-2" style="width: 250px;">
											<strong>작성자 :</strong>

											<br> <strong>작성 시간 :</strong> 2024.04.17.<br>

											<strong>수정 시간 :</strong> 2024.04.18.


										</div>

										<div class="comment-content p-2"><h6>댓글내용</h6></div>
										<!-- 수정 폼 -->
										<div class="comment-edit-form" style="display: none;">
											<form id="editCommentForm_" method="post">
												<input type="hidden" name="_method" value="put">
												<textarea class="form-control" name="editedContent">내용</textarea>
												<button type="button"
													class="btn btn-success btn-sm mt-2 save-edit-comment-btn"
													data-comment-id="">저장</button>
											</form>
										</div>

									</div>
									<div class="col-md-3">

											<div class="comment-actions text-right me-3">
												<!-- 수정 버튼 클릭시 수정 폼 보이도록 설정 -->
												<a href="#"
													class="btn btn-primary btn-sm edit-comment-btn mb-2">수정</a>
												<form action="/api/comment/delete/"
													method="post" class="delete-comment-form">
													<input type="hidden" name="_method" value="DELETE">
													<button type="submit"
														class="btn btn-danger btn-sm delete-comment-btn">삭제</button>
												</form>
											</div>

									</div>
								</div>
							</li>

					</ul>




				<c:if test="${empty community.comments}">
					<p>댓글이 없습니다.</p>
				</c:if>
			</div>
		</div>
	</div>


	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>
