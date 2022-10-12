<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mj.infra.modules.code.CodeServiceImpl"/>

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
			<div class="bg-img" style="background-image:url('${item.upPath}${item.uuIdName}');"></div>
			<div class="bg-pattern"></div>
			<div class="bg-mask"></div>

	<!-- movie-detail-cont -->
			<div class="movie-detail-cont">
	
		        <p class="contents-type">#돌비시네마 #프리미어</p>
				<p class="title"><c:out value="${result.tdmvMovieTitle}"/></p>
				<p class="title-eng"><c:out value="${result.tdmvTitleEng}"/></p>

					<div class="btn-util">
						<button type="button" title="보고싶어 안함" class="btn btn-like" rpst-movie-no="22018400">
							<i class="iconset ico-heart-line"></i>
							<span title="보고싶어 한 명수" id="intrstCnt">
								<c:out value="${result.tdmvLiked}"/>
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
								<p title="실관람 평점" class="before"><em><c:out value="${result.tdmvAudienceScore}"/></em><span class="ir">점</span></p>
							</div>
						</div>
						<div class="rate">
							<p class="tit">예매율</p>
							<p class="cont"><em><c:out value="${result.tdmvRank}"/></em>위 (15.3%)</p>
						</div>
			            <div class="audience ">
			                 <div class="tit ">
			                        <span class="m-tooltip-wrap ">누적관객수</span>
			                  </div>
			                  <p class="cont"><em><c:out value="${result.tdmvAudienceNumber}"/></em> 명</p>
			            </div>
					</div>
			<!--// info -->

					<div class="poster">
						<div class="wrap">
							<p class="movie-grade
								<c:choose>
									<c:when test="${result.tdmvAge eq 18}">small age-all</c:when>
                        			<c:when test="${result.tdmvAge eq 19}">small age-12</c:when>
                        			<c:when test="${result.tdmvAge eq 20}">small age-15</c:when>
                        			<c:when test="${result.tdmvAge eq 21}">small age-19</c:when>	
								</c:choose>
							">,</p>    
		 					<img src="${item.upPath}${item.uuIdName}" alt="${result.tdmvMovieTitle}">
						</div>
					</div>
					<div class="reserve screen-type col-2">
						<div class="reserve">
							<a href="/timetable/choiceMovie" class="btn reserve" title="영화 예매하기">예매</a>
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
				            <li class="on"><a title="주요정보 탭으로 이동">주요정보</a></li>
				            <li><a title="실관람평 탭으로 이동">실관람평</a></li>
				            <li><a title="무비포스트 탭으로 이동">무비포스트</a></li>
				            <li><a title="예고편/스틸컷 탭으로 이동">예고편/스틸컷</a></li>
				        </ul>
				    </div>
				    <div class="movie-summary infoContent on" id="info">
			            <div class="txt"><c:out value="${result.tdmvStory}"/></div>
			            <div class="btn-more toggle">
			                <button type="button" class="btn"><span>더보기</span> <i class="iconset ico-btn-more-arr"></i></button>
			            </div>
				    </div>
				    <c:set var="listCodeMovieAge" value="${CodeServiceImpl.selectListCachedCode('6')}"/>
				    <div class="movie-info infoContent">
				        <p>상영타입 : <c:out value="${result.tdmvShowType}"/></p>
				        <div class="line">
				        	<p>감독&nbsp;: <c:out value="${result.tdmvDirector}"/></p>
				         	<p>장르&nbsp;: <c:out value="${result.tdmvGenres}"/>/ <c:out value="${result.tdmvRunningTime}"/> 분</p>
					     	<p>등급&nbsp;: 
						     	<c:forEach items="${listCodeMovieAge}" var="listAge" varStatus="statusAge">
				           			<c:if test="${result.tdmvAge eq listAge.cdSeq}"><c:out value="${listAge.cdName}"/></c:if>
								</c:forEach>
							</p>
				          	<p>개봉일&nbsp;: <c:out value="${result.tdmvReleaseDate}"/></p>
				        </div>
				           <p>출연진&nbsp;: <c:out value="${result.tdmvCast}"/></p>
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

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

</body>
</html>