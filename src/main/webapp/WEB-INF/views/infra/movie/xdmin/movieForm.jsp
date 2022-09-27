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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">영화 /</span>기본 정보 관리</h4>
			
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">영화 정보 추가</h5>
				<div class="card-body">
					<form>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="inputMovieTitle">제목</label>
								<input type="text" class="form-control" id="inputMovieTitle" name="">
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputTitleEng">영어제목</label>
								<input type="text" class="form-control" id="inputTitleEng" name="">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="inputAudienceScore">관람객평점</label>
								<input type="text" class="form-control" id="inputAudienceScore" name="">
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputRank">예매율</label>
								<input type="text" class="form-control" id="inputRank" name="">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="inputStory">스토리</label>
								<textarea class="form-control" id="inputStory" row="7"></textarea>
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputShowType">상영타입</label>
								<input type="text" class="form-control" id="inputShowType" name="">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="inputDirector">감독</label>
								<input type="text" class="form-control" id="inputDirector" name="">
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputCast">출연진</label>
								<input type="text" class="form-control" id="inputCast" name="">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="inputGenres">장르</label>
								<input type="text" class="form-control" id="inputGenres" name="">
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputRunningTime">상영시간</label>	
								<input type="text" class="form-control" id="inputRunningTime" name="">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="inputReleaseDate">개봉일</label>
								<input type="text" class="form-control" id="inputReleaseDate" name="">
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputAudienceNumber">누적관람자수</label>
								<input type="text" class="form-control" id="inputAudienceNumber" name="">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="inputTrailer">예고편</label>
								<input type="text" class="form-control" id="inputTrailer" name="" placeholder="url">
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputLiked">좋아요</label>
								<input type="text" class="form-control" id="inputLiked" name="">
							</div>
						</div>
						<div class="row">
					<div class="col-6">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-primary" onclick="href='../movie/movieList.html'">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
					</div>	
					<div class="col-6 d-flex flex-row-reverse">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-danger">
								<i class="fa-solid fa-xmark"></i>
							</button>
							<button type="button" class="btn btn-danger" >
								<i class="fa-solid fa-trash-can"></i>
							</button>
							<button type="button" class="btn btn-success">
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

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>  
  </body>
</html>
