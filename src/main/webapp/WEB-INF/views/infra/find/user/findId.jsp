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
						<li class="on"><a href="/find/findId" title="아이디찾기 선택">아이디 찾기</a></li>
						<li><a href="/find/findPw" title="비밀번호 찾기 선택">비밀번호 찾기</a></li>
					</ul>
				</div>

				<h2 class="tit mt40">간편찾기</h2>

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
									<input id="ibxSchIdMbNm" maxlength="20" type="text" placeholder="이름" class="input-text w230px">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdBirthDe">생년월일</label></th>
								<td>
									<input id="ibxSchIdBirthDe" maxlength="8" type="text" placeholder="생년월일 앞8자리" class="input-text w230px">
									<div id="schIdBirthDe-error-text" class="alert"></div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="ibxSchIdMblpTelno">휴대폰 번호</label></th>
								<td>
									<input id="ibxSchIdMblpTelno" maxlength="11" type="text" placeholder="'-' 없이 입력" class="input-text w230px">
									<div id="schIdMblpNo-error-text" class="alert"></div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="mt20 font-size-14">
					※ 휴대폰 번호가 변경된 경우 본인인증 찾기를 통하여 아이디찾기를 진행해주시기 바랍니다.
				</div>

				<div class="btn-member-bottom v1">
					<button id="btnSchId" type="button" class="button purple large" disabled="disabled">아이디 찾기</button>

				</div>

				<h2 class="tit">본인인증으로 찾기</h2>

				<div class="">
					본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집하며, 인증 이외의 용도로 이용 또는 저장되지 않습니다.
				</div>

				<div class="btn-member-bottom">
					<button id="btnSchIdMblpCert" type="button" class="button purple large">본인인증</button>

				</div>

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

</body>	
</html>