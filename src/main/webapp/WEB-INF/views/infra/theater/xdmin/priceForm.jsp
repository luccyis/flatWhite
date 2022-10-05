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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">극장 /</span> 관람료 </h4>

		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">영화 관람료 정보 추가</h5>
				<form id="form" method="post">
					<%@include file="priceVo.jsp" %>
					
					<div class="card-body">
						<div class="row">
							<div class="col-4 p-2">
								<label class="form-label" for="priceSelectTheater">극장 선택</label>
								<select class="form-select" id="priceSelectTheater" name="tdthBranch">
									<c:forEach items="${list}" var="list" varStatus="status">
										<option value="${status.count}"<c:if test="${item.tradTheater_tdthSeq eq status.count}">selected</c:if>><c:out value="${list.tdthBranch} "/></option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="table-responsive text-nowrap">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>요일</th>
									<th>상영시간</th>
									<th>일반 가격</th>
									<th>청소년 가격</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td rowspan="2">주중</td>
									<td>조조</td>
									<td>
										<input type="text" class="form-control"  name="thprPrice" value="<c:out value="${item.thprPrice} "/>" id="inputPrice">
									</td>
									<td>
										<input type="text" class="form-control"  name="tdpxTotalSeatNum" value="<c:out value="${item.thprPrice} "/>" id="inputPrice">
									</td>
								</tr>
								<tr>
									<!-- <td>월~목</td> -->
									<td>일반</td>
									<td>
										<input type="text" class="form-control"  name="tdpxTotalSeatNum" value="<c:out value="${item.thprPrice} "/>" id="inputPrice">
									</td>
									<td>
										<input type="text" class="form-control"  name="tdpxTotalSeatNum" value="<c:out value="${item.thprPrice} "/>" id="inputPrice">
									</td>
								</tr>
								<tr>
									<td rowspan="2">주말<br>공휴일</td>
									<td>조조</td>
									<td>
										<input type="text" class="form-control"  name="tdpxTotalSeatNum" value="<c:out value="${item.thprPrice} "/>" id="inputPrice">
									</td>
									<td>
										<input type="text" class="form-control"  name="tdpxTotalSeatNum" value="<c:out value="${item.thprPrice} "/>" id="inputPrice">
									</td>
								</tr>
								<tr>
									<!-- <td>금~일<br>공휴일</td> -->
									<td>일반</td>
									<td>
										<input type="text" class="form-control"  name="tdpxTotalSeatNum" value="<c:out value="${item.tdpxTotalSeatNum} "/>" id="inputPrice">
									</td>
									<td>
										<input type="text" class="form-control"  name="tdpxTotalSeatNum" value="<c:out value="${item.tdpxTotalSeatNum} "/>" id="inputPrice">
									</td>
								</tr>
							</tbody>	
						</table>
					</div>
						
					
						
					</div>
				
					
					</form>	
				</div>	
				
				
				<div class="row">
					<div class="col-6">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-primary">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
					</div>	
					<div class="col-6 d-flex flex-row-reverse">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-danger">
								<i class="fa-solid fa-xmark"></i>
							</button>
							<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#backDropModal">
								<i class="fa-solid fa-trash-can"></i>
							</button>
							<button type="button" class="btn btn-success">
								<i class="fa-solid fa-arrow-up-from-bracket"></i>
							</button>	
						</div>
					</div>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  </body>
</html>
