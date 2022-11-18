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

<body class="bg-member">
    <div class="body-wrap">
    
		<!-- member-wrap -->
		<div class="member-wrap">
			<h1 class="ci"><a href="/userHome" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>

		<!-- col-wrap -->
		<div class="col-wrap">
			<!-- col -->
			<div class="col">

				<p class="tit-member">아이디/비밀번호 찾기</p>

				<div class="tab-list">
					<ul>
						<li class="on"><a href="/find/findId" title="아이디찾기 선택">아이디 찾기</a></li>
						<li><a href="/find/findPw" title="비밀번호 찾기 선택">비밀번호 찾기</a></li>
					</ul>
				</div>

				<h2 class="tit mt40">간편찾기</h2>
				<form name="form" id="form">
					<div class="table-wrap">
						<table class="board-form">
							<caption>이름, 생년월일, 휴대폰 번호 항목을 가진 아이디 찾기 입력 표</caption>
							<colgroup>
								<col style="width:130px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="ibxSchIdMbNm">이름</label></th>
									<td>
										<input id="ifmmName" name="ifmmName" maxlength="20" type="text" placeholder="이름" class="input-text w230px">
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="ibxSchIdBirthDe">생년월일</label></th>
									<td>
										<input id="ifmmDob" name="ifmmDob" maxlength="10" type="text" placeholder="1900-01-22" class="input-text w230px">
										<div id="schIdBirthDe-error-text" class="alert"></div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="ibxSchIdMblpTelno">휴대폰 번호</label></th>
									<td>
										<input id="ifmmPhone" name="ifmmPhone" maxlength="11" type="text" placeholder="'-' 없이 입력" class="input-text w230px">
										<div id="schIdMblpNo-error-text" class="alert"></div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="idHidden" id="idHidden" style="display: none; color: purple; text-align:center; margin-top: 2rem;" >회원님의 아이디는 <strong class="personerId"></strong> 입니다.
					</div>
			
					<div class="btn-member-bottom v1">
						<button id="btnfindId" type="button" class="button purple large">아이디 찾기</button>
					</div>
				</form>	

			</div>
			<!--// col -->
		</div>
		<!--// col-wrap -->
	</div>
	<!--// member-wrap -->

<!-- 		</div> -->
        
</div>
  	<!--// body-wrap -->

<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script>
	var form = $("form[name=form]");
	var goUrlResult = "/find/findIdProc";
	
	$("#btnfindId").on("click", function(){
		
		$.ajax({
			async: true
			,cache: false
			,type: "post"
			,url: "/find/findIdProc"
			,data: {
				"ifmmName": $("#ifmmName").val(),
				"ifmmDob": $("#ifmmDob").val(),
				"ifmmPhone": $("#ifmmPhone").val()
			}
			,success: function(response) {
				if (response.rt == "success") {
					$("#idHidden").css("display", "");
					$(".personerId").html(response.id.ifmmId);
				} else {
					alert("정확한 정보를 입력해주세요.");
				}
			}
			,error : function(jqXHR, status, error) {
				$(".personerId").html("없는정보");
				alert("등록된 회원 정보가 없습니다.");
			}
		});
	});

</script>



</body>	
</html>