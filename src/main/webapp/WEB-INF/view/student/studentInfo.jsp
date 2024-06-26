<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생 마이페이지</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>


<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>학생 마이 페이지</h2>

		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<%@ include file="/WEB-INF/view/layout/mypageAsidebar.jsp"%>

			<div class="col-md-10">
				<h1 class="mt-5 mb-4">내 정보 조회</h1>
				<div class="row justify-content-center">
					<div class="col-md-7">
						<div class="card">
							<div class="card-body">

                            <div class="text-center">
							<img src="" class="img-fluid border border-1 rounded-2" alt="프로필 이미지" width="60%" height="60%">
							</div>
<form action="#" method="POST" enctype="multipart/form-data">
							  <div class="form-group">
                                    <label for="profilImage">증명사진 업로드</label>
                                    <input type="file" class="form-control" id="profilImage" name="profilImage">
                                    <div class="card mt-3">
                                        <div class="card-header bg-warning">현재 이미지</div>
                                        <div class="card-body">
                                            <div class="text-center">
                                                <img src="" style="width: 40%; height: 40%;">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            							<!-- 수정된 이미지 미리보기 -->
                            							<div class="card mt-3" id="updatedImagePreview"
                            								style="display: none;">
                            								<div class="card-header bg-success text-white">수정된 이미지
                            									미리보기</div>
                            								<div class="card-body">
                            									<div class="text-center">
                            										<img id="updatedImage" src="#"
                            											style="max-width: 100%; max-height: 200px;">
                            									</div>
                            								</div>
                            							</div>

									<div class="form-group">
										<label for="name">이름</label> <input type="text" name="name"
											id="name" class="form-control" value=""
											disabled>
									</div>
									<div class="form-group">
										<label for="birthDate">생년월일</label> <input type="date"
											name="birthDate" id="birthDate" class="form-control"
											value="">
									</div>



									<div class="form-group">
										<label>성별</label><br>
										<div class="form-check form-check-inline">
											<input type="radio" value="남성" name="gender" id="남성"
												class="form-check-input" disabled
												>
											<label for="남성" class="form-check-label">남성</label>
										</div>
										<div class="form-check form-check-inline">
											<input type="radio" value="여성" name="gender" id="여성"
												class="form-check-input" disabled
												>
											<label for="여성" class="form-check-label">여성</label>
										</div>
									</div>


									<p>성별</p>


									<div class="form-group">
										<label for="address">주소</label> <input type="text"
											name="address" id="address" class="form-control"
											value="">
									</div>
									<div class="form-group">
										<label for="tel">전화번호</label> <input type="text" name="tel"
											id="tel" class="form-control" value="">
									</div>
									<div class="form-group">
										<label for="email">이메일</label> <input type="text" name="email"
											id="email" class="form-control" value="">
									</div>
									<div class="form-group">
										<label for="college">단과대</label> <input type="text"
											name="college" id="college" class="form-control"
											value="" disabled>
									</div>
									<div class="form-group">
										<label for="department">학과</label> <input type="text"
											name="department" id="department" class="form-control"
											value="" disabled>
									</div>
									<div class="form-group">
										<label for="semester">학기</label> <input type="text"
											name="semester" id="semester" class="form-control"
											value="3학년 2학기"
											disabled>
									</div>
									<div class="form-group">
										<label for="entranceDate">입학일</label> <input type="date"
											name="entranceDate" id="entranceDate" class="form-control"
											value="" disabled>
									</div>
									<button type="button" class="btn btn-primary" id="update-student-btn">등록하기</button>
								</form>
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
