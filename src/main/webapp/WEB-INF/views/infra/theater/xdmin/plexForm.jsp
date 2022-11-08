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
			
		<!-- 	Table -->
		<form id="form" name="form" method="post">
		<%@include file ="plexVo.jsp" %>
		
			<div class="card">
				<h5 class="card-header">상영관 정보 추가</h5>
				<div class="card-body">
					<div class="row">
						<div class="col-6 p-2">
							<label for="plexCode" class="form-label">코드</label>
							<input type="text" class="form-control" id="plexCode" placeholder="자동생성" disabled>
						</div>
					</div>
					<div class="row">
						<div class="col p-2">
							<label for="selectTheater" class="form-label">극장선택</label>
							<select id="selectTheater" class="form-select" name="tdthBranch">
								<c:forEach items="${list}" var="list" varStatus="status">
								<option value="${status.count}"<c:if test="${item.tradTheater_tdthSeq eq status.count}">selected</c:if>><c:out value="${list.tdthBranch} "/></option>
								</c:forEach>
							</select>
						</div>
						<div class="col p-2">
							<label for="inputPlex" class="form-label">상영관이름</label>
							<input type="text" class="form-control" id="inputPlex" name="tdpxPlexName" value="<c:out value="${item.tdpxPlexName} "/>">
						</div>
					</div>
					<div class="row">
						<div class="col p-2">
							<label for="inputtotalSeatNum" class="form-label">총 좌석수</label>
							<input type="text" class="form-control" id="inputtotalSeatNum" name="tdpxTotalSeatNum" value="<c:out value="${item.tdpxTotalSeatNum} "/>">
						</div>
						<div class="col p-2">
							<label for="inputSittingColNum" class="form-label">세로 좌석수(col)</label>
							<input type="text" class="form-control" id="inputSittingColNum" name="tdpxSittingColNum" value="<c:out value="${item.tdpxSittingColNum} "/>">
						</div>
						<div class="col p-2">
							<label for="inputSittingRowNum" class="form-label">가로 좌석수(row)</label>
							<input type="text" class="form-control" id="inputSittingRowNum" name="tdpxSittingRowNum" value="<c:out value="${item.tdpxSittingRowNum} "/>">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-6">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-primary" id="btnList">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
					</div>	
					<div class="col-6 d-flex flex-row-reverse">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-danger" id="btnUelete">
								<i class="fa-solid fa-xmark"></i>
							</button>
							<button type="button" class="btn btn-danger" id="btnDelete">
								<i class="fa-solid fa-trash-can"></i>
							</button>
							<button type="button" class="btn btn-success" id="btnSave">
								<i class="fa-solid fa-arrow-up-from-bracket"></i>
							</button>	
						</div>
					</div>
				</div>		
			</div>
			</form>
			<form name="formVo" id="formVo" method="post">
			<!-- *Vo.jsp s -->
			<%@include file="plexVo.jsp" %>
			<!-- *Vo.jsp e -->
			</form>
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
    <%@include file="../../../common/xdmin/includeV1/modalBase.jsp"%>
	<%@include file = "../../../common/xdmin/includeV1/includeScript.jsp" %>
	<%@include file = "../../../common/xdmin/includeV1/btnScript.jsp" %>

	 <script type="text/javascript">
    
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
