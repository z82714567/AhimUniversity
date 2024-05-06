<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>휴학신청내역조회</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
 
<style>
    .list--table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    .list--table th,
    .list--table td {
        padding: 10px;
        text-align: center;
    }

    .list--table th {
        background-color: #f2f2f2;
    }

    .list--table tbody tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .list--table tbody tr:hover {
        background-color: #e9e9e9;
    }

    .no--list--p {
        text-align: center;
        font-style: italic;
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

    .btn--confirm:hover {
        background-color: #45a049;
    }
</style>


</head>


<body>
<%@ include file="/WEB-INF/view/layout/header.jsp"%>
 <!-- ======= 상단 제목부분 ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>휴학신청내역조회</h2>

      </div>
    </div>
    <!-- 상단 제목부분 끝 -->
<div class="container mb-5"> <!-- 왼쪽 사이드바 너비 만큼 메인 컨텐츠를 이동시킴 -->
  <div class="row">
     <%@ include file="/WEB-INF/view/layout/sidebarStaff.jsp"%>

    <div class="col-md-10">
      
      <!-- 메인 div -->
	<div class="container mt-5">
    <h1>휴학신청내역조회</h1>
    <div class="row">
        <div class="col-md-12">
            <hr>
        </div>
    </div>
   <div class="split--div"></div>



        <div class="d-flex flex-column align-items-center" style="width: 100%">
            <table class="list--table">
                <thead>
                    <tr>
                        <th>신청일자</th>
                        <th>신청자 학번</th>
                        <th>구분</th>
                        <th>시작학기</th>
                        <th>종료학기</th>
                        <th>신청서 확인</th>
                    </tr>
                </thead>
                <tbody>

                  
                        <tr>
                            <td>2024.09.01.</td>
                            <td>20121718</td>
                            <td>1</td>
                            <td>2024년도&nbsp;2학기</td>
                            <td>2024년도&nbsp;2학기</td>
                            <td><a href="#" class="btn--confirm">확인하기</a></td>
                        </tr>

                </tbody>
            </table>
        </div>

        <p class="no--list--p">대기 중인 신청 내역이 없습니다.</p>



</div>


    </div>
  </div>
</div>

  <%@ include file="/WEB-INF/view/layout/footer.jsp"%>

</body>
</html>
