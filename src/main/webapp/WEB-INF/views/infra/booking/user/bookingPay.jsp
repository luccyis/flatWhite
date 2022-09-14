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
	                <a href="/login" title="로그인">로그인</a>
	                <a href="../member/memberJoinAuth.html" title="회원가입">회원가입</a>
	            </div>
	            <!-- 로그인후 -->
	            <div class="after" style="display:none">
	                <a href="" class="" title="로그아웃">로그아웃</a>
	                <a href="" class="notice" title="알림">알림</a>
	            </div>
	        </div>
	    </div>
	    <div class="link-area">
	        <a href="#layer_header_search" class="header-open-layer btn-layer-search" title="검색">검색</a>
	        <a href="/booking/timeTable" class="link-ticket" title="상영시간표">상영시간표</a>
	        <a href="/mypage/mypageMain" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
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
	
	<div class="container" style="padding-bottom:240px;">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
                	<a href="/booking/timeTable" title="예매 페이지로 이동">예매</a>
                	<a href="/booking/timeTable" title="빠른예매 페이지로 이동">빠른예매</a>
				</div>
			</div>
		</div>
		
			<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;"> 
			<div class="quick-reserve">
		
				<h2 class="tit">빠른예매</h2>
		
				<!-- seat-select-section -->
				<div class="seat-select-section">
					<!-- seat-section -->
					<div class="seat-section h-auto">
						<div class="tit-util mt40">
							<h3 class="tit small">결제수단선택 </h3>
		
							<div class="right">
								<input type="checkbox" id="same_use_payment">
								<label for="same_use_payment" id="label_use_payment">다음에도 이 결제수단 사용</label>
							</div>
						</div>
		
						<!-- seat-section -->
						
						<!--// seat-section -->
		
						<!--
							체크 표시 on 클래스 추가
		
							<button type="button">
		
							<button type="button" class="on">
						-->
						<div class="select-payment ty2">
		
							<div class="radio-group">
								<span class="bg-chk small">
									<input type="radio" name="radio_payment_easypay" id="rdo_pay_easypay" value="easypay">
									<label for="rdo_pay_easypay">간편결제</label>
								</span>
							</div>
		
							<div class="select-payment-easypay" style="">
								<input type="radio" name="radio_payment" id="rdo_pay_kakaopay" value="kakaopay">
								<label for="rdo_pay_kakaopay">카카오페이</label>
							</div>
		
						<dl class="term-list" id="terms" style="display: block;">
							<dt>
								<span class="bg-chk small">
									<input type="checkbox" id="agree"><label for="agree">결제대행 서비스 약관 필수 동의</label>
								</span>
							</dt>
							<dd class="tit">
								전자금융거래 이용약관
								<a href="" onclick="openTermsPop('one')">내용보기</a>
							</dd>
							<dd class="tit">
								개인정보 수집 및 이용 안내
								<a href="" onclick="openTermsPop('two')">내용보기</a>
							</dd>
							<dd class="tit">
								개인정보 제공 및 위탁 안내
								<a href="" onclick="openTermsPop('three')">내용보기</a>
							</dd>
						</dl>
					</div>
					<!--// seat-section -->
		
					<!-- seat-result -->
					<div class="seat-result">
						<div class="wrap">
		
							<div class="tit-area type2">
								<!--
									관람 등급 표시
									<span class="movie-grade small age-all">전체 관람가</span>
									<span class="movie-grade small age-12">12세 이상 관람가</span>
									<span class="movie-grade small age-15">15세 이상 관람가</span>
									<span class="movie-grade small age-19">청소년 관람 불가</span>
									<span class="movie-grade small age-no">미정</span>
								-->
								<span class="movie-grade small age-12" id="admisClassNm">12세이상관람가</span>
		
								<p class="tit" id="movieNm">탑건: 매버릭</p>
								<p class="cate" id="playKindNm">2D(자막)</p>
								<p class="theater" id="brchNm">코엑스 / 더부티크 105호</p>
								<p class="date"><span id="playDe">2022.08.02</span><em id="dowNm">(수)</em> <span class="time" id="playTime"><i class="iconset ico-clock-white"></i>12:00~14:20</span></p>
							</div>
							<div class="price-process">
								<div class="box"><div class="data"><span class="tit">성인 <em>2</em></span><span class="price">30,000</span></div>
									<!--
									<div class="data">
										<span class="tit">일반 <em>1</em></span>
										<span class="price">20,000</span>
									</div>
		
									<div class="data">
										<span class="tit">어린이 <em>2</em></span>
										<span class="price">6,000</span>
									</div>
									-->
									<div class="all">
										<span class="tit">금액 </span>
										<span class="price"><em>30,000</em> <span>원 </span></span>
									</div>
								</div>
		
								<div class="box discout-box">
		
									<div class="all">
										<span class="tit">할인적용 </span>
										<span class="price"><em>0</em> 원</span>
									</div>
								</div>
							</div>
		
							<div class="pay-area">
								<div class="add-thing">
									<p class="tit">추가차액 </p>
		
									<div class="money">0</div>
								</div>
								<div class="pay">
									<p class="tit">최종결제금액</p>
		
									<div class="money">
										<em>30,000</em>
										<span>원 </span>
									</div>
								</div>
								<div class="payment-thing">
									<span class="tit">결제수단</span>
									<span class="thing">카카오페이</span>
								</div>
							</div>
		
							<div class="btn-group">
								<a href="../booking/timeTable.html" class="button" id="btn_booking_back" title="이전">이전 </a>
								<a href="../booking/bookingResult.html" w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" onclick="startPay()" title="결제">결제</a>
							</div>
						</div>
					</div>
					<!--// seat-result -->
				</div>
				<!--// seat-select-section -->
			</div>
		</div>
	</div>		
