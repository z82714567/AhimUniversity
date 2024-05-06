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

				<div class="split--div"></div>
				<ul class="nav nav-tabs mt-5">
					<li class="nav-item"><a
						class="nav-link "
						href="/staff/subject?crud=insert">  강의등록
					</a></li>
					<li class="nav-item"><a
						class="nav-link "
						href="/staff/subject?crud=update">
							강의수정
					</a></li>
					<li class="nav-item"><a
						class="nav-link "
						href="/staff/subject?crud=delete"> 
							강의삭제
					</a></li>
				</ul>




				<!-- 강의 입력 -->

					<div class="card mt-3">
						<div class="card-header">✏ 강의 입력</div>
						<div class="card-body">
							<form action="/staff/subject" method="post"
								class="form--container">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="name">강의명</label> <input type="text"
												class="form-control" id="name" name="name"
												placeholder="강의명을 입력하세요">
										</div>
										<div class="form-group">
											<label for="professorId">교수ID</label> <select
												class="form-control" id="professorId" name="professorId">
												<option value="">교수를 선택하세요</option>
											</select>
										</div>
										<div class="form-group">
											<label for="roomId">강의실</label> <select
												class="form-control" id="roomId" name="roomId">
												<option value="">강의실을 선택하세요</option>
											</select>
										</div>
										<div class="form-group">
											<label for="deptId">학과</label> <select
												class="form-control" id="deptId" name="deptId">
												<option value="">학과를 선택하세요</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label>강의 구분</label>
											<div class="form-check">
												<input class="form-check-input" type="radio" id="major"
													name="type" value="전공"> <label
													class="form-check-label" for="major">전공</label>
											</div>
											<div class="form-check">
												<input class="form-check-input" type="radio" id="culture"
													name="type" value="교양"> <label
													class="form-check-label" for="culture">교양</label>
											</div>
										</div>
										<div class="form-group">
											<label for="subYear">연도</label> <input type="text"
												class="form-control" id="subYear" name="subYear"
												placeholder="연도를 입력하세요">
										</div>
										<div class="form-group">
											<label for="semester">학기</label> <input type="text"
												class="form-control" id="semester" name="semester"
												placeholder="학기를 입력하세요">
										</div>
										<div class="form-group">
											<label for="subDay">요일</label> <select class="form-control"
												id="subDay" name="subDay">
												<option value="월">월</option>
												<option value="화">화</option>
												<option value="수">수</option>
												<option value="목">목</option>
												<option value="금">금</option>
											</select>
										</div>
										<div class="form-group">
											<label for="startTime">시작시간</label> <input type="text"
												class="form-control" id="startTime" name="startTime"
												placeholder="시작시간을 입력하세요">
										</div>
										<div class="form-group">
											<label for="endTime">종료시간</label> <input type="text"
												class="form-control" id="endTime" name="endTime"
												placeholder="종료시간을 입력하세요">
										</div>
										<div class="form-group">
											<label for="grades">학점</label> <input type="text"
												class="form-control" id="grades" name="grades"
												placeholder="학점을 입력하세요">
										</div>
										<div class="form-group">
											<label for="capacity">정원</label> <input type="text"
												class="form-control" id="capacity" name="capacity"
												placeholder="정원을 입력하세요">
										</div>
									</div>
								</div>
								<button type="submit" class="btn btn-primary" id='submit'>입력</button>
							</form>
						</div>
					</div>
					





				<!-- 강의 수정 -->

					<div class="card mt-3">
						<div class="card-header">📑 강의 수정</div>
						<div class="card-body">
							<form action="/staff/subject" method="post"
								class="form--container">
								<input type="hidden" name="_method" value="put" />

								<div class="form-group">
									<label for="name">강의번호</label> <select name="id"
										class="form-control">

											<option value="">아이디 (이름)</option>


									</select> <label for="name">강의요일</label> <select name="subDay"
										class="form-control">
										<option value="월">월</option>
										<option value="화">화</option>
										<option value="수">수</option>
										<option value="목">목</option>
										<option value="금">금</option>
									</select><br>
								</div>
								<div class="form-row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="name">강의명</label> <input type="text"
												class="form-control" id="name" name="name"
												placeholder="강의명을 입력하세요">
										</div>
										<div class="form-group">
											<label for="roomId">강의실</label> <input type="text"
												class="form-control" id="roomId" name="roomId"
												placeholder="강의실을 입력하세요">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="startTime">변경 시작시간</label> <select
												name="startTime" class="form-control">

													<option value="">시작시간</option>

											</select>
										</div>
										<div class="form-group">
											<label for="endTime">변경 종료시간</label> <select name="endTime"
												class="form-control">

													<option value="">종료시간</option>

											</select>
										</div>
										<div class="form-group">
											<label for="capacity">정원</label> <input type="text"
												class="form-control" id="capacity" name="capacity"
												placeholder="정원 입력하세요">
										</div>
									</div>
								</div>
								<button type="submit" class="btn btn-primary" id='update'>수정</button>
							</form>
						</div>
					</div>

					<div class="card mt-3">
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
												<td>과목아이디</td>
												<td>과목이름</td>
												<td>과목교수아이디</td>
												<td>과목강의실명</td>
												<td>부서아이디</td>
												<td>타입</td>
												<td>시작</td>
												<td>종료</td>
												<td>15:30</td>
												<td>학점</td>
												<td>정원</td>
												<td>신청인원</td>
											</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>



				<!-- 강의 삭제 -->

					<div class="card mt-3">
						<div class="card-header">🗑 강의 삭제</div>
						<div class="card-body">
							<span class="delete">삭제할 강의명을 클릭해주세요</span>
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
										</tr>
									</thead>
									<tbody>

											<tr>
												<td>ID</td>
												<td><a href="/staff/subjectDelete?id=">강의명</a></td>
												<td>교수</td>
												<td>강의실</td>
												<td>학과ID</td>
												<td>구분</td>
												<td>연도</td>
												<td>학기</td>
												<td>시간</td>
												<td>이수학점</td>
												<td>정원</td>
											</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>


				<!-- 강의 조회 -->

					<div class="card mt-3">
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
												<td>교수</td>
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
					</div>


			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>





</body>
</html>
