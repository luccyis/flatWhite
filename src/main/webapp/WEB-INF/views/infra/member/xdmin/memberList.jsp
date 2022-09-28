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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">회원 /</span>회원 리스트 </h4>
		
			<form method="post" name="formList" id="formList">
			<input type="hidden" name="ifmmSeq">
			<input type="hidden" name="thisPage" value="${vo.thisPage}">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col p-2">
								<select id="shDelNy" name="shDelNy" class="form-select">
									<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>삭제여부</option>
									<option value="0" <c:if test="${vo.shOption eq 0}">selected</c:if>>N</option>
									<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>Y</option>
								</select>	
							</div>
							<div class="col p-2">
								<select id="shOptionDate" name="shOptionDate" class="form-select">
									<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>날짜</option>
									<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
									<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
									<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>생년월일</option>
								</select>	
							</div>
							<div class="col p-2">
								<input type="text" class="form-control" id="shDateStart" name="shDateStart" placeholder="시작일">
							</div>
							<div class="col p-2">
								<input type="text" class="form-control" id="shDateEnd" name="shDateEnd" placeholder="종료일">
							</div>
						</div>
						<div class="row">
							<div class="col p-2">
								<select id="shOption" name="shOption" class="form-select">
									<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
									<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>멤버 시퀀스</option>
									<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>이름</option>
									<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>아이디</option>
								</select>	
							</div>
							<div class="col p-2">
								<input type="text" class="form-control" id="shValue" name="shValue" value="${vo.shValue}" placeholder="검색어">
							</div> 
							<div class="col p-2">
								<button type="button" class="btn btn-warning" id="btnSearch">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button type="button" class="btn btn-danger" id="btnReset">
									<i class="fa-solid fa-rotate-left"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<br>
			<!-- 	Table -->
				<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}"/>
				<c:set var="listCodeGrade" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
				<c:set var="listCodeEmailDomain" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
				<c:set var="listCodeSnsLogin" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
				<div class="card">
					<h5 class="card-header">회원 리스트 </h5>
					<div class="card-body">
						<div class="table-responsive text-nowrap">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>
											<div class="form-check g-2">
												<input class="form-check-input" type="checkbox" value="" id="listCheck">
											</div>
										</th>
										<th>순번</th>
										<th>시퀸스</th>
										<th>아이디 </th>
										<th>패스워드 </th>
										<th>이름 </th>
										<th>성별 </th>
										<th>등급</th>
										<th>이메일주소</th>
										<th>이메일도메인</th>
										<th>핸드폰번호</th>
										<th>생년월일</th>
										<th>이메일수신동의</th>
										<th>SMS수신동의</th>
										<th>생년월일로그인</th>
										<th>sns로그인</th>
									</tr>
								</thead>
								<tbody>
								
								<c:choose>
									<c:when test="${fn:length(list) eq 0}">
										<tr>
											<td class="text-center" colspan="16">There is no data!</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list}" var="list" varStatus="status">
										<tr style="cursor:pointer;" onclick="goForm('${list.ifmmSeq}')">
											<td>
												<div class="form-check g-2">
													<input class="form-check-input" onclick="event.stopPropagation()" type="checkbox" name="checkboxSeq" value="<c:out value="${list.ifmmSeq}"/>" id="listCheck">
												</div>
											</td>
											<td>${status.count}</td>
											<td><c:out value="${list.ifmmSeq}"/></td>
											<td><c:out value="${list.ifmmId}"/></td>
											<td><c:out value="${list.ifmmPassword}"/></td>
											<td><c:out value="${list.ifmmName}"/></td>
											<td>
												<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
													<c:if test="${list.ifmmGender eq listGender.cdSeq}"><c:out value="${listGender.cdName}"/></c:if>
												</c:forEach>	
											</td>
											<td>
												<c:forEach items="${listCodeGrade}" var="listGrade" varStatus="statusGrade">
													<c:if test="${list.ifmmGrade eq listGrade.cdSeq}"><c:out value="${listGrade.cdName}"/></c:if>
												</c:forEach>
											</td>
											<td><c:out value="${list.ifmmEmailAddress}"/></td>
											<td>
												<c:forEach items="${listCodeEmailDomain}" var="listEmailDomain" varStatus="statusEmailDomain">
													<c:if test="${list.ifmmEmailDomain eq listEmailDomain.cdSeq}"><c:out value="${listEmailDomain.cdName}"/></c:if>
												</c:forEach>	
											</td>
											<td><c:out value="${list.ifmmPhone}"/></td>
											<td><c:out value="${list.ifmmDob}"/></td>
											<td><c:out value="${list.ifmmEmailNy}"/></td>
											<td><c:out value="${list.ifmmSmsNy}"/></td>
											<td><c:out value="${list.ifmmDobLoginNy}"/></td>
											<td>
												<c:forEach items="${listCodeSnsLogin}" var="listSnsLogin" varStatus="statusSnsLogin">
													<c:if test="${list.ifmmSnsLogin eq listSnsLogin.cdSeq}"><c:out value="${listSnsLogin.cdName}"/></c:if>
												</c:forEach>	
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
									<button type="button" class="btn btn-danger" >삭제</button>
								</div>
							</div>	
						</div>
					</div>
				</div>
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

<script>
		var goUrlList = "/member/memberList";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";
		var goUrlForm = "/member/memberForm";
		
		var seq = $("input:hidden[name=ifmmSeq]");
		
		var form = $("form[name=formList]");
		var formVo = $("form[name=formVo]");
		
		$("#btnSearch").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#btnReset").on("click", function(){
			$(location).attr("href", goUrlList);
		});
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
		$("#btnForm").on("click", function(){
			goForm(0);
		});
		
		goForm = function(keyValue){
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
	</script>
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  </body>
</html>
