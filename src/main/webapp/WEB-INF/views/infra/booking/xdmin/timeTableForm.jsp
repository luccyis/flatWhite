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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">영화 /</span>상영시간표</h4>
			
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">상영 시간 추가</h5>
				<div class="card-body">
					<form>
						<div class="row mb-3">
							<div class="col-6 p-2">
								<label class="col-md-2 col-form-label" for="ttSelectMovie">영화 선택</label>
								<select id="ttSelectMovie" class="form-select">
									<option value="">탑건: 매버릭</option>
									<option value="">헤어질 결심</option>
									<option value="">토르: 러브 앤 썬더</option>
									<option value="">애프터 양</option>
								</select>
							</div>
						</div>	
						<div class="row mb-3">	
							<div class="col p-2">	
								<label class="col-md-2 col-form-label" for="ttSelectTheater">극장 선택</label>
								<select id="ttSelectTheater" class="form-select">
									<option value="">코엑스</option>
									<option value="">성수</option>
									<option value="">동대문</option>
								</select>
							</div>	
							<div class="col p-2">
								<label class="col-md-2 col-form-label" for="ttSelectPlex">상영관 선택</label>
								<select id="ttSelectPlex" class="form-select">
									<option value="">1관</option>
									<option value="">2관</option>
									<option value="">3관</option>
								</select>
							</div>
						</div>	
						<div class="row mb-3">	
							<div class="col p-2">
								<label class="col-md-2 col-form-label" for="ttInputTime">시간 입력</label>
								<input type="text" class="form-control" id="ttInputTime">
							</div>	
							<div class="col p-2">
								<label class="col-md-2 col-form-label" for="ttMorningNy">조조여부</label>
								<select id="ttMorningNy" class="form-select">
									<option value="1">Y</option>
									<option value="2">N</option>
								</select>	
							</div>
						</div>
						<button type="submit" class="btn btn-primary">제출</button>
						<button type="button" class="btn btn-dark" onclick="location.href='../movie/movieTimetable.html'">
							<i class="fa-solid fa-arrow-left"></i>
						</button>	
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

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  </body>
</html>