</div>		
		
		
		
	
	            
            
                



<footer id="footer">
    <!-- footer-top -->
    <div class="footer-top">
        <div class="inner-wrap">
            <ul class="fnb">
                <li><a href="" title="">회사소개</a></li>
                <li><a href="" title="">인재채용</a></li>
                <li><a href="" title="">사회공헌</a></li>
                <li><a href="" title="">제휴/광고/부대사업문의</a></li>
                <li><a href="" title="">이용약관</a></li>
                <li><a href="" title="">위치기반서비스 이용약관</a></li>
                <li class=""><a href="" title="">개인정보처리방침</a></li>
                <li><a href="" target="" title="">윤리경영</a></li>
            </ul>

            <a href="#layer_looking_theater" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
        </div>
    </div>
    <!--// footer-top -->

    <!-- footer-bottom -->
    <div class="footer-bottom">
        <div class="inner-wrap">
            <div class="ci">MEGABOX : Life Theater</div>

            <div class="footer-info">
                <div>
                    <address>서울특별시 마포구 월드컵로 240, 지상2층(성산동, 월드컵주경기장)</address>
                    <p>ARS 1544-0070</p>
                </div>
                <p>대표자명 홍정인</p>
                <p>· 개인정보보호책임자 공성진</p>
                <p>· 사업자등록번호 211-86-59478</p>
                <p>· 통신판매업신고번호 제 2020-서울마포-4545 호</p>
                <p class="copy">COPYRIGHT © MegaboxJoongAng, Inc. All rights reserved</p>
            </div>

            <div class="footer-sns">
            	<a href="" target="_blank" title=""><i class="iconset ico-youtubeN">유튜브</i></a>
                <a href="" target="_blank" title=""><i class="iconset ico-instagramN">인스타그램</i></a>
                <a href="" target="_blank" title=""><i class="iconset ico-facebookN">페이스북</i></a>
                <a href="" target="_blank" title=""><i class="iconset ico-twitterN">트위터</i></a>
            </div>
        </div>
    </div>
    <!--// footer-bottom -->
    <div id="layer_looking_theater" class="layer-looking-theater"></div>
</footer>
</div>

<form id="mainForm"></form>
<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>

</body>
</html>