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
                	<a href="" title="전체영화 페이지로 이동">전체영화</a>
                	<a href="" title="박스오피스 페이지로 이동">박스오피스</a>
				</div>
			</div>
		</div>
		
	
    <!-- contents -->
    	<div id="contents" class="no-padding">
		<div class="movie-detail-page">
			<div class="bg-img" style="background-image:url('https://img.megabox.co.kr/SharedImg/2022/06/07/FQQBP11X1tWexd9hBLS5SCMX2EWVzis8_570.jpg');"></div>
			<div class="bg-pattern"></div>
			<div class="bg-mask"></div>

	<!-- movie-detail-cont -->
			<div class="movie-detail-cont">
	
		        <p class="contents-type">#돌비시네마 #프리미어</p>
				<p class="title">탑건: 매버릭</p>
				<p class="title-eng">Top Gun: Maverick</p>

					<div class="btn-util">
						<button type="button" title="보고싶어 안함" class="btn btn-like" rpst-movie-no="22018400">
							<i class="iconset ico-heart-line"></i>
							<span title="보고싶어 한 명수" id="intrstCnt">
								3.1k
							</span>
						</button>
						<div class="sns-share">
							<a href="#" class="btn btn-common-share" title="공유하기">
								<i class="iconset ico-sns-line"></i> 공유하기
							</a>
						</div>
					</div>
					<div class="info">
						<div class="score">
							<p class="tit">실관람 평점</p>
							<div class="number gt" id="mainMegaScore">
								<p title="실관람 평점" class="before"><em>9.7</em><span class="ir">점</span></p>
							</div>
						</div>
						<div class="rate">
							<p class="tit">예매율</p>
							<p class="cont"><em>1</em>위 (15.3%)</p>
						</div>
			            <div class="audience ">
			                 <div class="tit ">
			                        <span class="m-tooltip-wrap ">누적관객수</span>
			                  </div>
			                  <p class="cont"><em>6,705,374</em> 명</p>
			            </div>
					</div>
		<!--// info -->

					<div class="poster">
						<div class="wrap">
							<p class="movie-grade age-12">12세 이상 관람가</p>
		 					<img src="https://img.megabox.co.kr/SharedImg/2022/05/09/6zfAYe6IrZ8BWnruqEfafwakt5cUjWgX_420.jpg" onerror="noImg(this)" alt="탑건: 매버릭">
						</div>
					</div>
					<div class="reserve screen-type col-2">
						<div class="reserve">
							<a href="/booking/timeTable" class="btn reserve" title="영화 예매하기">예매</a>
							<a href="" class="btn dolby">
								<img src="" alt="">
							</a>
						</div>
					</div>
				</div>
				<!--// movie-detail-cont -->
			</div>
			<!--// movie-detail -->
	        <div id="contentData">
				<div class="inner-wrap">
				    <div class="tab-list fixed">
				        <ul>
				            <li class="on"><a href="" title="주요정보 탭으로 이동">주요정보</a></li>
				            <li><a href="" title="실관람평 탭으로 이동">실관람평</a></li>
				            <li><a href="" title="무비포스트 탭으로 이동">무비포스트</a></li>
				            <li><a href="" title="예고편/스틸컷 탭으로 이동">예고편/스틸컷</a></li>
				        </ul>
				    </div>
				    <div class="movie-summary infoContent on" id="info">
			            <div class="txt">한순간의 실수도 용납되지 않는 하늘 위, 가장 압도적인 비행이 시작된다!<br><br>최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다.<br>그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만<br>실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다.<br><br>매버릭의 지휘 아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자<br>매버릭은 자신이 가르친 동료들과 함께 마지막이 될지 모를 하늘 위 비행에 나서는데…</div>
			            <div class="btn-more toggle">
			                <button type="button" class="btn"><span>더보기</span> <i class="iconset ico-btn-more-arr"></i></button>
			            </div>
				    </div>
				    <div class="movie-info infoContent">
				        <p>상영타입 : 2D ATMOS(자막), 2D Dolby(자막), 2D(자막)</p>
				        <div class="line">
				           <p>감독&nbsp;: 조셉 코신스키</p>
				           <p>장르&nbsp;: 액션 / 130 분</p>
				           <p>등급&nbsp;: 12세이상관람가</p>
				           <p>개봉일&nbsp;: 2022.06.22</p>
				        </div>
				           <p>출연진&nbsp;: 톰 크루즈, 마일즈 텔러, 제니퍼 코넬리, 존 햄, 에드 해리스, 글렌 포웰, 제이 앨리스, 그렉 타잔 데이비스</p>
				    </div>
    			</div>
    		</div>	
			
<!--// inner-wrap -->

