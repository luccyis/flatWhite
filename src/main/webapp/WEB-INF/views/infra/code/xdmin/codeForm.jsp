<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
  data-assets-path="/assets/"
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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">시스템 /</span> 코드 관리 </h4>
			
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">코드 관리 </h5>
				<div class="card-body">
					<form id="form" method="post">
					
						<!-- *Vo.jsp s -->
						<%@include file="codeVo.jsp" %>
						<!-- *Vo.jsp e -->
						
						<div class="row">
							<div class="col-6 p-2">
								<label for="codeUseNy" class="form-label">사용여부</label>
								<select id="useNy" class="form-select">
									<option>선택하세요</option>
									<option value="1" selected>Y</option>
									<option value="2">N</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="commonCode" class="form-label">코드</label>
								<input type="text" class="form-control" id="commonCode" name="cdSeq" placeholder="자동생성" disabled>
							</div>
							<div class="col p-2">
								<label for="inputCgSeq" class="form-label">코드그룹 코드</label>
								<select class="form-select" id="inputCgSeq" name="infrCodeGroup_cgSeq">
									<c:forEach items="${list}" var="list" varStatus="status">
										<option value="${list.cgSeq}">${list.cgName}</option>
									</c:forEach> 
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="inputCodeName" class="form-label">코드 이름(한글)</label>
								<input type="text" class="form-control" id="inputCodeName"  name="cdName" value="<c:out value="${item.cdName}"/>">
							</div>
							<div class="col p-2">
								<label for="inputCodeEng" class="form-label">코드 이름(영문)</label>
								<input type="text" class="form-control" id="inputCodeEng">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="useNy" class="form-label">사용여부</label>
								<select id="useNy" class="form-select" name="cdUseNy">
									<option value="1" <c:if test="${item.cdUseNy eq 1}">selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.cdUseNy eq 0}">selected</c:if>>N</option>
								</select>
							</div>
							<div class="col p-2">
								<label for="codeOrder" class="form-label">순서</label>
								<input type="text" class="form-control" id="codeOrder" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="codeExplain" class="form-label">설명</label>
									<textarea class="form-control" id="codeExplain" row="3"></textarea>
							</div>
							<div class="col p-2">
								<label for="delNy" class="form-label">삭제여부</label>
								<select id="delNy" class="form-select" name="cdDelNy">
									<option value="0" <c:if test="${item.cdDelNy eq 0}">selected</c:if>>>N</option>
									<option value="1" <c:if test="${item.cdDelNy eq 1}">selected</c:if>>>Y</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="codeOthers" class="form-label">예비 (varchar type)</label>
								<input type="text" class="form-control" id="codeOthers" placeholder="영문(대소문자), 숫자">
							</div>
							<div class="col p-2">
								<label for="codeOthers2" class="form-label">예비2 (varchar type)</label>
								<input type="text" class="form-control" id="codeOthers2" placeholder="영문(대소문자), 숫자">
							</div>
						</div>	
						<div class="row">
							<div class="col p-2">
								<label for="codeOthersInt" class="form-label">예비 (Int type)</label>
								<input type="text" class="form-control" id="codeOthersInt" placeholder="숫자">
							</div>
							<div class="col p-2">
								<label for="codeOthersInt2" class="form-label">예비2 (Int type)</label>
								<input type="text" class="form-control" id="codeOthersInt2" placeholder="숫자">
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
					</form>	
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
    
    <script type="text/javascript">
    
    	var goUrlList = "/code/codeList";
    	var goUrlInst = "/code/codeInst";
    	var goUrlUpdt = "/code/codeUpdt";
    	var goUrlUele = "/code/codeUele";
    	var goUrlDele = "/code/codeDele";
    	
    	var seq = $("input:hidden[name=cdSeq]");
    	
    	var form = $("form[name=form]");
    	var formVo = $("form[name=formVo]");
    	
    </script>
     <%@include file = "../../../common/xdmin/includeV1/btnScript.jsp" %>
     

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  </body>
</html>
