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
			<h1 class="ci"><a href="/home/main" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>

		<!-- col-wrap -->
		<div class="col-wrap">
			<!-- col -->
			<div class="col">

				<p class="tit-member">아이디/비밀번호 찾기</p>

				<div class="tab-list">
					<ul>
						<li><a href="/find/findId" title="아이디찾기 선택">아이디 찾기</a></li>
						<li class="on"><a href="/find/findPw" title="비밀번호 찾기 선택">비밀번호 찾기</a></li>
					</ul>
				</div>

				<h2 class="tit mt40">간편찾기</h2>

				<div class="table-wrap">
					<table class="board-form">
						<caption>아이디이름, 휴대폰 번호, 인증번호 항목을 가진 비밀번호 찾기 입력 표</caption>
						<colgroup>
							<col style="width:130px;">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="ibxSchPwdLoginId">아이디</label></th>
								<td>
									<input id="ibxSchPwdLoginId" maxlength="20" name="ifmmId" type="text" placeholder="아이디" class="input-text w230px">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchPwdMbNm">이름</label></th>
								<td>
									<input id="ibxSchPwdMbNm" maxlength="20" name="ifmmName" type="text" placeholder="이름" class="input-text w230px">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchPwdMblpTelno">휴대폰 번호</label></th>
								<td>
									<input type="text" id="ibxSchPwdMblpTelno" name="ifmmPhone" maxlength="11" placeholder="'-' 없이 입력" class="input-text w230px">
									<button id="btnSchPwdMbCertNoSend" type="button" class="button gray w75px ml08 disabled" disabled="disabled">인증요청</button>
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
						</tbody>
					</table>
				</div>

				<div class="btn-member-bottom v1">
					<button id="btnSchId" type="button" class="button purple large">비밀번호 찾기</button>
				</div>
				
			</div>
			<!--// col -->
		</div>
		<!--// col-wrap -->
	</div>
	<!--// member-wrap -->

<!-- 		</div> -->

<!-- footer -->
<footer>
</footer>
<!--// footer --></div>
  	<!--// body-wrap -->

<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>

</body>	
</html>