<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mj.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="ko"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/resources/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
  <%@include file = "../../../common/xdmin/includeV1/head.jsp" %>
   
  </head>

  <body>
   <%@include file = "../../../common/xdmin/includeV1/frontMenu.jsp" %>
          
           <!--  Content Wrapper -->
	<div class="content-wrapper">
	<!-- Content -->	
		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">극장 /</span> 상영관 관리 </h4>
			<form method="post" name="formList" id="formList">
			<input type="hidden" name="tdpxSeq">
			<input type="hidden" name="thisPage" value="${vo.thisPage}"
		<!-- 	Table -->
		
			<div class="card">
				<div class="card-body">
					<div class="row">
							<div class="col p-2">
								<select id="shDelNy" name="shDelNy" class="form-select">
									<option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
									<option value="0" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
									<option value="1"<c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
								</select>	
							</div>
							<div class="col p-2">
								<select id="shOptionDate" name="shOptionDate" class="form-select">
									<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>날짜</option>
									<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
									<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
								</select>	
							</div>
							<div class="col p-2">
								<input type="text" class="form-control" id="startDate" name="startDate" placeholder="시작일">
							</div>
							<div class="col p-2">
								<input type="text" class="form-control" id="endDate" name="endDate" placeholder="종료일">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<select id="shOption" name="shOption" class="form-select">
									<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
										<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>상영관 코드</option>
										<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>상영관명</option>
										<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>극장명</option>
								</select>	
							</div>
							<div class="col p-2">
								<input type="text" class="form-control" id="shValue" name="shValue" value="${vo.shValue}" placeholder="검색어">
							</div>
							<div class="col p-2">
								<button type="submit" class="btn btn-warning" id="btnSearch">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button type="button" class="btn btn-danger" id="btnReset">
									<i class="fa-solid fa-rotate-left"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				
			<div class="card">
				<h5 class="card-header">상영관 리스트</h5>
				<div class="card-body">
					<div class="table-responsive text-nowrap">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>
										<div class="form-check g-2">
											<input class="form-check-input" type="checkbox" id="theaterListCheck" value="">	
										</div>
									</th>	
									<th>#</th>
									<th>극장명</th>
									<th>상영관이름</th>
									<th>전체 좌석수</th>
									<th>세로 좌석수(col)</th>
									<th>가로 좌석수(row))</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="form-check g-2">
											<input class="form-check-input" type="checkbox" id="theaterListCheck" value="">	
										</div>
									</td>
									<td>1</td>
									<td>코엑스</td>
									<td>1관</td>
									<td>32</td>
									<td>4</td>
									<td>8</td>
								</tr>
									
							</tbody>	
						</table>
					</div>
				</div>
				<div class="card-footer">
					<!-- pagination s -->
					<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
					<!-- pagination e -->
				</div>	
				<div class="demo-inline-spacing">
					<button type="button" class="btn btn-primary">
						<i class="fa-solid fa-file-arrow-down"></i>
					</button>
					<button type="button" class="btn btn-success" onclick="location.href='../theater/plexForm.html'">
						<i class="fa-solid fa-plus"></i>
					</button>
					<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#backDropModal">
						<i class="fa-solid fa-minus"></i>
					</button>
				</div>
				<div class="modal fade" id="backDropModal" data-bs-backdrop="static" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="backDropModalTitle">삭제</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">정말 삭제하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
								<button type="button" class="btn btn-danger">삭제</button>
							</div>
						</div>	
					</div>
				</div>
			</div>
			</form>

     
          <!-- / Content -->
		<%@include file = "../../../common/xdmin/includeV1/footer.jsp" %>
         

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="/resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="/resources/assets/vendor/js/bootstrap.js"></script>
    <script src="/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="/resources/assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="/resources/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