<!-- movie-detail-poster -->
				<div class="movie-detail-poster mt70 moviepostContent">
				    <div class="inner-wrap">
			                <!--목록이 있을 때  -->
			                <div class="tit-util mb15">
			                    <h2 class="tit small white">무비포스트</h2>
			                    <a href="#" id="goMoviePost" class="more" data-nm="탑건: 매버릭" title="무비포스트 페이지로 이동">더보기 <i class="iconset ico-arr-right-white"></i></a>
			                </div>
				                <!-- movie-post-list -->
				                <div class="movie-post-list" style="position: relative; height: 461.547px;">
				                    
				                        <div class="grid-item" style="position: absolute; left: 0px; top: 0px;">
				                            <div class="wrap">
				                                
				
				                                <div class="img">
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209714"><img src="https://img.megabox.co.kr/SharedImg/2022/05/25/SEE2wpD224td3PT0UB3BpFKJ8nomJMw8_230.jpg" onerror="noImg(this)" alt="탑건: 매버릭"></a>
				                                </div>
				
				                                <div class="cont">
				                                    <div class="writer">
				
				                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="08906549-4864-49DC-A1BF-F4C866528659">bluerain**</a>
				                                        
				                                    </div>
				
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209714">
				                                        <div class="label">
				                                            
				                                            
				                                        </div>
				
														<p class="tit">탑건: 매버릭</p>
				                                        <p class="txt">내용이 좀 더 풍부했으면 좋겠다는 거 말고는 <br>아주 좋았어요 <br>믿고 보는 배우 톰이니깐요</p>
				                                        <p class="time">3 시간전</p>
				                                    </a>
				
				                                    <div class="condition">
				               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="209714">
				                          		                <i class="iconset ico-like ">좋아요 수</i>
				                                 		        <span class="none">0</span>
				                                   		</button>
				                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="209714">
				                                            <i class="iconset ico-reply" id="">댓글 수</i> 0
				                                        </a>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                    
				                        <div class="grid-item" style="position: absolute; left: 290px; top: 0px;">
				                            <div class="wrap">
				                                
				
				                                <div class="img">
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209706"><img src="https://img.megabox.co.kr/SharedImg/2022/05/19/zmcUaAguFFLA1sgs1NBqmIP6tCrSTO54_230.jpg" onerror="noImg(this)" alt="탑건: 매버릭"></a>
				                                </div>
				
				                                <div class="cont">
				                                    <div class="writer">
				
				                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="B84F5ABD-9F65-4ACE-9991-A71EDA02FA13">suksang**</a>
				                                        
				                                    </div>
				
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209706">
				                                        <div class="label">
				                                            
				                                            
				                                        </div>
				
														<p class="tit">탑건: 매버릭</p>
				                                        <p class="txt">입채감있게 스릴만점이네요<br>좋았어요 영화관도.깨끗하고 직원들도<br>친절하구요 </p>
				                                        <p class="time">3 시간전</p>
				                                    </a>
				
				                                    <div class="condition">
				               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="209706">
				                          		                <i class="iconset ico-like ">좋아요 수</i>
				                                 		        <span class="none">3</span>
				                                   		</button>
				                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="209706">
				                                            <i class="iconset ico-reply" id="">댓글 수</i> 0
				                                        </a>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                    
				                        <div class="grid-item" style="position: absolute; left: 580px; top: 0px;">
				                            <div class="wrap">
				                                
				
				                                <div class="img">
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209704"><img src="https://img.megabox.co.kr/SharedImg/2022/05/30/szOpaACisYnBlkuMM1MIM81Ii3nuSOQ2_230.jpg" onerror="noImg(this)" alt="탑건: 매버릭"></a>
				                                </div>
				
				                                <div class="cont">
				                                    <div class="writer">
				
				                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="4EDDD848-485A-4C7B-92E5-4866C3E32BBA">turnw0**</a>
				                                        
				                                    </div>
				
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209704">
				                                        <div class="label">
				                                            
				                                            
				                                        </div>
				
														<p class="tit">탑건: 매버릭</p>
				                                        <p class="txt">16번을 상영관들 사운드 비교. 남양주돌비가 최고.</p>
				                                        <p class="time">4 시간전</p>
				                                    </a>
				
				                                    <div class="condition">
				               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="209704">
				                          		                <i class="iconset ico-like ">좋아요 수</i>
				                                 		        <span class="none">0</span>
				                                   		</button>
				                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="209704">
				                                            <i class="iconset ico-reply" id="">댓글 수</i> 0
				                                        </a>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                    
				                        <div class="grid-item" style="position: absolute; left: 870px; top: 0px;">
				                            <div class="wrap">
				                                
				
				                                <div class="img">
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209703"><img src="https://img.megabox.co.kr/SharedImg/2022/06/10/la196AVlRql26E7LCqrYCH0XkV6t048i_230.jpg" onerror="noImg(this)" alt="탑건: 매버릭"></a>
				                                </div>
				
				                                <div class="cont">
				                                    <div class="writer">
				
				                                        <a href="#" title="무비포스트 페이지로 이동" class="moviePostId" data-id="EC0BD129-2E48-467B-91DB-C47A16896BB0">jinni59**</a>
				                                        
				                                    </div>
				
				                                    <a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2" w-data="850" h-data="auto" data-no="209703">
				                                        <div class="label">
				                                            
				                                            
				                                        </div>
				
														<p class="tit">탑건: 매버릭</p>
				                                        <p class="txt">다음편도 있었으면 하는.. 즐기기 너무 좋은 영화.</p>
				                                        <p class="time">4 시간전</p>
				                                    </a>
				
				                                    <div class="condition">
				               		                   <button type="button" class="btn-like postLikeBtn listBtn" data-no="209703">
				                          		                <i class="iconset ico-like ">좋아요 수</i>
				                                 		        <span class="none">0</span>
				                                   		</button>
				                                        <a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2" w-data="850" h-data="auto" data-no="209703">
				                                            <i class="iconset ico-reply" id="">댓글 수</i> 0
				                                        </a>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                    
				                </div>
				                <!--// movie-post-list -->
            
        
						    </div>
						</div>
					</div>
				</div>
						
<!--// movie-detail-poster -->

	<!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->

</div>

<form id="mainForm"></form>
<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

</body>
</html>