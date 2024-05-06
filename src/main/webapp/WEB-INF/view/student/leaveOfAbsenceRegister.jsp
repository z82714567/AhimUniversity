<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생 명단 조회</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif !important;
}

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
			<h2>휴학원</h2>

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
					<h1>휴학원</h1>
					<div class="row">
						<div class="col-md-12">
							<hr>
						</div>
					</div>

					<!-- 필터 및 검색 -->
					<div class="col-md-7 col-lg-8 mx-auto">
						<div class="card">
							<div class="card-body">
								<div class="">
									<form class="needs-validation" novalidate="">
										<div class="row g-3">


											<div class="col-sm-6">
												<label for="firstName" class="form-label">학과(부)</label> <input
													type="text" class="form-control" id="department"
													placeholder="" value="" disabled>
												<div class="invalid-feedback">Valid first name is
													required.</div>
											</div>

											<div class="col-sm-6">
												<label for="lastName" class="form-label">학년</label> <input
													type="text" class="form-control" id="studentGrade"
													placeholder="" value="" disabled>
												<div class="invalid-feedback">Valid last name is
													required.</div>
											</div>



											<div class="col-sm-4">
												<label for="firstName" class="form-label">학번</label> <input
													type="text" class="form-control" id="studentId"
													placeholder="" value="" disabled>
												<div class="invalid-feedback">Valid first name is
													required.</div>
											</div>

											<div class="col-sm-4">
												<label for="lastName" class="form-label">성명</label> <input
													type="text" class="form-control" id="name" placeholder=""
													value="" disabled>
												<div class="invalid-feedback">Valid last name is
													required.</div>
											</div>

											<div class="col-sm-4">
												<label for="lastName" class="form-label">생년월일</label> <input
													type="text" class="form-control" id="birthDate"
													placeholder="" value="" disabled>
												<div class="invalid-feedback">Valid last name is
													required.</div>
											</div>


											<div class="my-3 row">
												<label for="lastName" class="form-label">휴학구분</label> <input
													type="hidden" id="type" value="일반휴학(개인사정,기타)"></input>

												<div class="col-sm-6">
													<div class="form-check">
														<input id="credit" name="paymentMethod" type="radio"
															class="form-check-input" checked="" required="">
														<label class="form-check-label" for="credit">일반휴학(개인사정,기타)</label>
													</div>
													<div class="form-check">
														<input id="debit" name="paymentMethod" type="radio"
															class="form-check-input" required=""> <label
															class="form-check-label" for="debit">병역휴학</label>
													</div>
													<div class="form-check">
														<input id="paypal" name="paymentMethod" type="radio"
															class="form-check-input" required=""> <label
															class="form-check-label" for="paypal">질병휴학</label>
													</div>
													<div class="form-check">
														<input id="paypal" name="paymentMethod" type="radio"
															class="form-check-input" required=""> <label
															class="form-check-label" for="paypal">임신휴학</label>
													</div>
												</div>

												<div class="col-sm-6">
													<div class="form-check">
														<input id="paypal" name="paymentMethod" type="radio"
															class="form-check-input" required=""> <label
															class="form-check-label" for="paypal">출산육아휴학</label>
													</div>
													<div class="form-check">
														<input id="paypal" name="paymentMethod" type="radio"
															class="form-check-input" required=""> <label
															class="form-check-label" for="paypal">창업휴학</label>
													</div>
													<div class="form-check">
														<input id="paypal" name="paymentMethod" type="radio"
															class="form-check-input" required=""> <label
															class="form-check-label" for="paypal">외국어유학과 어학언수</label>
													</div>
													<div class="form-check">
														<input id="paypal" name="paymentMethod" type="radio"
															class="form-check-input" required=""> <label
															class="form-check-label" for="paypal">학기조정휴학</label>
													</div>
												</div>

											</div>


											<div class="my-3 row">
												<label for="lastName" class="form-label">휴학기간</label>

												<div class="col-md-4">
													<select
														id="startYearBox" class="form-select">
														<option value="" selected>년도 선택</option>
													</select><label class="form-label" for="paypal"></label>
												</div>

												<div class="col-md-4">
													<select
														id="fromSemester" class="form-select">
														<option value="" selected>학기 선택</option>
													</select>

												</div>

												<div class="col-md-4">
													<label for="state" class="form-label">부터</label> 
												</div>


												<div class="col-md-4"><select
														id="endYearBox" class="form-select">

														<option value="" selected>년도 선택</option>
													</select> <label class="form-label" for="paypal"></label>
												</div>

												<div class="col-md-4">
													<select
														class="form-select" id="toSemester">
														<option value="" selected>학기 선택</option>
													</select>
												</div>
												
												<div class="col-md-4">
													<label for="state" class="form-label">까지</label> 
												</div>

											</div>

										</div>

										<div class="col-12">
											<label for="email" class="form-label">이메일 </label> <input
												type="email" class="form-control" id="email"
												value="" disabled>
											<div class="invalid-feedback">Please enter a valid
												email address for shipping updates.</div>
										</div>

										<div class="col-12">
											<label for="address" class="form-label">주소</label> <input
												type="text" class="form-control" id="address"
												value="" disabled>
											<div class="invalid-feedback">Please enter your
												shipping address.</div>
										</div>

										<div class="col-12">
											<label for="address2" class="form-label">휴대폰</label> <input
												type="text" class="form-control" id="tel"
												value="" disabled>
										</div>


										<hr class="my-4">

										<div class="form-check"><input type="checkbox" class="form-check-input"
												id="registerInfo" />
											 <a href="#" data-bs-toggle="modal"
												data-bs-target="#staticBackdrop">
												
												<label
												class="form-check-label" for="save-info">휴학 신청시 주의사항
													안내 동의</label></a>
										</div>


										<hr class="my-4">



										<div class="container text-center form-check">
											<input type="hidden" id="appDate"
												value=""></input>
											<h3>오늘</h3>
											<label class="form-check-label" for="same-address">위와
												같이 휴학하고자 하오니 허가하여 주시기 바랍니다. </label>
										</div>
										<hr class="my-4">

										<button class="w-100 btn btn-primary btn-lg" type="button"
											id="loa-btn">휴학 신청</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>

	<!-- 휴학 주의사항 Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="staticBackdropLabel">휴학 주의사항</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<!-- policy 화면 start-->
					<div class="container-fluid py-3">
						<div class="container py-3 text-center">
							<div class="row justify-content-center">

								<div class="sc-5847e39e-2 ihKLTc">
									<div class="sc-1f3e47e0-0 eQXyZv">
										<h3 style="text-align: center">※주의사항※</h3>

										<p style="text-align: left">
											1.휴학은 일반휴학(개인사정, 기타*) 병역휴학, 질병휴학, 임신휴학(1년 이내), 출산·육아휴학(통산 3년
											이내), &nbsp;&nbsp;창업휴학&nbsp;(2년 이내), 외국유학과 어학연수 휴학(1년 이상) 등이
											있다.<br> &nbsp;&nbsp;* 코로나19 등 부득이한 사유가 발생한 경우<br> <br>2.
											휴학 신청은 해당 학기 수업일수의 2분의 1까지 가능 &nbsp;(등록금 납부자에 해당, 미납부자는 지정된
											휴학 신청 기간에만 &nbsp;&nbsp;&nbsp;신청 가능)하며, 휴학 기간은 통산하여 &nbsp;다음
											학기 이내로 한다.<br> <br>3. 각 상품의 설명에서 취소환불 정책에 대한 별도 규정이
											있을 경우, 각 상품 설명의 취소환불 정책이 본 취소환불 &nbsp;&nbsp;&nbsp;정책보다 우선
											적용됩니다.<br>
										</p>
										
										<p style="text-align: left">
											<br>- 4학기 : 의과대학 의예과, 석사과정, 박사과정, 학·석사통합과정 중 학사과정</br>
											<br>- 6학기 : 학사과정, 의학전문대학원 의학과, 치의학전문대학원 치의학과, 한의학전문대학원
											한의학과, 법학전문대학원 &nbsp;&nbsp;&nbsp;법학과 석사과정, 석·박사통합과정, 복합과정,
											학·석사통합과정 중 석사과정</br> <br>- 8학기 : 학·석사 연계과정, 공과대학 건설융합학부 건축학전공</br>
											<br>- 10학기 : 학·석박사통합 연계과정, 학·석사연계과정 중 건설융합학부 건축학전공</br> <br>-
											12학기 : 학·석박사통합 연계과정 중 건설융합학부 건축학전공</br>
										</p>
									</div>
									<div class="sc-1f3e47e0-0 eQXyZv">
										<h3 class="sc-1f3e47e0-1 gjEwSq"></h3>
										<p style="text-align: left">
											<br>3. 다만, 질병, 임신(1년 이내), 출산·육아(통산 3년 이내), 창업(2년 이내),
											병역, 외국유학과 어학연수(1년 이상) 등 &nbsp;&nbsp;&nbsp;부득이한 사유가 발생한 경우에는
											예외로 한다. <br>&nbsp;&nbsp;&nbsp;이 경우 종합병원 또는 전문의
											진단서(질병·임신·출산 휴학), 만8세 이하 자녀의 주민등록등본 또는 가족관계증명서
											&nbsp;&nbsp;(육아휴학), 입영통지서 사본, 군복무확인서, 병적증명서 중 하나(병역휴학).
											법원등기부등본 또는 사업자등록증 &nbsp;&nbsp;(창업휴학) 등 증빙서류를 제출해야 한다.<br>
											<br>4. 일반휴학 및 병역휴학은 인터넷으로도 신청할 수 있으며,병역휴학은 증빙서류를 첨부해야
											한다.&nbsp;&nbsp;일반휴학 후 &nbsp;&nbsp;&nbsp;&nbsp;입영하는 학생은 최소 입영
											7일 전 입영통지서 사본을 소속대학 행정실에 제출하여 일반휴학을 병역휴학으로
											&nbsp;&nbsp;&nbsp;&nbsp;변경하여야 한다.<br> <br>5. 휴학 중
											귀향조치, 폐업, 귀국 등 휴학사유가 소멸되는 경우에는 즉시 소속대학 행정실에 신고하여야 한다.<br>
											<br>6. 등록금 납부 후 휴학원을 제출하여 허가를 받은 학생은 등록금을 복학하는 학기로 이월한다.<br>
											<br>7. 휴학생이 휴학을 연장하고자 할 때에는 추가로 휴학을 신청해야 한다. 복학 또는 휴학
											신청을 하지 않는 경우에는 &nbsp;&nbsp;&nbsp;&nbsp;제적된다.통산 휴학 가능 학기를 초과할
											때에는 휴학을 연장할 수 없다.<br>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- policy 화면 end-->
							<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal" id="cancelButton" >취소</button>
				<button type="button" class="btn btn-primary" id="agreeBtn" data-bs-dismiss="modal">동의</button>
			</div>
			</div>

		</div>
	</div>



	</div>
	<%@ include file="/WEB-INF/view/layout/footer.jsp"%>



</body>
</html>
