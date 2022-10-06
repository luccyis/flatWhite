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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">영화 /</span>기본 정보 관리</h4>
			
			<c:set var="listCodeAge" value="${CodeServiceImpl.selectListCachedCode('6')}"/>
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">영화 정보 추가</h5>
				<div class="card-body">
					<form id="form" name="form" method="post">
					<%@include file ="movieVo.jsp" %>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="tdmvMovieTitle">제목</label>
								<input type="text" class="form-control" id="tdmvMovieTitle" value="<c:out value="${item.tdmvMovieTitle} "/>" name="tdmvMovieTitle">
							</div>
							<div class="col p-2">
								<label class="form-label" for="tdmvTitleEng">영어제목</label>
								<input type="text" class="form-control" id="tdmvTitleEng" value="<c:out value="${item.tdmvTitleEng} "/>" name="tdmvTitleEng">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="tdmvAudienceScore">관람객평점</label>
								<input type="text" class="form-control" id="tdmvAudienceScore" value="<c:out value="${item.tdmvAudienceScore} "/>" name="tdmvAudienceScore">
							</div>
							<div class="col p-2">
								<label class="form-label" for="tdmvRank">예매율</label>
								<input type="text" class="form-control" id="tdmvRank" value="<c:out value="${item.tdmvRank} "/>" name="tdmvRank">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="tdmvStory">스토리</label>
								<textarea class="form-control" id="tdmvStory" row="30" name="tdmvStory"><c:out value="${item.tdmvStory} "/></textarea>
							</div>
							<div class="col p-2">
								<label class="form-label" for="tdmvShowType">상영타입</label>
								<input type="text" class="form-control" id="tdmvShowType" value="<c:out value="${item.tdmvShowType} "/>" name="tdmvShowType">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="tdmvDirector">감독</label>
								<input type="text" class="form-control" id="tdmvDirector" value="<c:out value="${item.tdmvDirector} "/>" name="tdmvDirector">
							</div>
							<div class="col p-2">
								<label class="form-label" for="tdmvCast">출연진</label>
								<input type="text" class="form-control" id="tdmvCast" value="<c:out value="${item.tdmvCast} "/>" name="tdmvCast">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="tdmvGenres">장르</label>
								<input type="text" class="form-control" id="tdmvGenres" value="<c:out value="${item.tdmvGenres} "/>" name="tdmvGenres">
							</div>
							<div class="col p-2">
								<label class="form-label" for="tdmvRunningTime">상영시간</label>	
								<input type="text" class="form-control" id="tdmvRunningTime" value="<c:out value="${item.tdmvRunningTime} "/>" name="tdmvRunningTime">
							</div>
						</div>
						
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="tdmvReleaseDate">개봉일</label>
								<input type="text" class="form-control" id="tdmvReleaseDate" value="<c:out value="${item.tdmvReleaseDate} "/>" name="tdmvReleaseDate">
							</div>
							<div class="col p-2">
								<label class="form-label" for="tdmvAudienceNumber">누적관람자수</label>
								<input type="text" class="form-control" id="tdmvAudienceNumber" value="<c:out value="${item.tdmvAudienceNumber} "/>" name="tdmvAudienceNumber">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="tdmvTrailer">예고편</label>
								<input type="text" class="form-control" id="tdmvTrailer" value="<c:out value="${item.tdmvTrailer} "/>" name="tdmvTrailer" placeholder="url">
							</div>
							<div class="col p-2">
								<label class="form-label" for="tdmvAge">등급</label>
								<select id="tdmvAge" name="tdmvAge" class="form-select" value="<c:out value="${item.tdmvAge} "/>">
									<c:forEach items="${listCodeAge}" var="listAge" varStatus="status">
										<option value="${list.tdmvAge eq listAge.cdSeq }">${listAge.cdName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label class="form-label input-file-button btn-lg btn-warning" for="ifmmUploadedImage">포스터/스틸컷</label>
								<input type="file" class="form-control" id="ifmmUploadedImage" name="ifmmUploadedImage" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedImage', 1, 0, 1, 0, 0, 1);">
								<div class="addScroll">
									<div style="display: inline-block; height: 95px;">
									</div>
									<ul id="ulFile1" class="list-group">
									</ul>
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
				</form>
				<form name="formVo" id="formVo" method="post">
					<!-- *Vo.jsp s -->
					<%@include file="movieVo.jsp" %>
					<!-- *Vo.jsp e -->
				</form>
					
				</div>	
			</div>
		</div>
		
       <!-- / Content -->
 	<%@include file = "../../../common/xdmin/includeV1/footer.jsp" %>
 	<!-- modalBase s -->
	<%@include file="../../../common/xdmin/includeV1/modalBase.jsp"%>
	<!-- modalBase e -->

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

	<%@include file = "../../../common/xdmin/includeV1/includeScript.jsp" %>
    
    <script>
    var goUrlList = "/movie/movieList";
    var goUrlInst = "/movie/movieInst";
    var goUrlUpdt = "/movie/movieUpdt";
    var goUrlUele = "/movie/movieUele";
    var goUrlDele = "/movie/movieDele";
    var goUrlForm = "/movie/movieForm";
    
    var seq = $("input:hidden[name=tdmvSeq]");
    
    var form = $("form[name=form]");
    var formVo = $("form[name=formVo]");
    
    </script>
    <%@include file = "../../../common/xdmin/includeV1/btnScript.jsp" %>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
