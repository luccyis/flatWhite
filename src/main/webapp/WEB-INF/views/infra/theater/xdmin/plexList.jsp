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
			<form method="post" name="form" id="form">
			<input type="hidden" name="tdpxSeq">
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
			
			<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('5')}"/>	
			<div class="card">
				<h5 class="card-header">상영관 리스트</h5>
				<div class="card-body">
					<span>total : </span><c:out value="${vo.totalRows -((vo.thisPage-1) * vo.rowNumToShow + status.index)}"/>
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
									<th>상영관코드</th>
									<th>극장명</th>
									<th>상영관이름</th>
									<th>전체 좌석수</th>
									<th>세로 좌석수(col)</th>
									<th>가로 좌석수(row))</th>
									<th>사용여부</th>
									<th>삭제여부</th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${fn:length(list) eq 0}">
										<tr>
											<td class="text-center" colspan="10">There is no data!</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list}" var="list" varStatus="status">
											<tr style="cursor:pointer;" onclick="goForm('${list.tdpxSeq}')">
												<td>
													<div class="form-check g-2">
														<input class="form-check-input" onclick="event.stopPropagation()" type="checkbox" id="theaterListCheck" value="">	
													</div>
												</td>
												<td>${status.count}</td>
												<td><c:out value="${list.tdpxSeq}"/></td>
												<td><c:out value="${list.tdthBranch}"/></td>
												<td><c:out value="${list.tdpxPlexName}"/></td>
												<td><c:out value="${list.tdpxTotalSeatNum}"/></td>
												<td><c:out value="${list.tdpxSittingColNum}"/></td>
												<td><c:out value="${list.tdpxSittingRowNum}"/></td>	
												<td><c:out value="${list.tdpxUseNy}"/></td>
												<td><c:out value="${list.tdpxDelNy}"/></td>
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
					<div class="demo-inline-spacing">
						<button type="button" class="btn btn-primary" id="btnExcel">
							<i class="fa-solid fa-file-arrow-down"></i>
						</button>
						<button type="button" class="btn btn-success" id="btnForm">
							<i class="fa-solid fa-plus"></i>
						</button>
						<button type="button" class="btn btn-danger" id="btnUelete">
							<i class="fa-solid fa-minus"></i>
						</button>
						<button type="button" class="btn btn-danger" id="btnDelete">
							<i class="fa-solid fa-trash-can"></i>
						</button>
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
	<%@include file = "../../../common/xdmin/includeV1/modalBase.jsp" %> 
    <%@include file = "../../../common/xdmin/includeV1/includeScript.jsp" %>
    <%@include file="../../../common/xdmin/includeV1/btnScript.jsp" %>
    
    <script>
    var goUrlList = "/theaterPlex/plexList";
	var goUrlInst = "/theaterPlex/plexInst";
	var goUrlUpdt = "/theaterPlex/plexUpdt";
	var goUrlUele = "/theaterPlex/plexUele";
	var goUrlDele = "/theaterPlex/plexDele";
	var goUrlForm = "/theaterPlex/plexForm";
	
	var seq = $("input:hidden[name=tdpxSeq]");
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
    
	
    </script>
    

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
