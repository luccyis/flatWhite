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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">시스템 /</span> 코드 그룹 관리 </h4>
			
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">코드 그룹 관리 </h5>
				<div class="card-body">
					<form id="form" method="post" name="form" >
					
						<!-- *Vo.jsp s -->
						<%@include file="codeGroupVo.jsp" %>
						<!-- *Vo.jsp e -->
						
						<div class="row">
							<div class="col p-2">
								<label for="codeGroupCode" class="form-label">코드그룹 코드</label>
								<input type="text" class="form-control" id="cgSeq" value="<c:out value="${item.cgSeq}"/>" placeholder="영문(대소문자), 숫자">
							</div>
							<div class="col p-2">
								<label for="codeGroupCode2" class="form-label">코드그룹 코드(Another)</label>
								<input type="text" class="form-control" id="codeGroupCode2" placeholder="영문(대소문자), 숫자" disabled>
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="inputCgName" class="form-label">코드그룹 이름(한글)</label>
								<input type="text" class="form-control" id="inputCgName" name="cgName" value="<c:out value="${item.cgName}"/>" placeholder="영문(대소문자), 숫자">
							</div>
							<div class="col p-2">
								<label for="inputCgNameEng" class="form-label">코드그룹 이름(영문)</label>
								<input type="text" class="form-control" id="inputCgNameEng" name="cgNameEng" value="<c:out value="${item.cgNameEng}"/>" placeholder="영문(대소문자), 숫자">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="useNy" class="form-label">사용여부</label>
								<select id="useNy" class="form-select" name="cgUseNy">
									<option value="1" <c:if test="${item.cgUseNy eq 1}">selected</c:if>>Y</option>
									<option value="0" <c:if test="${item.cgUseNy eq 0}">selected</c:if>>N</option>
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
								<select id="delNy" class="form-select" name="cgDelNy">
									<option value="0" <c:if test="${item.cgDelNy eq 0}">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.cgDelNy eq 1}">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<label for="codeOthers" class="form-check-label">예비 (varchar type)</label>
								<div class="form-check form-check-inline mt-3">
									<input type="radio" class="form-check-input" id="others1" name="codeOthers" value="a">예비1
								</div>
								<div class="form-check form-check-inline mt-3">
									<input type="radio" class="form-check-input" id="others2" name="codeOthers" value="b">예비2
								</div>
								<div class="form-check form-check-inline mt-3">
									<input type="radio" class="form-check-input" id="others3" name="codeOthers" value="c">예비3
								</div>
							</div>
							<div class="col p-2">
								<label for="codeOthers2" class="form-label">예비2 (varchar type)</label>
								<input type="text" class="form-control" id="codeOthers2" placeholder="영문(대소문자), 숫자">
							</div>
						</div>
						<div class="row">
							<label class="col-sm-2 col-form-label" for="inputSnsLogin">SNS 로그인</label>
							<div class="col-sm-10">
								<div class="form-check form-check-inline mt-3">
									<input class="form-check-input" type="checkbox" value ="페이스북" id="loginFacebook" name="snsLogin">
									<label class="form-check-label" for="loginFacebook">페이스북</label>
								</div>	
								<div class="form-check form-check-inline mt-3">
									<input class="form-check-input" type="checkbox" value ="네이버" id="loginNaver" name="snsLogin">
									<label class="form-check-label" for="loginNaver">네이버</label>
								</div>	
								<div class="form-check form-check-inline mt-3">
									<input class="form-check-input" type="checkbox" value ="카카오" id="loginKakao" name="snsLogin">
									<label class="form-check-label" for="loginKakao">카카오</label>
								</div>	
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
							<div class="col p-2">
								<label for="inputBy" class="form-label" >최초등록자</label>
								<input type="text" class="form-control" id="inputBy">
							</div>
							<div class="col p-2">
								<label for="inputDate" class="form-label" >최초등록일</label>
								<input type="text" class="form-control" id="inputDate">
							</div>
							<div class="col p-2">
								<label for="inputByIp" class="form-label" >최초등록IP</label>
								<input type="text" class="form-control" id="inputByIp">
							</div>
							<div class="col p-2">
								<label for="inputByDevice" class="form-label" >최초등록디바이스</label>
								<input type="text" class="form-control" id="inputByDevice">
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
									<button type="button" class="btn btn-outline-danger" id="btnUelete">
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
					<%@include file="codeGroupVo.jsp" %>
					<!-- *Vo.jsp e -->
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
    <%@include file="../../../common/xdmin/includeV1/modalBase.jsp"%>
	<%@include file = "../../../common/xdmin/includeV1/includeScript.jsp" %>
	<%@include file = "../../../common/xdmin/includeV1/btnScript.jsp" %>

	<script>
	var goUrlList = "/codeGroup/codeGroupList";
	var goUrlInst = "/codeGroup/codeGroupInst";
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";
	var goUrlUele = "/codeGroup/codeGroupUele";
	var goUrlDele = "/codeGroup/codeGroupDele";
	
	var seq = $("input:hidden[name=cgSeq]");
	
	var form = $("form[name = form]");
	var formVo = $("form[name=formVo]");
	
	</script>


    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>

