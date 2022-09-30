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
	   	<header id="header">
		    <h1 class="ci"><a href="/home" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
		    <div class="util-area">
		        <div class="right-link">
		            <!-- 로그인전 -->
		            <div class="before" style="">
		                <a href="" title="로그인">로그인</a>
		                <a href="/member/joinAuth" title="회원가입">회원가입</a>
		            </div>
		            <!-- 로그인후 -->
		            <div class="after" style="display:none">
		                <a href="" class="" title="로그아웃">로그아웃</a>
		                <a href="" class="notice" title="알림">알림</a>
		            </div>
		        </div>
		    </div>
		    <div class="link-area">
		        <a href="" class="header-open-layer btn-layer-search" title="검색">검색</a>
		        <a href="" class="link-ticket" title="상영시간표">상영시간표</a>
		        <a href="" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
		    </div>
		
			<nav id="gnb" class="">
		        <ul class="gnb-depth1">
		            <li><a href="/movie/main" class="gnb-txt-movie" title="영화">영화</a></li>
		            <li><a href="/booking/timeTable" class="gnb-txt-reserve" title="예매">예매</a></li>
		            <li><a href="" class="gnb-txt-theater" title="극장">극장</a></li>
			        <li><a href="" onclick="" class="gnb-txt-event" title="이벤트">이벤트</a></li>
			        <li><a href="" onclick="" class="gnb-txt-store" title="스토어">스토어</a></li>
			        <li><a href="" class="gnb-txt-benefit" title="혜택">혜택</a></li>
		        </ul>
		    </nav>
		    <!-- 레이어 : 검색 -->
		    <div id="layer_header_search" class="header-layer layer-header-search"></div>
		</header>

	<div style="display:none;">
		<a id="loginPupupATag" href="#layer_login_select" class="button active btn-modal-open target" w-data="850" h-data="484"></a>
	</div>

	<section id="layer_login_select" class="modal-layer on" style="z-index: 501;"><a href="" class="focus">레이어로 포커스 이동 됨</a><a href="#" class="focus" title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨</a>
		<div class="wrap" style="width: 850px; height: 484px; margin-left: -425px; margin-top: -242px;">
			<header class="layer-header">
				<h3 class="tit">로그인</h3>
			</header>

			<div class="layer-con" style="height: 439px;">

				<div class="tab-list tab-layer" style="display: none;">
					<ul>
						<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원 로그인</a></li>
					</ul>
				</div>

				<!-- tab-cont-wrap -->
				<div class="tab-cont-wrap">
					<!-- tab 회원 로그인 -->
					<div id="login_tab_01" class="tab-cont on"><a href="" class="ir">회원 로그인 탭 화면 입니다.</a><a href="" class="ir" title="로그인">회원 로그인 탭 화면 입니다.</a>

						<div class="login-member col-2 pt00">
							<!-- col-wrap -->
							<form id="formLogin" name="formLogin" method="post">
							<div class="col-wrap">
								<div class="col left">
									<div class="login-input-area">
										<input autocomplete="off" id="ifmmId" name="ifmmId" maxlength="20" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim">
										<input autocomplete="off" id="ifmmPassword" name="ifmmPassword" maxlength="20" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15">
										<div class="alert"></div>

										<!-- chk-util -->
										<div class="chk-util">
											<div class="left">
												<input id="autoLogin" type="checkbox"> <label for="chkIdSave">아이디 저장</label>
											</div>

											<div class="right">
												<div class="hp-ad">
										      <a href="https://www.sepay.org/spm/join?regSiteCode=XF&amp;ctgCode=1&amp;subCode=1" title="휴대폰 간편 로그인 선택" target="_blank"><span>휴대폰 간편로그인</span> <em>광고</em></a>
												</div>
											</div>
										</div>
										<!--// chk-util -->

										<button id="btnLogin" type="button" class="button purple large btn-login">로그인</button>

										<div class="link">
											<a href="/find/findId" title="ID/PW 찾기 선택">ID/PW 찾기</a>
											<a href="/member/joinAuth" title="회원가입 선택">회원가입</a><br>
										</div>

										<div class="sns-login">
											<a href="" lnkgty="FACEBOOK" title="페이스북으로 로그인 선택"><img src="/resources/images/ico-facebook.png" alt="페이스북">페이스북으로 로그인</a>
											<a href="" lnkgty="NAVER" title="네이버로 로그인 선택"><img src="/resources/images/ico-naver.png" alt="네이버"> 네이버로 로그인</a>
											<a href="" lnkgty="KAKAO" title="카카오톡으로 로그인 선택"><img src="/resources/images/ico-kakao.png" alt="카카오톡">카카오톡으로 로그인</a>
										</div>
									</div>
								</div>

								<div class="col right">
									<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw" style="background-color: rgb(255, 255, 255);">
										<a href="https://www.megabox.co.kr/movie-detail?rpstMovieNo=22041100" target="_blank">
											<img id="pageBannerRnbImage" src="https://mlink-cdn.netinsight.co.kr/2022/08/01/c60cb383ddab0e31804d6194df62eb19.jpg" alt="메가박스 하우스 PC일반배너 2208 바렌보임랑랑" clickthrough="" style="height: 380px;">
										</a>
									</div>
								</div>
							</div>
							</form>
							<!--// col-wrap -->
						</div>
					</div>
					<!--// tab 회원 로그인 -->
				</div>
				<!--// tab-cont-wrap -->
			</div>

			<button type="button" class="btn-modal-close" onclick="location.href='/home'">레이어 닫기<!--레이어 닫기--></button>
		</div>
	</section>
</div>





<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
 
 <script>
	$("#btnLogin").on("click", function(){
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
					location.href='/home';
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
 
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true
			,cach: false
			,type: "post"
			,url: "/member/logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success"){
					location.href = "/home";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate" + jqXHR.textStatus + ": " + jqXHR.errorThrown);
			}
			
		});
	});
 
 </script>
 
 
 
 
 
 
</body>
</html>