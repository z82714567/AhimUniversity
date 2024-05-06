<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>커뮤니티</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .community-list-heading {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 20px;
    }

    .community-list-table {
      margin-bottom: 50px;
    }

    .community-list-table th,
    .community-list-table td {
      vertical-align: middle;
    }

    .community-list-table th {
      font-size: 18px;
      font-weight: bold;
    }

    .community-list-table td {
      font-size: 16px;
    }

    .community-list-table td:nth-child(3) {
      width: 150px;
    }

    .community-list-table td:nth-child(4) {
      width: 200px;
    }

    .community-list-table td a {
      color: inherit;
      text-decoration: none;
    }

    .community-list-table td a:hover {
      color: #007bff;
    }

    .write-button {
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
  <%@ include file="/WEB-INF/view/layout/header.jsp"%>
   <!-- ======= 상단 제목부분 ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
      <div class="container">
        <h2>커뮤니티</h2>
      </div>
    </div>
    <!-- 상단 제목부분 끝 -->

  <div class="container mt-5">
    <div class="row">
      <div class="col-lg-12">
        <a href="/community/write" class="btn btn-primary write-button">글쓰기</a>

          <p>게시글이 존재하지 않습니다.</p>


          <table class="table table-bordered community-list-table">
            <thead class="thead-dark">
              <tr>
                <th style="width: 5%;">No</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
              </tr>
            </thead>
            <tbody>

                <tr>
                  <td>커뮤니티아이디</td>
                  <td>
                    <a href="/community/">
                      커뮤니티제목 [<span id="commentCount_">로딩 중...</span>] <!-- 댓글 수를 표시할 위치 -->
                    </a>
                  </td>
                  <td>20121718</td>
                  <td>2024.04.17.</td>
                </tr>

            </tbody>
          </table>

      </div>
    </div>
  </div>
  
  <div style="display: flex; justify-content: center;">

        <nav aria-label="Page navigation" style="text-align: center;">
            <ul class="pagination">

                    <li class="page-item">
                        <a class="page-link" href="?page=1&size=" aria-label="처음">
                            <span aria-hidden="true">처음&laquo;</span>
                            <span class="sr-only">처음</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="?page=&size=" aria-label="이전">
                            <span aria-hidden="true">이전&lt;</span>
                            <span class="sr-only">이전</span>
                        </a>
                    </li>



                                    <li class="page-item active"><span class="page-link">${i}</span></li>

                                    <li class="page-item"><a class="page-link" href="?page=${i}&size=${size}">${i}</a></li>

                                            <li class="page-item active"><span class="page-link">${i}</span></li>


                                            <li class="page-item"><a class="page-link" href="?page=${i}&size=${size}">${i}</a></li>



                                            <li class="page-item active"><span class="page-link">${i}</span></li>

                                            <li class="page-item"><a class="page-link" href="?page=${i}&size=${size}">${i}</a></li>

                                            <li class="page-item active"><span class="page-link">${i}</span></li>

                                            <li class="page-item"><a class="page-link" href="?page=${i}&size=${size}">${i}</a></li>



                    <li class="page-item">
                        <a class="page-link" href="?page=&size=" aria-label="다음">
                            <span aria-hidden="true">다음&gt;</span>
                            <span class="sr-only">다음</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="?page=&size=" aria-label="마지막">
                            <span aria-hidden="true">마지막&raquo;</span>
                            <span class="sr-only">마지막</span>
                        </a>
                    </li>

            </ul>
        </nav>

</div>

					


  <%@ include file="/WEB-INF/view/layout/footer.jsp"%>


</body>
</html>
