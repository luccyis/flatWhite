<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mj.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
	<link rel="shortcut icon" href="/resources/images/favicon.ico">
	<title>meet play share, 메가박스</title>
	<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">

</head>

<body>
	<div class="body-wrap">
		<div class="member-wrap">
			<h1 class="ci"><a href="/home" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>
			<!-- col-wrap -->
			<div class="col-wrap">
				<div class="col">
					<div class="step-member" title="step1 본인인증, step2 정보입력, step3 가입완료 단계 중 step2 정보입력 단계">
						<ol>
							<li>
								<p class="step">
									<em>STEP1.</em> <span>본인인증</span>
								</p>
							</li>
							<li>
								<p class="step on">
									<em>STEP2.</em> <span>정보입력</span>
								</p>
							</li>
							<li>
								<p class="step">
									<em>STEP3.</em> <span>가입완료</span>
								</p>
							</li>
						</ol>
					</div>
				</div>
				
					<div class="table-wrap">
						<form id="mainForm" method="post" name="mainForm">
						
						<table class="board-form">
							<caption>회원가입 </caption>
							<colgroup>
								<col style="width:130px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="ifmmId">아이디<span class="text-danger">*</span></label></th>
									<td>	
										<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
										<input id="ifmmId" maxlength="20" type="text" name="ifmmId" value="<c:out value="${item.ifmmId}"/>" placeholder="아이디" class="input-text w230px">
										<button id="btnIdchk" type="button" class="button purple w120px ml06">아이디중복확인 </button>
									</td>
									<td><div class="invalid-feedback" id="ifmmIdFeedback"></div></td>
								</tr>
								<tr>
									<th scope="row"><label for="inputPw">비밀번호 </label></th>
									<td>
										<input id="inputPw" maxlength="20" type="password" name="ifmmPassword" value="<c:out value="${item.ifmmPassword}"/>" placeholder="비밀번호" class="input-text w230px">
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="inputPwRe">비밀번호 확인 </label></th>
									<td>
										<input id="inputPwRe" maxlength="20" type="password" placeholder="비밀번호 확인 " class="input-text w230px">
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="inputName">이름</label></th>
									<td>
										<input id="inputName" maxlength="20" type="text" name="ifmmName" value="<c:out value="${item.ifmmName}"/>" placeholder="이름" class="input-text w230px">
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="inputGender">성별 </label></th>
									<td>
										<select class="form-select" id="inputGender" name="ifmmGender">
											<option selected>성별</option>
											<option value="1">남</option>
											<option value="2">여</option>
											<option value="3">기타</option>
										</select>
									</td>	
								</tr>
								<tr>
									<th scope="row"><label for="inputEmail">이메일 </label></th>
									<td>
										<input id="inputEmail" type="text" class="input-text w230px"name="ifmmEmailAddress">
										<select class="form-select" id="emailHelpInline" name="ifmmEmailDomain" aria-label=".form-select email">
											<option selected>email address</option>
											<option value="1">gmail.com</option>
											<option value="2">naver.com</option>
											<option value="3">직접입력 </option>
										</select>
									</td>	
								</tr>
								<tr>
									<th scope="row"><label for="inputTel">휴대폰 번호</label></th>
									<td>
										<input type="text" id="inputTel" name="ifmmPhone" maxlength="11" placeholder="'-' 없이 입력" class="input-text w230px">
										<button id="btnInputTelAuth" type="button" class="button gray w75px ml08 disabled" disabled="disabled">인증요청</button>
									</td>
								</tr>
								<tr id="schPwdMblpCertRow">
									<th scope="row"><label for="ibxSchPwdMblpCharCertNo">인증번호</label></th>
									<td>
										<div class="chk-num">
											<div class="line">
												<input maxlength="4" type="text" id="ibxSchPwdMblpCharCertNo" class="input-text w180px" title="인증번호 입력" disabled="disabled">
	
												<div class="time-limit" id="schPwdtimer">
													3:00
												</div>
											</div>
										</div>
	
										<button id="btnSchPwdMblpCharCert" type="button" class="button gray-line w75px ml08 disabled" disabled="disabled">인증확인</button>
										<div id="schPwdMblpNo-error-text" class="alert"></div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="inputDob">생년월일 </label></th>
									<td>
										<input id="inputDob" maxlength="20" type="date" name="ifmmDob" placeholder="생년월일 " class="input-text w230px">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn-member-bottom">
						<button id="btmReg" type="button" class="button purple large" onclick="runForm('add');">
							회원가입
						</button>
					</div>
				</form>	
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
	$("#btnIdchk").on("click", function(){
		var chkId = $("#ifmmId").val();
		if(chkId ==null) return false;
		
		$.ajax({
			async: true
			,cache: false
			,type: "post"
			,url: "/member/checkId"
			,data : {ifmmId : $("#ifmmId").val()}
			,dataType:'json' 
			,success: function(response){
				if(response.rt=="success"){
					alert("사용가능합니다.");
				} else {
					alert("사용불가능합니다.");
				}
			}
			,error : function(){
			alert("ajax error");
			}
			
		})
		
	});
	
	
	
	</script>
	<script type="text/javascript">
	var form = $("#mainForm");
	  
	runForm = function(key) {
		  
	  switch(key)
	  {
	  	case "return":
 		{
	  	  	form.attr("action", "/member/joinAuth").submit();
	  		break;
  		}
	  	case "add":
  		{
			form.attr("action","/member/joinResult").submit(); 		
  		}
	  
	  }
	}
	
	
	
	</script>
	
	<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
	<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
</body>
</html>