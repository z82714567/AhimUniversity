<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학과 등록</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<%@ include file="/WEB-INF/view/layout/header.jsp"%>
	<!-- ======= 상단 제목부분 ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>학과 등록 페이지</h2>

		</div>
	</div>
	<!-- 상단 제목부분 끝 -->
	<div class="container mb-5" style="height:740px;">
		<!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
		<div class="row">
			<!-- 사이드바 메뉴 -->
				<%@ include file="/WEB-INF/view/layout/sidebarCdrList.jsp"%>


			<div class="col-md-10">
				 <section id="pricing" class="pricing">
	 <form action="/department/departmentRegister" method="post">
      <div class="container" data-aos="fade-up">

        <div class="row" style="justify-content: center;">

          <div class="col-lg-4 col-md-6">
            <div class="box" style="margin-top: 13%;">
              <h3 style="text-align: center;">학과 등록</h3>
              <ul>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="text" class="form-control" name="collegeId" id="collegeId"
                    style="width: 226%" placeholder="단과대학번호" autocomplete="off">
                </div>
                <br></br>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="text" class="form-control" name="name" id="name"
                     style="width: 226%" placeholder="학과명" autocomplete="off">
                </div>
              </ul>
              <div class="btn-wrap">
                <button type="submit" class="btn-buy" style="border: none;">등록하기</button>
              </div>
            </div>
          </div>
            </div>
          
          </div>
      		
      	</div>
      	</form>
    
    	</section><!-- End Pricing Section -->
    
    <!-- Register form End Pricing Section -->
				
				<!-- main 끝 -->
				
			</div>
		</div>
	</div>

</body>
</html>
<%@ include file="/WEB-INF/view/layout/footer.jsp"%>

