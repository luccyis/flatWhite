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
	                <a href="/member/join" title="회원가입">회원가입</a>
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
	        <a href="/mypage/main" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
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
                	<a href="" title="빠른예매 페이지로 이동">예매완료</a>
				</div>
			</div>
		</div>	
		
		<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
			<div class="quick-reserve">
				<h2 class="tit purple">예매완료</h2>
	
					<!-- reserve-finish -->
					<div class="reserve-finish">
						<!-- reserve-ininfomation-box -->
						<div class="reserve-ininfomation-box">
							<div class="movie-poster-area">
								<p>
									티켓 예매번호 
									<span class="roboto">9825-103-47885</span>
								</p>
								<img src="https://img.megabox.co.kr/SharedImg/2022/05/09/6zfAYe6IrZ8BWnruqEfafwakt5cUjWgX_316.jpg" alt="탑건: 매버릭" onerror="noImg(this)">
							</div>
	
							<!-- movie-infomation-area -->
							<div class="movie-infomation-area">
								<div class="movie-info-top">
									<p class="tit">
										<strong>예매가 완료되었습니다<i>!</i></strong>
									</p>
								</div>
	
								<div class="movie-info-middle">
									<ul class="dot-list gray">
										<li><span>예매영화</span> 탑건: 매버릭 / 2D(자막)</li>
										<li><span>관람극장/상영관</span> 코엑스 / 더부티크 105호</li>
										<li><span>관람일시</span> &nbsp;2022.08.02 (수) 12:00</li>
										<li><span>관람인원</span> &nbsp;성인 2명</li>
										<li><span>좌석번호</span> &nbsp;G열 1, G열 2</li>
										<li><span>전화번호</span> &nbsp;010-4156-5879</li>
										<li>
											<span>결제정보</span>
											<strong class="roboto">30,000</strong> 원<br>
											<em></em>
										</li>
									</ul>
								</div>
								<!-- movie-info-bottom -->
								
								<div class="movie-info-bottom">
									<div class="add-send">
										예매정보 추가 발송
										<a href="#tooltip01_01" class="tooltip hover" title="입력하신 번호로 예매정보를 추가발송합니다.">
											<span><i class="iconset ico-question-white">&nbsp;</i></span>
											<div class="ir" id="tooltip01_01" data-width="220">
												입력하신 번호로 예매정보를 추가발송합니다.
											</div>
										</a>
										<input type="text" title="연락처 입력" class="input-text w150px ml10" maxlength="11" id="inp_sms_rcv_no">
										<button type="button" class="button" id="btn_re_send_sms">전송</button>
									</div>
								</div>
								<!--// movie-info-bottom -->
							</div>
							<!--// movie-infomation-area -->
						</div>
						<!--// reserve-ininfomation-box -->
					</div>
					<!--// reserve-finish -->
					<div class="btn-group pt30">
						<a href="#" class="button large" w-data="600" h-data="600" id="btn_ticket_print" title="교환권출력">교환권출력</a>
						<a href="#" class="button large" id="btn_bill_print" title="영수증출력" style="display: none;">영수증출력 </a>
						<a href="/mypage/bookingList" class="button purple large" title="예매내역 페이지로 이동">예매내역</a>
					</div>
					<div class="box-border v1 mt10">
						<ul class="dot-list gray">
							<li>
								상영안내
								<ul class="dash-list">
									<li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
									<li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 10분 후 시작됩니다.</li>
									<li>상영시간 20분전까지 취소 가능하며, 캡쳐화면으로는 입장하실 수 없습니다.</li>
								</ul>
							</li>
							<li class="mt20">
								주차안내
								<ul class="dash-list">
									<li>코엑스몰 주차장 이용</li>
									<li>매표소 주차안내 데스크에서  당일 영화 티켓 제시 후 주차 할인 인증 가능 (주간 4시간 4,800원/야간 22시 이후 2,400원) /출차시 정산</li>
								</ul>
							</li>
						</ul>
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