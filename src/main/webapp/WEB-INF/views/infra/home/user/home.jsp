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
	<div class="header-add-area">
    	<div class="cont">
    		<div id="3Vx8ybGrT2Ka3I2TjnHTjQ">
    			<iframe src="" title="메인 상단 배너영역" height="80px" width="100%" id="3Vx8ybGrT2Ka3I2TjnHTjQ" name="3Vx8ybGrT2Ka3I2TjnHTjQ" scrolling="no" frameborder="0" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"></iframe>
    		</div>
   		</div>
    	<button type="button" class="btn-del">광고영역 닫기</button>
	</div>
	<header id="header" class="main-header no-bg">
		    <h1 class="ci"><a href="/home" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
		    <div class="util-area">
		        <div class="right-link">
		            <!-- 로그인전 -->
		            <div class="before" style="">
		                <a href="/login" title="로그인">로그인</a>
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
		        <a href="/booking/timetable" class="link-ticket" title="상영시간표">상영시간표</a>
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
		<link rel="stylesheet" href="/resources/css/main.css" media="all">	
	
	
		<form name="detailForm" id="detailForm" method="post">
			<input type="hidden" name="rpstMovieNo" id="rpstMovieNo">
		</form>
		<form name="boxoForm" id="boxoForm" method="post" onsubmit="">
			<input type="hidden" name="ibxMovieNmSearch" id="ibxMovieNmSearch">
		</form>
		
		<div class="container main-container area-ad">
			<div id="contents">
				<!-- main-page -->
				<div class="main-page">
					<div id="main_section01" class="section main-movie">
						<div class="bg">
							<div class="bg-pattern"></div>
							<img src="https://img.megabox.co.kr/SharedImg/2022/07/18/9VNzlQdAXthFNSO8dtfjE9E166E3sAve_380.jpg" alt="비상선언_칸 영화제 공식 포스터_한글 ver._8월3일대개봉.jpg" onerror="noImg(this, 'main');">
						</div>

						<!-- cont-area  -->
						<div class="cont-area">
							<!-- tab-sorting -->
							<div class="tab-sorting">
								<button type="button" class="on" sort="boxoRankList" name="btnSort">박스오피스</button>
							
							</div>
						<!-- tab-sorting -->
							<a href="/movie/main" class="more-movie" title="더 많은 영화보기">
								더 많은 영화보기 <i class="iconset ico-more-corss gray"></i>
							</a>
							<!-- main-movie-list -->
							<div class="main-movie-list">
								<ol class="list">
									<li name="li_boxoRankList" class="first">
										<a href="/movie/view" class="movie-list-info" title="영화상세 보기">
											<p class="rank">1<span class="ir">위</span></p>
											<!-- to 개발 : alt 값에 영화 제목 출력 -->
									      	<img src="https://img.megabox.co.kr/SharedImg/2022/05/09/6zfAYe6IrZ8BWnruqEfafwakt5cUjWgX_420.jpg" alt="탑건: 매버릭" class="poster" onerror="noImg(this, 'main');">
						                      	<div class="wrap" style="display: none;">
												<div class="summary"></div>
												 
												<div class="score">
													<div class="preview">
														<p class="tit">관람평</p>
														<p class="number">9.1<span class="ir">점</span></p>
													</div>
												</div>
											</div>
										</a>
										<div class="btn-util">
		                                    <button type="button" class="button btn-like" rpst-movie-no="22023000">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
													1k
											</button>
		                                    <div class="case">
		                                       <a href="/booking/timeTable" class="button gblue" title="영화 예매하기">예매</a>
		                                   </div>
		                               </div>
									</li>
		
									<li name="li_boxoRankList" class="">
										<a href="" class="movie-list-info" title="영화상세 보기">
											<p class="rank">2<span class="ir">위</span></p>
											<!-- to 개발 : alt 값에 영화 제목 출력 -->
									      	<img src="https://img.megabox.co.kr/SharedImg/2022/06/07/S3GJQZbpshoIx0Lelerscl9rlI14FHqK_420.jpg" alt="헤어질 결심" class="poster" onerror="noImg(this, 'main');">
						                      	<div class="wrap" style="display: none; opacity: 1;">
												<div class="summary"></div>
												
												<div class="score">
													<div class="preview">
														<p class="tit">관람평</p>
														<p class="number">9.1<span class="ir">점</span></p>
													</div>
												</div>
											</div>
										</a>
										<div class="btn-util">
		                                    <button type="button" class="button btn-like" rpst-movie-no="22023000">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
													1.6k
											</button>
		                                    <div class="case">
		                                    	<a href="/booking/timeTable" class="button gblue" title="영화 예매하기">예매</a>
		                                    </div>
		                               </div>
									</li>
		
									<li name="li_boxoRankList" class="">
										<a href="" class="movie-list-info" title="영화상세 보기">
											<p class="rank">3<span class="ir">위</span></p>
											<!-- to 개발 : alt 값에 영화 제목 출력 -->
									      	<img src="https://img.megabox.co.kr/SharedImg/2022/07/06/t0SyNNVrh4UBBxmdCqBVtehgd03NWpf7_420.jpg" alt="토르: 러브 앤 썬더" class="poster" onerror="noImg(this, 'main');">
					                      	<div class="wrap" style="display: none; opacity: 1;">
												<div class="summary"></div>
											
												<div class="score">
													<div class="preview">
														<p class="tit">관람평</p>
														<p class="number">7.9<span class="ir">점</span></p>
													</div>
												</div>
											</div>
										</a>
										<div class="btn-util">
			                                <button type="button" class="button btn-like" rpst-movie-no="22018400">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												2.1k
											</button>
		                                    <div class="case">
		                                    	<a href="/booking/timeTable" class="button gblue" title="영화 예매하기">예매</a>
		                                    </div>
		                                </div>
									</li>
									
									<li name="li_boxoRankList" class="">
										<a href="" class="movie-list-info" title="영화상세 보기">
											
											<p class="rank">4<span class="ir">위</span></p>
											<!-- to 개발 : alt 값에 영화 제목 출력 -->
									      	<img src="https://img.megabox.co.kr/SharedImg/2022/05/09/D7lzyEyxtVgY3wAQ2Lz9eRGiFHUZIHMh_420.jpg" alt="애프터 양" class="poster" onerror="noImg(this, 'main');">
					                      	<div class="wrap">
												<div class="summary"></div>
												
												<div class="score">
													<div class="preview">
														<p class="tit">관람평</p>
														<p class="number">8.7<span class="ir">점</span></p>
													</div>
												</div>
											</div>
										</a>
										<div class="btn-util">
			                            	<button type="button" class="button btn-like" rpst-movie-no="22037300">
												<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>
												1k
											</button>
			                                 <div class="case">
			                                   <a href="/booking/timeTable" class="button gblue" title="영화 예매하기">예매</a>
			                               </div>
		                               </div>
									</li>
								</ol>	
							</div>
							<!--// main-movie-list -->

							<div class="search-link">
								<div class="cell">
									<div class="search">
										<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" class="input-text" id="movieName">
										<button type="button" class="btn" id="btnSearch"><i class="iconset ico-search-w"></i> 검색</button>
									</div>
								</div>
		
								<div class="cell"><a href="/booking/timeTable" title="상영시간표 보기"><i class="iconset ico-schedule-main"></i> 상영시간표</a></div>
								<div class="cell"><a href="/movie/main" title="박스오피스 보기"><i class="iconset ico-boxoffice-main"></i> 박스오피스</a></div>
								<div class="cell"><a href="/booking/timeTable" title="빠른예매 보기"><i class="iconset ico-quick-reserve-main"></i> 빠른예매</a></div>
							</div>
						</div>
				<!--// cont-area  -->
					</div>
			<!--// section main-movie : 영화 -->

			<!-- section main-benefit : 혜택 -->
				<div id="main_section02" class="section main-benefit">
					<!-- wrap -->
					<div class="wrap">
						<!-- 혜택 시작 -->
						<div class="tit-util">
							<h2 class="tit">혜택</h2>
							<a href="" onclick="" class="btn-more-cross purple" title="혜택 더보기">더보기</a>
						</div>
							<!--
								왼쪽 글씨 이미지 사이즈 300 * 230, 오른쪽 이미지 635 * 325
							 -->
						<div class="slider main-condition">
							<div class="slider-view" style="width: 1100px;">
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/08/01/hBPtMdOJzpuPAtgYiRzA27HiJEUso7ia.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/08/01/PkqUJY2rla9nNB3IlZxfSGPB29H2PV1b.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/07/18/EyLPMszA2h5hgsW99Lv2mxZ2jDg2wrWi.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/07/18/sUTcCl6Wm3mMRobMIWHixMelcznv9U8D.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="" target="_self" title="이벤트페이지 바로가기"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/06/24/6sb4dWdd8y1njIzzRxrzRqeUYKreanON.png" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="" target="_self" title="이벤트페이지 바로가기"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/06/24/e0J0ZfB5njye346I2UzHL0tUIjmxot2f.png" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/06/07/6GT9suCtq4nejcuEINJC4IxvKGZy0hTT.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/06/07/SIeNdNGwmOKgIKPCraVEJYVSoaEaH1gT.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/04/25/xjBVzi25V6oLS7Q7i1ZRgqK3CZUnuRzE.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/04/25/f509FdJABFDs6erpBAUqJx0uNColbDOs.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="" target="_self" title="할인쿠폰 받기"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/05/19/6iBsf8ASsvehkEBk7uq91bxsmINHAAT6.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="" target="_self" title="할인쿠폰 받기"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/05/19/pATmXt3mU6XP9F2hYWslUkpllWa1cxJ4.png" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: block; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 0px; opacity: 1;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/01/14/mmitS7eSkiQVzZL1paP0NxK5m6j3uVKT.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 300px; opacity: 1;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2022/01/14/yDRjd4ejz8oirC4wLrukvHK3KIWH1tCY.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2021/02/01/f7RPSplY1eWEFFhKNBDJK4JIXKv9NBZK.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2021/02/01/fZ8glF2ggujTRrF5vtRuE1iE2UjjV1oF.jpg" alt="" onerror="noImg(this, 'main');"></a></div>
									</div>
								</div>
								</div>
							<div class="slider-control">
	
								<div class="page">
									<span class="" style="width:12.5%"></span>
									<span class="" style="width:12.5%"></span>
									<span class="" style="width:12.5%"></span>
									<span class="" style="width:12.5%"></span>
									<span class="" style="width:12.5%"></span>
									<span class="" style="width:12.5%"></span>
									<span class="on" style="width:12.5%"></span>
									<span class="" style="width:12.5%"></span>
								</div>
	
								<div class="util">
									<button type="button" class="btn-prev" style="opacity: 1;">이전 이벤트 보기</button>
									<button type="button" class="btn-next" style="opacity: 1;">다음 이벤트 보기</button>
	
									<button type="button" class="btn-pause on">일시정지</button>
									<button type="button" class="btn-play">자동재생</button>
								</div>
	
								<div class="page-count">7 / 8</div>
	
							</div>
						</div>
	
	
						<div class="brn-ad" style="height:204px;">
							<div class="banner">
								<div class="size">
											<a href="#" data-no="10868" data-netfunnel="N" class="eventBtn" title="">
												<img src="https://img.megabox.co.kr/SharedImg/event/2022/01/14/PaafbTzHLzAZslfTq3eRZS19bGTV7sG7.jpg" alt="신규 &amp; 휴면회원 만.반.잘.부! 모두 혜택 받아가세요" onerror="noImg(this, 'main');">
												</a>
										</div>
										<div class="size small">
											<a href="#" data-no="11263" data-netfunnel="N" class="eventBtn" title="할인쿠폰 받기">
												<img src="https://img.megabox.co.kr/SharedImg/event/2022/05/19/5JwwahPffOCxijnBBFDo0Uja7kD3vwWQ.jpg" alt="내 차 보험료 확인하고 영화 1만원 할인쿠폰 받으세요!" onerror="noImg(this, 'main');">
												</a>
										</div>
									</div>
							<!-- 광고영역 -->
							<div class="ad-img">
								<!-- <img src="../../../static/pc/images/main/@img-main-ad.png" alt="블루멤버스 포인트로" /> -->
								<script data-id="M_rwl-o8QV2xFMa0Oy93qQ" name="megabox_p/main/main@main_middle_event_415x530?mlink=341" src="" async=""></script>
								<script src=""></script>
								<div id="M_rwl-o8QV2xFMa0Oy93qQ">
									<iframe src="" title="메인 혜택 우측배너영역" height="530px" width="415px" name="mliframe" scrolling="no" frameborder="0" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"></iframe>
								</div>
							</div>
							<!-- 광고영역 -->
						</div>
						<!-- 혜택 종료 -->
	
						<div class="menu-link">
							<div class="cell vip"><a href="" title="VIP LOUNGE 페이지로 이동">VIP LOUNGE</a></div>
							<div class="cell membership"><a href="" title="멤버십 페이지로 이동">멤버십</a></div>
							<div class="cell card"><a href="" title="할인카드안내 페이지로 이동">할인카드안내</a></div>
							<div class="cell event"><a href="" onclick="" title="이벤트 페이지로 이동">이벤트</a></div>
							<div class="cell store"><a href="" onclick="" title="스토어 페이지로 이동">스토어</a></div>
						</div>
	
						<!-- grand-open -->
						<div class="grand-open">
							<p class="tit">
								<span>MEGABOX</span>
								<strong>GRAND<br>OPENING</strong>
							</p>
	
							<div class="open-cont">
	
								<div class="open-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
	
								<div class="open-control">
									<button type="button" class="open-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전 이벤트 보기</button>
									<button type="button" class="open-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음 이벤트 보기</button>
	
									<button type="button" class="open-pause on">일시정지</button>
									<button type="button" class="open-play">자동재생</button>
								</div>
	
								<div class="count-num">
									<span title="현재 페이지" class="active">1</span> /
									<span title="전체 페이지" class="total">1</span>
								</div>
	
								<div class="open-swiper swiper-container-initialized swiper-container-horizontal">
									<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
										<div class="cell swiper-slide swiper-slide-active" style="width: 242.333px;">
											<a href="#" data-no="11524" data-netfunnel="" class="eventBtn new" title="[광명소하지점] 오픈 이벤트 페이지로 이동">
											<span class="label">
													<!-- 지점 상태에 따른 노출 문구 설정-->
													<em>신규오픈</em><!-- 코드선택일 경우 (신규오픈,리뉴얼오픈,오픈예정)-->
														</span>
	
												<p class="area">
													<span></span>
													<strong>광명소하</strong>
												</p>
	
												<p class="date">2022.07.05</p>
	
												<img src="" alt="[광명소하지점] 오픈 이벤트" onerror="noImg(this, 'main');">
											</a>
										</div>
										<div class="cell swiper-slide swiper-slide-next" style="width: 242.333px;">
											<a href="#" data-no="11531" data-netfunnel="" class="eventBtn new" title="[금정AK플라자지점] 오픈 이벤트 페이지로 이동">
											<span class="label">
													<!-- 지점 상태에 따른 노출 문구 설정-->
													<em>신규오픈</em><!-- 코드선택일 경우 (신규오픈,리뉴얼오픈,오픈예정)-->
														</span>
	
												<p class="area">
													<span></span>
													<strong>금정AK플라자</strong>
												</p>
	
												<p class="date">2022.07.13</p>
	
												<img src="" alt="[금정AK플라자지점] 오픈 이벤트" onerror="noImg(this, 'main');">
											</a>
										</div>
									</div>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
							</div>
						</div>
						<!--// grand-open -->
					</div>
					<!--// wrap -->
				</div>
				<!--// section main-benefit : 혜택 -->
					
				<div id="main_section04" class="section main-info">
	
					<h2 class="tit">메가박스 안내</h2>
	
					<div class="swiper-container info-special swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper">
							<div class="swiper-slide special-cell swiper-slide-active" style="width: 170px; margin-right: 16px;">
								<a href="" title="DOLBY CINEMA 페이지로 이동" class="bg-dolby">DOLBY CINEMA</a>
							</div>
							<div class="swiper-slide special-cell swiper-slide-next" style="width: 170px; margin-right: 16px;">
								<a href="" title="THE BOUTIQUE PRIVATE 페이지로 이동" class="bg-private">THE BOUTIQUE PRIVATE</a>
							</div>
							<div class="swiper-slide special-cell" style="width: 170px; margin-right: 16px;">
								<a href="" title="THE BOUTIQUE 페이지로 이동" class="bg-boutique">THE BOUTIQUE</a>
							</div>
							<div class="swiper-slide special-cell" style="width: 170px; margin-right: 16px;">
								<a href="" title="MX 페이지로 이동" class="bg-mx">MX</a>
							</div>
							<div class="swiper-slide special-cell" style="width: 170px; margin-right: 16px;">
								<a href="" title="COMFORT 페이지로 이동" class="bg-comfort">COMFORT</a>
							</div>
							<div class="swiper-slide special-cell" style="width: 170px; margin-right: 16px;">
								<a href="" title="PUPPY CINEMA 페이지로 이동" class="bg-puppy new">PUPPY CINEMA</a>
							</div>
							<div class="swiper-slide special-cell" style="width: 170px; margin-right: 16px;">
								<a href="" title="MEGABOX KIDS 페이지로 이동" class="bg-kids">MEGABOX KIDS</a>
							</div>
						</div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
					</div>
	
					<div class="special-control">
						<button type="button" class="special-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></button>
						<button type="button" class="special-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></button>
					</div>
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
	
	            <a href="" class="btn-looking-theater" title="극장찾기"><i class="iconset ico-footer-search"></i> 극장찾기</a>
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

	<form id="mainForm"></form>
	<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
	<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
	</div>
</body>
</html>