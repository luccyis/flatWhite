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
	
	<div class="container">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
                	<a href="/movie/main" title="영화 페이지로 이동">영화</a>
                	<a href="" title="전체영화 페이지로 이동">전체영화</a>
				</div>
			</div>
		</div>
	<!-- contents -->
		<div id="contents" class="">
			<!-- inner-wrap -->
			<div class="inner-wrap">
				<h2 class="tit">전체영화</h2>
				<div class="tab-list fixed">
					<ul id="topMenu">
						<li class="on"><a href="" title="박스오피스 탭으로 이동">박스오피스</a></li>
						<li><a href="" title="">상영예정작</a></li>
						<li><a href="" title="">특별상영</a></li>
						<li><a href="" title="">필름소사이어티</a></li>
						<li><a href="" title="">클래식소사이어티</a></li>
					</ul>
				</div>
				<div class="movie-list-util mt40">
					<div class="movie-search">
						<input type="text" title="영화명을 입력하세요" id="ibxMovieNmSearch" name="ibxMovieNmSearch" placeholder="영화명 검색" class="input-text">
						<button type="button" class="btn-search-input" id="btnSearch">검색</button>
					</div>
				</div>	
	
				<div class="movie-list">
					<ol class="list" id="movieList">
						<li tabindex="0" class="no-img">
							<div class="movie-list-info">    
								<p class="rank" style="">1<span class="ir">위</span></p>
								<a href="/movie/view">    
									<img src="https://img.megabox.co.kr/SharedImg/2022/05/09/6zfAYe6IrZ8BWnruqEfafwakt5cUjWgX_420.jpg" alt="탑건: 매버릭" class="poster lozad" onerror="noImg(this)">  
								</a>  
				  				<div class="movie-score" style="opacity: 0;">        
									<a class="wrap movieBtn" data-no="22023000" title="탑건: 매버릭 상세보기">            
										<div class="summary">
											한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!
										</div>            
										<div class="my-score big">                
											<div class="preview">                    
												<p class="tit">관람평</p>                   
												<p class="number">9.1<span class="ir">점</span></p>                
											</div>            
										</div>        
									</a>    
								</div>
							</div>
							<div class="tit-area">    
								<p class="movie-grade age-12">,</p>    
								<p title="탑건: 매버릭" class="tit">탑건: 매버릭</p>
							</div>
							<div class="rate-date">    
								<span class="rate">예매율 43.4%</span>    
								<span class="date">개봉일 2022.06.22</span>
							</div>
							<div class="btn-util">    
								<button type="button" class="button btn-like" data-no="22023000">
									<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> 
									<span>1k</span>
								</button>    
								<div class="case movieStat4" style="">        
									<a href="/booking/timeTable" class="button purple bokdBtn" data-no="22022900" title="영화 예매하기">예매</a>  
					  			</div>
					  		</div>	
				  		</li>
				  		<li tabindex="0" class="no-img">
							<div class="movie-list-info">    
								<p class="rank" style="">2<span class="ir">위</span></p>    
								<img src="https://img.megabox.co.kr/SharedImg/2022/06/07/S3GJQZbpshoIx0Lelerscl9rlI14FHqK_420.jpg" alt="헤어질 결심" href="" class="poster lozad" onerror="noImg(this)">    
				  				<div class="movie-score" style="opacity: 0;">        
									<a href="" class="wrap movieBtn" data-no="22023000" title="헤어질 결심 상세보기">            
										<div class="summary">
										</div>            
										<div class="my-score big">                
											<div class="preview">                    
												<p class="tit">관람평</p>                   
												<p class="number">9.1<span class="ir">점</span></p>                
											</div>            
										</div>        
									</a>    
								</div>
							</div>
							<div class="tit-area">    
								<p class="movie-grade age-15">,</p>    
								<p title="헤어질 결심" class="tit">헤어질 결심</p>
							</div>
							<div class="rate-date">    
								<span class="rate">예매율 3.5%</span>    
								<span class="date">개봉일 2022.06.29</span>
							</div>
							<div class="btn-util">    
								<button type="button" class="button btn-like" data-no="22023000">
									<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> 
									<span>1.6k</span>
								</button>    
								<div class="case movieStat4" style="">        
									<a href="#" class="button purple bokdBtn" data-no="22022900" title="영화 예매하기">예매</a>  
					  			</div>
					  		</div>	
				  		</li>
				  		<li tabindex="0" class="no-img">
							<div class="movie-list-info">    
								<p class="rank" style="">3<span class="ir">위</span></p>    
								<img src="https://img.megabox.co.kr/SharedImg/2022/07/06/t0SyNNVrh4UBBxmdCqBVtehgd03NWpf7_420.jpg" alt="토르: 러브 앤 썬더" class="poster lozad" onerror="noImg(this)">
				  				<div class="movie-score" style="opacity: 0;">        
									<a href="#" class="wrap movieBtn" data-no="22023000" title="토르: 러브 앤 썬더 상세보기">            
										<div class="summary">
										</div>            
										<div class="my-score big">                
											<div class="preview">                    
												<p class="tit">관람평</p>                   
												<p class="number">7.9<span class="ir">점</span></p>                
											</div>            
										</div>        
									</a>    
								</div>
							</div>
							<div class="tit-area">    
								<p class="movie-grade age-12">,</p>    
								<p title="토르: 러브 엔 썬더" class="tit">토르: 러브 앤 썬더</p>
							</div>
							<div class="rate-date">    
								<span class="rate">예매율 2.1%</span>    
								<span class="date">개봉일 2022.07.06</span>
							</div>
							<div class="btn-util">    
								<button type="button" class="button btn-like" data-no="22023000">
									<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> 
									<span>2.1k</span>
								</button>    
								<div class="case movieStat4" style="">        
									<a href="#" class="button purple bokdBtn" data-no="22022900" title="영화 예매하기">예매</a>  
					  			</div>
					  		</div>	
				  		</li>
				  		<li tabindex="0" class="no-img">
							<div class="movie-list-info">    
								<p class="rank" style="">4<span class="ir">위</span></p>   
								<img src="https://img.megabox.co.kr/SharedImg/2022/05/09/D7lzyEyxtVgY3wAQ2Lz9eRGiFHUZIHMh_420.jpg" alt="애프터 양" class="poster lozad" onerror="noImg(this)"> 
				  				<div class="movie-score" style="opacity: 0;">        
									<a href="#" class="wrap movieBtn" data-no="22023000" title="애프터 양 상세보기">            
										<div class="summary">
										</div>            
										<div class="my-score big">                
											<div class="preview">                    
												<p class="tit">관람평</p>                   
												<p class="number">8.3<span class="ir">점</span></p>                
											</div>            
										</div>        
									</a>    
								</div>
							</div>
							<div class="tit-area">    
								<p class="movie-grade age-all">,</p>    
								<p title="애프터 양" class="tit">애프터 양</p>
							</div>
							<div class="rate-date">    
								<span class="rate">예매율 0.8%</span>    
								<span class="date">개봉일 2022.06.01</span>
							</div>
							<div class="btn-util">    
								<button type="button" class="button btn-like" data-no="22023000">
									<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> 
									<span>1k</span>
								</button>    
								<div class="case movieStat4" style="">        
									<a href="#" class="button purple bokdBtn" data-no="22022900" title="영화 예매하기">예매</a>  
					  			</div>
					  		</div>	
				  		</li>
					</ol>
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


	<form id="mainForm"></form>
	<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
	<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>

</div>

</body>
</html>