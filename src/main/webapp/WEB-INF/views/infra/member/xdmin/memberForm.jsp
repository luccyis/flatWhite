<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mj.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>

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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">회원 /</span> 회원 리스트 </h4>
			
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">회원 추가</h5>
				<div class="card-body">
					<form id="form" name="form" method="post">
					
					<%@include file ="memberVo.jsp" %>
					
						<div class="row">
							<div class="col p-2">
								<label class="form-label" for="ifmmId">아이디</label>
								<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
								<input type="text" class="form-control" id="ifmmId" name="ifmmId" value="<c:out value="${item.ifmmId}"/>">
							</div>
							<div class="col p-2">
								<label class="form-label" for="inputPw">패스워드</label>
								<input type="password" class="form-control" id="inputPw" name="ifmmPassword">
							</div>
						</div>
						<div class="row ">
							<div class="col-6 p-2">
								<label class="form-label" for="inputName">이름</label>
								<input type="text" class="form-control" id="inputName" name="ifmmName">
							</div>
							<div class="col-6 p-2">
								<div class="col-12">
									<label class="form-label" for="inputGender">성별</label>
								</div>
								<div class="col p-2">
									<select class="form-select" id="inputGender" name="ifmmGender">
										<option value="1" <c:if test="${item.ifmmGender eq 1}">selected</c:if>>남</option>
										<option value="2" <c:if test="${item.ifmmGender eq 2}">selected</c:if>>여</option>
										<option value="3" <c:if test="${item.ifmmGender eq 3}">selected</c:if>>기타</option>
									</select>
								</div>	
							</div>	
						</div>
						<div class="row">
							<div class="col-6 p-2">
								<div class="col-12">
									<label class="form-label" for="inputGrade">등급</label>
								</div>
								<div class="col p-2">
									<div class="form-check form-check-inline" name="ifmmGrade">	
										<input class="form-check-input" type="radio" value ="4" <c:if test="${item.ifmmGrade eq 4}">checked</c:if> name="ifmmGrade" id="gradeNomal">
										<label class="form-check-label" for="gradeNomal">일반</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" value ="5"  <c:if test="${item.ifmmGrade eq 5}">checked</c:if> name="ifmmGrade" id="gradeSilver">
										<label class="form-check-label" for="gradeSilver">실버</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" value ="6" <c:if test="${item.ifmmGrade eq 6}">checked</c:if> name="ifmmGrade" id="gradeGold">
										<label class="form-check-label" for="gradeGold">골드</label>
									</div>	
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" value ="7" <c:if test="${item.ifmmGrade eq 7}">checked</c:if> name="ifmmGrade" id="gradeVIP">
										<label class="form-check-label" for="gradeVIP">VIP</label>
									</div>
								</div>		
							</div>		
						</div>
						
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label" for="inputEmail">이메일</label>
							<div class="col-sm-10">
								<div class="input-group">
									<input type="text" class="form-control" name="ifmmEmailAddress" id="inputEmail" aria-describedby="inputEmailAddr">
									<span class="input-group-text" id="inputEmailAddr">@</span>
									<select class="form-select" name="ifmmEmailDomain" id="inputEmailDomain">
										<option value="8" <c:if test="${item.ifmmGender eq 1}">selected</c:if>>gmail.com</option>
										<option value="9" <c:if test="${item.ifmmGender eq 1}">selected</c:if>>naver.com</option>
										<option value="10" <c:if test="${item.ifmmGender eq 1}">selected</c:if>>직접입력</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label" for="inputPhone">휴대폰번호</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="ifmmPhone" id="inputPhone">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label" for="inputDob">생년월일</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="ifmmDob" id="inputDob">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label" for="inputEmailNy">이메일수신동의</label>
							<div class="col-sm-10">
								<div class="form-check form-check-inline mt-3" name="ifmmEmailNy">
									<input class="form-check-input" type="radio" value ="1"  name="ifmmEmailNy" id="emailYes">
									<label class="form-check-label" for="EmailYes">동의</label>
								</div>
								<div class="form-check form-check-inline mt-3">	
									<input class="form-check-input" type="radio" value ="0" name="ifmmEmailNy" id="emailNo">
									<label class="form-check-label" for="EmailNo">동의안함</label>
								</div>
							</div>
						</div>	
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label" for="inputSmsNy">SMS수신동의</label>
							<div class="col-sm-10">
								<div class="form-check form-check-inline mt-3" name="ifmmSmsNy">
									<input class="form-check-input" type="radio" value ="1" name="ifmmSmsNy" id="smsYes">
									<label class="form-check-label" for="smsYes">동의</label>
								</div>
								<div class="form-check form-check-inline mt-3">	
									<input class="form-check-input" type="radio" value ="0" name="ifmmSmsNy" id="smsNo">
									<label class="form-check-label" for="smsNo">동의안함</label>
								</div>
							</div>
						</div>	
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label" for="inputDobLogin">생년월일 로그인</label>
							<div class="col-sm-10">
								<div class="form-check form-check-inline mt-3" name="ifmmDobLoginNy">
									<input class="form-check-input" type="radio" value ="1" name="ifmmDobLoginNy" id="dobLoginY">
									<label class="form-check-label" for="dobLoginY">동의</label>
								</div>
								<div class="form-check form-check-inline mt-3">	
									<input class="form-check-input" type="radio" value ="0" name="ifmmDobLoginNy" id="dobLoginN">
									<label class="form-check-label" for="dobLoginN">동의안함</label>
								</div>
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label" for="inputSnsLogin">SNS 로그인</label>
							<div class="col-sm-10">
								<div class="form-check form-check-inline mt-3" name="ifmmSnsLogin">
									<input class="form-check-input" type="checkbox" value ="11" <c:if test="${item.ifmmSnsLogin eq 11}">checked</c:if> name="ifmmSnsLogin" id="loginFacebook">
									<label class="form-check-label" for="loginFacebook">페이스북</label>
								</div>	
								<div class="form-check form-check-inline mt-3">
									<input class="form-check-input" type="checkbox" value ="12" <c:if test="${item.ifmmSnsLogin eq 12}">checked</c:if> name="ifmmSnsLogin" id="loginNaver">
									<label class="form-check-label" for="loginNaver">네이버</label>
								</div>	
								<div class="form-check form-check-inline mt-3">
									<input class="form-check-input" type="checkbox" value ="13" <c:if test="${item.ifmmSnsLogin eq 13}">checked</c:if> name="ifmmSnsLogin" id="loginKakao">
									<label class="form-check-label" for="loginKakao">카카오</label>
								</div>	
							</div>
						</div>
						<button type="button" class="btn btn-primary" id="btnSave">제출</button>
						<button type="button" class="btn btn-dark">
							<i class="fa-solid fa-arrow-left"></i>
						</button>
					</form>
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
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
 <script type="text/javascript">
    
    	var goUrlList = "/member/memberList";
    	var goUrlInst = "/member/memberInst";
    	var goUrlUpdt = "/member/memberUpdt";
    	var goUrlUele = "/member/memberUele";
    	var goUrlDele = "/member/memberDele";
    	
    	var seq = $("input:hidden[name=ifmmSeq]");
    	
    	var form = $("form[name=form]");
    	var formVo = $("form[name=formVo]");
    	
    	$("#btnSave").on("click", function(){
    		if(seq.val() == "0" || seq.val() == "" || seq.val() == null){
    			form.attr("action", goUrlInst).submit();
    		} else {
    			form.attr("action", goUrlUpdt).submit();
    		}
    	});
    	
    	$("#btnDelete").on("click", function(){
    		form.attr("action", goUrlDele).submit();
    	});
    	
    	$("#btnUelete").on("click", function(){
    		form.attr("action", goUrlUele).submit();
    	});
    	
    	$("#btnList").on("click", function(){
    		formVo.attr("action", goUrlList).submit();
    	});
    	
    </script>


    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  </body>
</html>