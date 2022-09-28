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
	<%@include file="../../../common/user/includeV1/header.jsp" %>
	
	<div class="container">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
                	<a href="/movie/main title="영화 페이지로 이동">영화</a>
                	<a href="/movie/moviePostList" title="전체영화 페이지로 이동">무비포스트</a>
				</div>
			</div>
		</div>
		
		<form id="mPostForm" method="post"></form>
		<form id="moviePostFrm" name="moviePostFrm">
	        <!-- contents -->
	        <div id="contents" class="">
	            <!-- inner-wrap -->
	            <div class="inner-wrap">
	                <h3 class="tit">무비포스트 작성</h3>
	                <div class="user-post-top movieList" style="display: none;">
	                    <p class="tit">무비포스트로 등록하실 영화를 선택해주세요!</p>
	                    <div class="right">
	                        등록가능한 영화 <strong class="font-gblue"><span id="totMovieCnt">36</span></strong> 건
	                    </div>
	                </div>
	
	                <div class="movie-post-step01 movieList" style="display: none;">
	                    <div class="movie-post">
	                        <!-- post-list -->
	                        <div class="select-post-list">
	                            <ul class="select-post" id="movieList">
		                            <li>    
		                            	<a href="#" title="닥터 스트레인지: 대혼돈의 멀티버스 선택" data-no="22012600" data-nm="닥터 스트레인지: 대혼돈의 멀티버스" class="on">        
		                            		<div class="bg-chk"></div>        
		                           			<div class="bg-done">작성완료</div>    
		                            		<img src="https://img.megabox.co.kr/SharedImg/2022/05/04/4OFqLBLmda67a6BPXjaXCVM5wun7FAtb_150.jpg" onerror="noImg(this)" alt="닥터 스트레인지: 대혼돈의 멀티버스">    
		                            	</a>
		                            </li>
	                            </ul>
	                        </div>
	                    </div>
	
	                    <!--
	                        to 개발 :
	                        웹접근성 이슈 : 더보기 클릭시 새로 생성되는 목록의 첫번째 li 로 focus 가 이동되어야 합니다. (tabindex="0")
	                     -->
	                    <div class="btn-more" id="addMovieDiv">
	                        <button type="button" class="btn" id="btnAddMovie">더보기 <i class="iconset ico-btn-more-arr"></i></button>
	                    </div>
	
	                    <div class="btn-group mt20">
	                        <a href="" class="button large" id="cancelMovieBtn" title="취소">취소</a>
	                        <a href="#" class="button large purple" id="selectMovieBtn" title="등록">등록</a>
	                    </div>
	                </div>
	
	                <div class="movie-post-step02 selectMovie" style="">
	                    <div class="user-post-top">
	                        <p class="tit" id="movieNmTit">닥터 스트레인지: 대혼돈의 멀티버스</p>
	
	                        <div class="right">
	                            <a href="#" class="button" id="resetMovieBtn" title="다시선택" data-no="22012600" data-nm="닥터 스트레인지: 대혼돈의 멀티버스"><i class="iconset ico-post-review"></i> 다시선택</a>
	                        </div>
	                    </div>
	
	                    <div class="post-layout-select">
	                        <div class="left-cont">
	                            <h4 class="tit">원하시는 스틸컷/예고편을 선택해주세요.</h4>
	                            <div class="layout-wrap">
	                                <div class="post-list-util">
	                                    <div class="post-sorting" id="writeTab">
	                                        <span><button type="button" class="btn on" write-type="stillList">스틸컷</button></span>
	                                        <span><button type="button" class="btn" write-type="trailerList">예고편</button></span>
	                                        <span><button type="button" class="btn" write-type="profileList">내사진</button></span>
	                                    </div>
	                                </div>
	
	                                <div class="kind-list postContents" id="stillList">
	                                    <!-- <ul></ul> -->
	                                <ul>
	                                	<li>
	                                		<div class="selected-line"></div>
	                                		<a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/MychSN2EJDA5yXwu3QTCztvxpjkEtpaG.jpg" atch-file-no="1096129" movie-img-kind-cd="MIK02" movie-vod="">
	                                			<img src="https://img.megabox.co.kr/SharedImg/2022/04/21/MychSN2EJDA5yXwu3QTCztvxpjkEtpaG_150.jpg" alt="">
	                                		</a>
	                                	</li>
	                                	<li>
	                                		<div class="selected-line"></div>
	                                		<a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/WWPerAKS8mEwTQxc23JH7pW1mGGCVhc3.jpg" atch-file-no="1094602" movie-img-kind-cd="MIK02" movie-vod="">
	                                		<img src="https://img.megabox.co.kr/SharedImg/2022/04/04/WWPerAKS8mEwTQxc23JH7pW1mGGCVhc3_150.jpg" alt=""></a>
	                                	</li>
	                                	<li>
	                                		<div class="selected-line"></div>
	                                		<a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/3Zrts1gulo4mJ2FQKKYbOH1KOgnuIAOy.jpg" atch-file-no="1096128" movie-img-kind-cd="MIK02" movie-vod="">
	                                		<img src="https://img.megabox.co.kr/SharedImg/2022/04/21/3Zrts1gulo4mJ2FQKKYbOH1KOgnuIAOy_150.jpg" alt=""></a>
	                                	</li>
	                                	<li>
	                                		<div class="selected-line"></div>
	                                		<a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/JivM25ZBJ8rq6WM3FUKLBAqxRQjYLGYz.jpg" atch-file-no="1096124" movie-img-kind-cd="MIK02" movie-vod="">
	                                		<img src="https://img.megabox.co.kr/SharedImg/2022/04/21/JivM25ZBJ8rq6WM3FUKLBAqxRQjYLGYz_150.jpg" alt="">
	                                		</a>
	                                		</li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/EUl0wltj6vYrqFE4JYiPc2yGMfDcnJ24.jpg" atch-file-no="1094595" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/EUl0wltj6vYrqFE4JYiPc2yGMfDcnJ24_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/kc7Apd3mjglokIRneJJy7gpqNZn3YM04.jpg" atch-file-no="1094599" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/kc7Apd3mjglokIRneJJy7gpqNZn3YM04_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/h0DDE4yizrGsIrDNi1ZYGS1rJCzzSIfe.jpg" atch-file-no="1094597" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/h0DDE4yizrGsIrDNi1ZYGS1rJCzzSIfe_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/i4WIwVJLePtR0VnCUnZ0z2FCIgyGc7hR.jpg" atch-file-no="1096123" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/i4WIwVJLePtR0VnCUnZ0z2FCIgyGc7hR_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/Q5WJETAXjtni3G6VizAtyUGn24ELi9Ha.jpg" atch-file-no="1094594" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/Q5WJETAXjtni3G6VizAtyUGn24ELi9Ha_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/cQt7iIZAHRadIurk6WQQ43vSEgtYqrCP.jpg" atch-file-no="1096126" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/cQt7iIZAHRadIurk6WQQ43vSEgtYqrCP_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/xaO3TfRJtXanDI2NDsMI2mfJQDYeYRh3.jpg" atch-file-no="1096127" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/xaO3TfRJtXanDI2NDsMI2mfJQDYeYRh3_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/fQxoXET4dm3Nh1GhlSt6uBcmcRNHJqq1.jpg" atch-file-no="1094596" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/fQxoXET4dm3Nh1GhlSt6uBcmcRNHJqq1_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/PPh2valjdVbFyLoa7uoab6ZheSoRXNbq.jpg" atch-file-no="1094598" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/PPh2valjdVbFyLoa7uoab6ZheSoRXNbq_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/nhSJ2bem2l26QTAFR4A9LrDw1OS7J39S.jpg" atch-file-no="1094601" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/nhSJ2bem2l26QTAFR4A9LrDw1OS7J39S_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/lvA09GfYT4KtMU7nem7nF2OJ9r2RjZI5.jpg" atch-file-no="1094600" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/lvA09GfYT4KtMU7nem7nF2OJ9r2RjZI5_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/05/04/4OFqLBLmda67a6BPXjaXCVM5wun7FAtb.jpg" atch-file-no="1097831" movie-img-kind-cd="MIK01" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/05/04/4OFqLBLmda67a6BPXjaXCVM5wun7FAtb_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/04/SvTKH0uM6fh4ORbOIs5xtzXejRoSD0vB.jpg" atch-file-no="1094603" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/04/SvTKH0uM6fh4ORbOIs5xtzXejRoSD0vB_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="stillBtn" still-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/sptlku6LMHOcn1KlKQBchx5FAjwH9IMQ.jpg" atch-file-no="1096125" movie-img-kind-cd="MIK02" movie-vod="">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/sptlku6LMHOcn1KlKQBchx5FAjwH9IMQ_150.jpg" alt=""></a></li></ul></div>
	
	                                <div class="kind-list postContents" style="display:none;" id="trailerList">
	                                    <!-- <ul></ul> -->
	                                <ul><li><div class="selected-line"></div>
	                                <a href="#" class="trailerBtn" trailer-img-path="https://img.megabox.co.kr/SharedImg/2022/02/28/zCLHYPufCavQmXgOqmw79pJnkzyNO6zM.jpg" atch-file-no="1091348" movie-img-kind-cd="MIK03" movie-vod="https://s3550.smartucc.kr/encodeFile/3550/2022/02/28/7272fe85594cd4428bab97772b667c4f_W.mp4">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/02/28/zCLHYPufCavQmXgOqmw79pJnkzyNO6zM_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="trailerBtn" trailer-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/SryZvLSgwu5aPLzCeaTlKaiXiUDXMDin.jpg" atch-file-no="1096182" movie-img-kind-cd="MIK03" movie-vod="https://s3550.smartucc.kr/encodeFile/3550/2022/04/21/50ad876ce9463e3de93002bbca6b3c99_W.mp4">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/SryZvLSgwu5aPLzCeaTlKaiXiUDXMDin_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="trailerBtn" trailer-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/7vA4AZLmTnQazk102JgxiKSlYGUznKlt.jpg" atch-file-no="1096175" movie-img-kind-cd="MIK03" movie-vod="https://s3550.smartucc.kr/encodeFile/3550/2022/04/21/db7179e0425826d193c84a13f0073c99_W.mp4">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/7vA4AZLmTnQazk102JgxiKSlYGUznKlt_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="trailerBtn" trailer-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/gbMGzc2mYQtfcKHwID9GCoSfvdWj9fY3.jpg" atch-file-no="1096176" movie-img-kind-cd="MIK03" movie-vod="https://s3550.smartucc.kr/encodeFile/3550/2022/04/21/d7cc28251ddb607761c1da73fc3e2c55_W.mp4">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/gbMGzc2mYQtfcKHwID9GCoSfvdWj9fY3_150.jpg" alt=""></a></li>
	                                <li><div class="selected-line"></div>
	                                <a href="#" class="trailerBtn" trailer-img-path="https://img.megabox.co.kr/SharedImg/2022/04/21/D5d9Psjbpfj6ee7P22IXqXAf78wdmNJt.jpg" atch-file-no="1096178" movie-img-kind-cd="MIK03" movie-vod="https://s3550.smartucc.kr/encodeFile/3550/2022/04/21/73fbac9486df12787ea706c62d369c7e_W.mp4">
	                                <img src="https://img.megabox.co.kr/SharedImg/2022/04/21/D5d9Psjbpfj6ee7P22IXqXAf78wdmNJt_150.jpg" alt=""></a></li></ul></div>
	
	                                <div class="add-userfile postContents" style="display:none;" id="profileList">
	                                    <div class="img-add">
	        <!-- 									<input type="file" class="btn-image-add"> -->
	        <!-- 									<input type="hidden" name="fileNo" id="fileNo" value="" /> -->
	                                    </div>
	                                    <p>※ 2M 이내의 jpg,gif,png 파일만 등록이 가능합니다. </p>
	                                    <p>※ 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다. </p>
	                                    <div class="btn-group a-c">
	                                        <button type="button" class="button purple" id="myphotoAddBtn">등록</button>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="right-cont">
	                            <h4 class="tit">원하시는 스틸컷/예고편을 선택해주세요.</h4>
	                            <div class="layout-wrap">
	                                <div class="post-wrap" id="postLayer">
	                                	<div class="select on">    
	                                		<div class="post-layer add-post layer-type-01">        
	                                			<div class="post-bg" data-no="1094599" data-url="" data-cd="MIK02">
	                                				<img src="https://img.megabox.co.kr/SharedImg/2022/04/04/kc7Apd3mjglokIRneJJy7gpqNZn3YM04_380.jpg" alt="">
	                                			</div>        
	                                			<div class="post-txt">            
	                               	 				<textarea name="" id="" title="내용을 작성해 주세요!" placeholder="내용을 작성해 주세요!"></textarea>            
	                                				<div class="text-count">0 / 50</div>        
	                                			</div>        
	                                			<div class="cancle-select">
	                                				<a href="#" title="닫기" class="layer-close">
	                                					<i class="iconset ico-layer-close"></i>
	                                				</a>
	                                			</div>    
	                                		</div>
	                                	</div>
	                                	<div class="btn-group a-c pt30" id="postBtnLayer">	
	                                		<button type="button" class="button dash-btn" onclick="fn_addPost();">
	                                			<i class="iconset ico-"></i> 포스트 추가
	                                		</button>
	                                	</div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="a-c">
	                        <p>※ 고의적인 영업방해 또는 운영원칙에 어긋나는 게시물은 관리자의 제재 또는 형사적 책임이 수반될 수 있습니다.</p>
	                    </div>
	                       
	                    
	                    <div class="btn-group mt20">
	                        <a href="#" class="button large purple" id="regBtn" title="등록">
	                            등록
	                        </a>
	                        <a href="#" class="button large" id="postCancelBtn" title="취소">취소</a>
	                    </div>
	                </div>
	                <!--// inner-wrap -->
	            </div>
	            <!--// contents -->
	        </div>
	       </form> 
	    </div>
</div>

	<!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->


<form id="mainForm"></form>
<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

</body>
</html>