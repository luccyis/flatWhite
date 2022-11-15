<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
		<form id="formLogin" name="formLogin" method="post">
		<h3 class="tit">로그인</h3>
			<div class="col-wrap">
				<div class="col left">
					<div class="login-input-area">
						<input autocomplete="off" id="ifmmId" name="ifmmId" maxlength="20" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim">
						<input autocomplete="off" id="ifmmPassword" name="ifmmPassword" maxlength="20" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15">
						<button onclick="submitform()" type="button" class="button purple large btn-login">로그인</button>
					</div>
				</div>
			</div>
		</form>
	</div>
 
 <script>
 
	submitform = function(){
		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href='/';
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	
	}
	
	validation = function() {
		if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해주세요")) return false;
		if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해주세요")) return false;
		
	}

 </script>
 
 
 
 
 
 
</body>
</html>