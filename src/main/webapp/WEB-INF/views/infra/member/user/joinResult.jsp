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
		<div class="member-wrap">
			<h1 class="ci"><a href="/userHome" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>
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
								<p class="step">
									<em>STEP2.</em> <span>정보입력</span>
								</p>
							</li> 
							<li>
								<p class="step on">
									<em>STEP3.</em> <span>가입완료</span>
								</p>
							</li>
						</ol>
					</div>
					<p class="page-info-txt">
						<strong>회원가입이 완료되었습니다</strong>
					</p>
					<div class="join-chk-me col-1">
						<a href="/member/login" >
							<i class="fa-solid fa-clapperboard"></i>
							<span>영화예매하러가기
								<i class="fa-solid fa-angle-right"></i>
							</span>
						</a>
					</div>	
				</div>
			</div>
		</div>	
			
	
	
	</div>
	<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
	<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
	<script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</body>
</html>