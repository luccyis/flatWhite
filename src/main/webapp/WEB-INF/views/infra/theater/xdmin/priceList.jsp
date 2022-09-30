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
			
			<form method="post" name="formList" id="formList">
			<input type="hidden" name="thprSeq">
			<input type="hidden" name="thisPage" value="${vo.thisPage}">
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
									<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>관람료코드</option>
									<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>지점</option>
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
				<h5 class="card-header">영화 관람료</h5>
				<div class="card-body">
					<span>total : </span><c:out value="${vo.totalRows -((vo.thisPage-1) * vo.rowNumToShow + status.index)}"/>
					<div class="table-responsive text-nowrap">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>
										<div class="form-check g-2">
											<input class="form-check-input" type="checkbox" id="listCheck" value="">	
										</div>
									</th>	
									<th>#</th>
									<th>관람료코드</th>
									<th>지점</th>
									<th>요일</th>
									<th>상영시간</th>
									<th>청소년/일반</th>
									<th>가격</th>
									<th>사용여부</th>
									<th>삭제여부</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${fn:length(list) eq 0 }">
										<tr>
											<td class="text-center" colspan="9">There is no data!</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list}" var="list" varStatus="status">
											<tr style="cursor:pointer;" onclick="goForm('${list.thprSeq}')">
												<td>
													<div class="form-check g-2">
														<input class="form-check-input" onclick="event.stopPropagation()" type="checkbox" id="listCheck" value="">	
													</div>
												</td>
												<td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
												<td><c:out value="${list.thprSeq}"/></td>
												<td><c:out value="${list.tdthBranch}"/></td>
												<td>
													<c:if test="${list.thprWeekendNy eq 0}">일반</c:if>
													<c:if test="${list.thprWeekendNy eq 1}">주말</c:if>
												</td>
												<td>
													<c:if test="${list.thprMorningNy eq 0}">일반</c:if>
													<c:if test="${list.thprMorningNy eq 1}">조조</c:if>
												</td>
												<td>
													<c:if test="${list.thprTeenagerNy eq 0}">일반</c:if>
													<c:if test="${list.thprTeenagerNy eq 1}">청소년</c:if>
												</td>
												<td><c:out value="${list.thprPrice}"/></td>
												<td>
													<c:if test="${list.thprUseNy eq 0}">N</c:if>
													<c:if test="${list.thprUseNy eq 1}">Y</c:if>
												</td>
												<td>
													<c:if test="${list.thprDelNy eq 0}">N</c:if>
													<c:if test="${list.thprDelNy eq 1}">Y</c:if>
												</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>	
											
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
					<button type="button" class="btn btn-success" id="btnForm">
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
    <script> //컨트롤러 수정해야됨
	var goUrlList = "/theaterPrice/priceList";
	var goUrlInst = "/theaterPrice/priceInst";
	var goUrlUpdt = "/theaterPrice/priceUpdt";
	var goUrlUele = "/theaterPrice/priceUele";
	var goUrlDele = "/theaterPrice/pricedele";
	var goUrlForm = "/theaterPrice/priceForm";
	
	var seq = $("input:hidden[name=thprSeq]");
	
	var form = $("form[name=formList]");
	var formVo = $("form[name=formVo]");
	
	$("#btnSearch").on("click", function(){
		form.attr("action", goUrlList).submit();
	});
	
	$("#btnReset").on("click", function(){
		$(location).attr("href", goUrlList);
	});
	
	$("#btnForm").on("click", function(){
		goForm(0);
	});
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}
	
	goForm = function(keyValue){
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
	
	
	</script>
    

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
