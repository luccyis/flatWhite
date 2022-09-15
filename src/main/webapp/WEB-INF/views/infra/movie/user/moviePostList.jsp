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
	
	<div class="container">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
                	<a href="/movie/main title="영화 페이지로 이동">영화</a>
                	<a href="" title="전체영화 페이지로 이동">전체영화</a>
                	<a href="" title="박스오피스 페이지로 이동">박스오피스</a>
				</div>
			</div>
		</div>
		
	<!-- contents -->
		<div id="contents" class="pt00">
		<!-- post lank  -->
		<div class="post-lank-box">
			<div class="inner-wrap">
				<h2 class="tit">무비포스트</h2>
				<!-- post-lank -->
				<ol class="post-lank">
					<li>
						<a href="#" class="top5Btn" data-no="범죄도시 2" title="범죄도시 2 무비포스트 보기">
							<p class="lank">1</p>
							<div class="post-count">
								<p class="tit">POST</p>
								<p class="count">1,033</p>
							</div>
							<p class="img"><img src="https://img.megabox.co.kr/SharedImg/2022/05/23/oZfETtpEvKGpdY2JQo2Z6wFL0S4cpKy5_150.jpg" onerror="noImg(this)" alt="범죄도시 2"></p>
						</a>
					</li>
					<li>
						<a href="#" class="top5Btn" data-no="탑건: 매버릭" title="탑건: 매버릭 무비포스트 보기">
							<p class="lank">2</p>
							<div class="post-count">
								<p class="tit">POST</p>
								<p class="count">991</p>
							</div>
							<p class="img"><img src="https://img.megabox.co.kr/SharedImg/2022/05/09/6zfAYe6IrZ8BWnruqEfafwakt5cUjWgX_150.jpg" onerror="noImg(this)" alt="탑건: 매버릭"></p>
						</a>
					</li>
					<li>
						<a href="#" class="top5Btn" data-no="한산: 용의 출현" title="한산: 용의 출현 무비포스트 보기">
							<p class="lank">3</p>
							<div class="post-count">
								<p class="tit">POST</p>
								<p class="count">592</p>
							</div>
								<p class="img"><img src="https://img.megabox.co.kr/SharedImg/2022/07/28/1ogGcWYxCNJ9MTnizlZLdZ6REjg6xX1z_150.jpg" onerror="noImg(this)" alt="한산: 용의 출현"></p>
						</a>
					</li>
					<li>
						<a href="#" class="top5Btn" data-no="모가디슈" title="모가디슈 무비포스트 보기">
							<p class="lank">4</p>
							<div class="post-count">
								<p class="tit">POST</p>
								<p class="count">510</p>
							</div>
							<p class="img"><img src="https://img.megabox.co.kr/SharedImg/2022/08/23/ba21a1TmSte0W3cfzJFnxLqxxDUwzQoQ_150.jpg" onerror="noImg(this)" alt="모가디슈"></p>
						</a>
					</li>
					<li>
						<a href="#" class="top5Btn" data-no="헌트" title="헌트 무비포스트 보기">
							<p class="lank">5</p>
								<div class="post-count">
									<p class="tit">POST</p>
									<p class="count">424</p>
								</div>
							<p class="img"><img src="https://img.megabox.co.kr/SharedImg/2022/08/05/QDUC0cjm2bnWDCCQPYpQvelnoFe1CCfH_150.jpg" onerror="noImg(this)" alt="헌트"></p>
						</a>
					</li>
				</ol>
				<!--// post-lank -->
				<!-- mypost-box -->
				<div class="mypost-box">
				<!-- 로그인 전 -->
					<div class="before">
						<div class="post-count">
							<p class="tit">MY POST</p>
							<a href="javaScript:fn_viewLoginPopup('default','pc');" class="txt-login" title="로그인하기">로그인하기</a>
						</div>
					</div>
				</div>
				<!--// mypost-box -->

				<!-- add-post -->
				<div class="add-post">
					<a href="../movie/moviePostReg.html" class="button purple" title="무비포스트 작성">무비포스트 작성</a>
				</div>
				<!--// add-post -->
			</div>
		</div>
		<!--// post lank -->

		<!--content:Start -->
		<div class="inner-wrap mt30">
			<div class="tab-sorting mb40">
				<button type="button" class="on" data-type="all">모든영화</button>
				<button type="button" data-type="live">현재상영작</button>

				
			</div>

			<div class="board-list-util">
				<p class="result-count"><strong>전체 <b class="result-count-cnt">544</b>건</strong></p>

				<div class="sorting" id="sortTab">
					<span><button type="button" class="btn on" sort-type="date">최신순</button></span>
					<span><button type="button" class="btn" sort-type="like">공감순</button></span>
				</div>

				<div class="board-search">
					<input type="text" id="ibxMovieNmSearch" name="ibxMovieNmSearch" title="검색어를 입력해 주세요." placeholder="제목, 장르, 감독, 배우, 아이디" class="input-text" value="헌트">
					<input type="hidden" id="moviePostId" name="moviePostId" value="">
					<button type="button" class="btn-search-input" id="btnSearch">검색</button>
				</div>
			</div>

			<!-- 2019-04-19 : 무비 포스트 완전 바뀜. 재작업 -->
			<!-- movie-post-list -->
			<div class="movie-post-list" id="moviePostList" style="position: relative; height: 1296.7px;"><div class="grid-item" style="position: absolute; left: 0px; top: 0px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212459" data-row="1" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/07/21/mBhQ79gQ7kHeTRhadpbF3G82dMq2wOFm_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="wsws12**님의 무비포스트 보기" class="moviePostId" data-id="F1BC8F2B-C32D-41B1-A4AE-67112E07F63E">wsws12**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212459" data-row="1" data-tot="544">                <p class="txt">시대적 배경+ 실화를 알고 가면 더 재밌을 영화! 액션이 볼만했어용</p>                <p class="time">6 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212459"><i class="iconset ico-like">좋아요 수</i> <span class="none">0</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212459" data-row="1" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 1</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 290px; top: 0px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212450" data-row="2" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/07/21/3LEdnoDsdSHoHwEHgmeSTXpNHgPQjdTY_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="today01**님의 무비포스트 보기" class="moviePostId" data-id="C642421B-DF6C-448F-9F12-92D9EAA6584B">today01**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212450" data-row="2" data-tot="544">                <p class="txt">잘 만들었고 황정민 연기 명품<br>이정재.정우성 연기도 잘 하지만 압도적은 아님.<br>재미있었다.</p>                <p class="time">11 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212450"><i class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212450" data-row="2" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 580px; top: 0px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212447" data-row="3" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/08/05/j955i2acyN0WMg7QQOjnSVLuMl1xmzur_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="sang20**님의 무비포스트 보기" class="moviePostId" data-id="DEB385DD-973D-4B23-B6E3-D76817E06866">sang20**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212447" data-row="3" data-tot="544">                <p class="txt">이정재가 만들었다고는 믿기질 않을 퀄리티</p>                <p class="time">12 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212447"><i class="iconset ico-like">좋아요 수</i> <span class="none">3</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212447" data-row="3" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 870px; top: 0px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212440" data-row="4" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/06/24/Wex0g7jVl7KgD93otWd48ls34mzqO9lU_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="leesuk74**님의 무비포스트 보기" class="moviePostId" data-id="94A4EAD9-9C5F-4D8E-9533-57810AD2F5E9">leesuk74**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212440" data-row="4" data-tot="544">                <p class="txt">기대하고 보았는데<br>기대이상으로 좋았다</p>                <p class="time">13 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212440"><i class="iconset ico-like">좋아요 수</i> <span class="none">2</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212440" data-row="4" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 0px; top: 426.172px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212436" data-row="5" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/07/21/b9On3o0NhLTjOrST7RJVfO58oxYBvI5H_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="gidwldl**님의 무비포스트 보기" class="moviePostId" data-id="F9D96AD0-8B8C-42E3-A20B-432064F1B3AA">gidwldl**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212436" data-row="5" data-tot="544">                <p class="txt">숨막히는 액션과 연기파 두 배우 그리고 거물급 까메오들 보는 재미에 시간가는 줄 모름</p>                <p class="time">14 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212436"><i class="iconset ico-like">좋아요 수</i> <span class="none">5</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212436" data-row="5" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 580px; top: 426.172px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212432" data-row="6" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/07/21/mBhQ79gQ7kHeTRhadpbF3G82dMq2wOFm_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="jnbk12**님의 무비포스트 보기" class="moviePostId" data-id="7D8D1EA7-A62D-4457-9752-1E90220F2845">jnbk12**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212432" data-row="6" data-tot="544">                <p class="txt">고민하다 봤는데 생각보다 볼만했고 주연. 조연 배우들이 연기가 너무 좋았습니다.<br> </p>                <p class="time">16 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212432"><i class="iconset ico-like">좋아요 수</i> <span class="none">3</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212432" data-row="6" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 870px; top: 426.172px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212425" data-row="7" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/08/12/dEB5wO1XMqqyg5BXC8ravfmmlJ1eYFTk_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="qkrwltjd06**님의 무비포스트 보기" class="moviePostId" data-id="52B9F520-73F6-411E-A5EF-5591EE647093">qkrwltjd06**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212425" data-row="7" data-tot="544">                <p class="txt">한순간도 긴장을 놓으면 안된다</p>                <p class="time">18 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212425"><i class="iconset ico-like">좋아요 수</i> <span class="none">2</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212425" data-row="7" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 1</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 290px; top: 462.547px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212422" data-row="8" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/08/02/SfbwXoPcevauECDtqYrxWwqtW1Qm1ere_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="bestlife10**님의 무비포스트 보기" class="moviePostId" data-id="8B21A27B-2FEB-49FB-9A2D-8C466F20AFDA">bestlife10**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212422" data-row="8" data-tot="544">                <p class="txt">정말  박진감 넘치는 영화 잘보았습니다 </p>                <p class="time">18 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212422"><i class="iconset ico-like">좋아요 수</i> <span class="none">2</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212422" data-row="8" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 870px; top: 834.156px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212421" data-row="9" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/06/24/oDWGucTyKglj9ISWidRt4XmfsK94Dafv_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="Siggi767**님의 무비포스트 보기" class="moviePostId" data-id="EBE47DAD-4EF8-444D-A841-A707C70B287A">Siggi767**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212421" data-row="9" data-tot="544">                <p class="txt">잠나게 보았어요~~</p>                <p class="time">18 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212421"><i class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212421" data-row="9" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 0px; top: 870.531px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212419" data-row="10" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/07/21/mBhQ79gQ7kHeTRhadpbF3G82dMq2wOFm_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="kimeas**님의 무비포스트 보기" class="moviePostId" data-id="6B07CAF9-5ED1-4FC3-885A-837BA9668CA3">kimeas**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212419" data-row="10" data-tot="544">                <p class="txt">한국의 현대사 팬티 벗겨 봐. 설정의 상상력 최고!</p>                <p class="time">19 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212419"><i class="iconset ico-like">좋아요 수</i> <span class="none">2</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212419" data-row="10" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 580px; top: 870.531px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212407" data-row="11" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/08/12/dEB5wO1XMqqyg5BXC8ravfmmlJ1eYFTk_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="cyh1232n**님의 무비포스트 보기" class="moviePostId" data-id="70D3DE4D-B51E-4962-8F23-85455AF5128C">cyh1232n**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212407" data-row="11" data-tot="544">                <p class="txt">볼만하네요~^^</p>                <p class="time">22 시간전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212407"><i class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212407" data-row="11" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div><div class="grid-item" style="position: absolute; left: 290px; top: 888.719px;">    <div class="wrap">        <div class="img">            <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="212402" data-row="12" data-tot="544" data-url=""><img src="https://img.megabox.co.kr/SharedImg/2022/08/05/j955i2acyN0WMg7QQOjnSVLuMl1xmzur_230.jpg" alt="헌트" onerror="noImg(this);"> /&gt;</a>        </div>        <div class="cont">            <div class="writer">                <a href="#" title="anfang**님의 무비포스트 보기" class="moviePostId" data-id="79EACC0C-AE40-454C-9E1D-455C5031CF51">anfang**</a>            </div>            <a href="/movie-detail?rpstMovieNo=22037300" title="헌트 상세보기">                <p class="tit">헌트</p>            </a>            <a href="#layer_post_detail" title="무비포스트 상세보기" class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto" data-no="212402" data-row="12" data-tot="544">                <p class="txt">허구와 현실의 짬뽕 비빔밥</p>                <p class="time">1 일전</p>            </a>            <div class="condition">                <button type="button" class="btn-like postLikeBtn listBtn jsMake" data-no="212402"><i class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>                <a href="#layer_post_detail" title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto" data-no="212402" data-row="12" data-tot="544"><i class="iconset ico-reply">댓글 수</i> 0</a>            </div>        </div>    </div></div></div>

			<div class="no-moviepost" style="display: none;">등록된 무비포스트가 없습니다.</div>

			<div class="btn-more" style="">
				<button type="button" class="btn" id="btnAddMovie">더보기 <i class="iconset ico-btn-more-arr"></i></button>
			</div>

		</div>
		<!--content:End -->
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