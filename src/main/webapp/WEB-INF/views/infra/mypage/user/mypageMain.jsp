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
	                <a href="/member/join/Auth" title="회원가입">회원가입</a>
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
	        <a href="/mypage/myPageMain" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
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
	
	<div class="container has-lnb">
    	<div class="page-util">
        	<div class="inner-wrap" id="myLoaction">
        		<div class="location">
					<span>Home</span>
					<a href="/mypage" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
				</div>
			</div>
       	</div>
       	<div class="inner-wrap">
			<div class="lnb-area">
				<nav id="lnb">
					<p class="tit on"><a href="/mypage/Main" title="나의 메가박스">나의 메가박스</a></p>
					<ul>
						<li class=""><a href="/mypage/BookingList" title="예매/구매내역">예매내역</a></li>
						
						<li>
							<a href="/mypage/Main" title="회원정보">회원정보</a>
							<ul class="depth3">
								<li><a href="/mypage/mypageMod" title="개인정보 수정">개인정보 수정</a></li>
								<li><a href="/mypage/additionalInfo" title="선택정보 수정">선택정보 수정</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>

			<div id="contents" class="">
			
				<!-- my-megabox-main -->
				<div class="my-megabox-main">
			
					<div class="my-magabox-info ">
						<!-- top -->
						<div class="top">
							<div class="photo" id="myPhoto">
								<div class="wrap">
									<form name="fileForm" style="display: none;">
										<input type="file" name="file">
										<input type="hidden" name="fileMbNo" value="704656">
									</form>
			
									<i class="iconset ico-add-photo"></i>
			
									<button type="button" class="img">
										<img src="" alt="" onerror="noImg(this, 'human')">
									</button>
								</div>
							</div>
			
							<div class="grade">
								<p class="name">김이젠님은<br>일반등급입니다.</p>
			
								<div class="link">
									<a href="/mypage/mypageMod" title="개인정보수정 페이지로 이동">개인정보수정 <i class="iconset ico-arr-right-reverse"></i></a>
								</div>
							</div>
						</div>
						<!--// top -->
			
						<!-- bottom -->
						<div class="bottom">
			
							<!-- theater -->
							<div class="theater" id="myFaverBrch">
								<div class="tit-area">
									<p class="tit">선호극장</p>
									<a href="" class="right" title="선호극장 변경">변경 <i class="iconset ico-arr-right-reverse"></i></a>
								</div>
			
								<div class="list">
									<div class="no-list" style="display: none;">
										<span>선호극장</span>을  설정하세요.
									</div>
									<ol><li>	<em>1</em>	<span>코엑스</span></li></ol>
								</div>
							</div>
							<!--// theater -->
			
							<!-- coupon -->
							<div class="coupon" id="myCoupon">
								<div class="tit-area">
									<p class="tit">관람권/쿠폰</p>
			
									<a href="" class="more"><i class="iconset ico-arr-right-gray" title="영화관람권 페이지로 이동">더보기</i></a>
								</div>
			
								<div class="list">
									<ul>
										<li>
											<span>영화관람권</span>
											<em>0 매</em>
										</li>
										<li>
											<span>스토어교환권</span>
											<em>0 매</em>
										</li>
										<li>
											<span>할인/제휴쿠폰</span>
											<em>0 매</em>
										</li>
									</ul>
								</div>
							</div>
							<!--// coupon -->
						</div>
						<!--// bottom -->
					</div>
					<!--// my-magabox-info -->
					<div id="myStory">
						<div class="tit-util mt70">
							<h2 class="tit small">나의 무비스토리</h2>
		
							<div class="right">
								<a href="#saw_movie_regi" class="button gray-line small btn-modal-open" w-data="600" h-data="470" title="본 영화 등록">본 영화 등록</a>
							</div>
						</div>
		
						<div class="box-border link-movie-story">
							<a href="" title="본 영화 탭으로 이동">
								<em>39</em>
								<span>본 영화</span>
							</a>
		
							<a href="" title="관람평 탭으로 이동">
								<em>0</em>
								<span>관람평</span>
							</a>
		
							<a href="" title="보고싶어 탭으로 이동">
								<em>0</em>
								<span>보고싶어</span>
							</a>
		
							<a href="" title="무비포스트 탭으로 이동">
								<em>0</em>
								<span>무비포스트</span>
							</a>
						</div>
					</div>
						<!--// left -->
			
					<div id="myBokd">
						<div class="tit-util mt70">
							<h2 class="tit small">나의 예매내역</h2>
			
							<a href="/mypage/BookingList" class="more" title="나의 예매내역 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
						</div>
			
						<!-- my-reserve-history -->
						<div class="my-reserve-history">
							<ul>
								<li class="no-result">
									<div class="no-history-reservation">
										예매 내역이 없습니다.
									</div>
								</li>
							</ul>
						</div>
						<!--// my-reserve-history -->
					</div>
				</div>
				<!--// my-megabox-main -->
			</div>
		</div>
	</div>		
	
	
</div>


<form id="mainForm"></form>
<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>

</body>
</html>	
	