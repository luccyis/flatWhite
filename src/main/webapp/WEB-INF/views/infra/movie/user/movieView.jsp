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
                	<a title="전체영화 페이지로 이동">전체영화</a>
                	<a title="박스오피스 페이지로 이동">박스오피스</a>
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
					    
					  	<form name="formList" id="formList">
					  		<input type="hidden" name="ifmmSeq" value="${sessSeq}">   
					  		<input type="hidden" name="tdmvSeq" value="${result.tdmvSeq}" id="tdmvSeq">
					  	
					  		<c:choose>
				           		<c:when test="${fn:length(review) eq 0}">
				           			<div class="tit-util mt70 mb15 oneContent">
				           				<h2 class="tit small mt70">아직 남겨진 한줄평이 없어요.</h2>
				           			</div>
				           			<div class="movie-idv-story oneContent">
					           			<ul>
								            <li class="type03">
								                <div class="story-area">
								                    <!-- 프로필영역 -->
								                    <div class="user-prof">
								                        <div class="prof-img"><img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png" alt="MEGABOX"></div>
								                        <p class="user-id"><c:out value="${sessId}"/></p>
								                    </div>
								                    <!-- // 프로필영역 -->
								
								                    <!-- 내용 영역 -->
								                    <div class="story-box">
								                        <div class="story-wrap">
								                            <div class="story-cont">
								                                첫번째 <span class="font-gblue">관람평</span>의 주인공이 되어 보세요.
								                            </div>
								                            <div class="story-write">
								                               <a href="#modalInsert" id="btnModalWrite" data-bs-toggle="modal" data-bs-target="#modalInsert" class="btn-modal-open oneWrtBtn" w-data="500" h-data="680" data-cd="PREV" title="관람평쓰기"><i class="iconset ico-story-write"></i> 관람평쓰기</a>
								                           </div>
								                        </div>
								                    </div>
								                </div>
								            </li>
								        </ul>
							        </div>
				           		</c:when>
							    <c:otherwise>
						    		<div class="tit-util mt70 mb15 oneContent">
						                <h2 class="tit small"><c:out value="${result.tdmvMovieTitle}"/>에 대한 <span class="font-gblue"><c:out value="${fn:length(review)}"/></span>개의 이야기가 있어요!</h2>
						            </div>
						            <div class="movie-idv-story oneContent">
								        <ul>
								       <!-- 로그인 시 -->
								           <li class="type03">
								               <div class="story-area">
								                   <!-- 프로필영역 -->
								                   <div class="user-prof">
								                       <div class="prof-img">
								                       		<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png" alt="MEGABOX">
								                       </div>
								                       <p class="user-id"><c:out value="${sessId}"/></p>
								                   </div>
								                   <!-- // 프로필영역 -->
								
								                   <!-- 내용 영역 -->
								                   <div class="story-box">
								                       <div class="story-wrap">
								                           <div class="story-cont">
								                               <span class="font-gblue"><c:out value="${sessName}"/></span>님 <span class="font-gblue"><c:out value="${result.tdmvMovieTitle}"/></span> 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요.
								                           </div>
								                           <div class="story-write">
								                               <button data-bs-toggle="modal" data-bs-target="#modalWrite">
								                               	<i class="iconset ico-story-write"></i> 관람평쓰기</button>
								                           </div>
								                       </div>
								                   </div>
								                   <!-- // 내용 영역 -->
								               </div>
								           </li>
								           <li class="type01 oneContentTag" id="newReview"></li>
									       <c:forEach items="${review}" var="review" varStatus="status">
										        <li class="type01 oneContentTag">
										        	<div class="story-area">
										        		<div class="user-prof">
										        			<div class="prof-img">
										        				<img src="/resources/images/profile-default.png" alt="프로필사진">
										        			</div>
										        			<p class="user-id"><c:out value="${review.ifmmId}"/></p>
									        			</div>
										        		<div class="story-box">
										        			<div class="story-wrap review">
										        				<div class="tit">관람평</div>
										        				<div class="story-cont">
										        					<div class="story-point">                        
										        						<span><c:out value="${review.tdmcRate}"/></span>                    
										        					</div>                    
										        					<div class="story-txt"><c:out value="${review.tdmcContent}"/></div>                    
								       							</div>                    
									       					</div>                
									       				</div>            
									       			</div>        
						       						<div class="story-date">            
						       							<div class="review on">                
						       								<span><c:out value="${review.tdmcCreatDate}"/></span>            
						       							</div>        
						      						</div>
						       					</li>
					       					</c:forEach>
					       				</ul>	
				    				</div>
						   		</c:otherwise>
						  </c:choose>
		    			</form>		
	    			</div>
	<!--// inner-wrap -->
				</div>
	<!--// contentData -->
			</div>
		</div>	
						
<!--// movie-detail-poster -->

	<!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->

	<!-- Modal -->
	<div class="modal fade" id="modalWrite" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        ...
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Understood</button>
	      </div>
	    </div>
	  </div>
	</div>
	<%-- 
	
	
	
	<div class="modal fade" id="modalWrite" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="false">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">한줄평 작성 </h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <form name="formModal" id="formModal">
	      	<input type="hidden" name="ifmmSeq" value="${sessSeq}">   
			<input type="hidden" name="tdmvSeq" value="${result.tdmvSeq}" id="tdmvSeq">
		      <div class="modal-body">
		          <div class="mb-3">
		            <label for="tdmcRate" class="col-form-label">평점 </label>
		            <input type="text" class="form-control" name="tdmcRate" id="tdmcRate" placeholder="1~10 사이에 숫자를 입력하세요">
		          </div>
		          <div class="mb-3">
		            <label for="tdmcContent" class="col-form-label">관람평 </label>
		            <textarea class="form-control" id="message-text" name="tdmcContent" id="tdmcContent"></textarea>
		          </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기 </button>
		        <button type="button" class="btn btn-primary" id="btnMovieComent" onclick="submitReview()">제출하기</button>
		      </div>
	      </form>
	    </div>
	  </div>
	</div> --%>

</div>



<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

<script>
const exampleModal = document.getElementById('modalWrite')
exampleModal.addEventListener('show.bs.modal', event => {
  // Button that triggered the modal
  const button = event.relatedTarget
  // Extract info from data-bs-* attributes
  const recipient = button.getAttribute('data-bs-whatever')
  // If necessary, you could initiate an AJAX request here
  // and then do the updating in a callback.
  //
  // Update the modal's content.
  const modalTitle = exampleModal.querySelector('.modal-title')
  const modalBodyInput = exampleModal.querySelector('.modal-body input')

  modalTitle.textContent = `New message to ${recipient}`
  modalBodyInput.value = recipient
})
</script>

<script>
var form = $("[name=formModal]");
var goUrlReview= "/movie/MovieComment";
var newReview = $("#newReview");


submitReview = function(){
	$.ajax({

        url : goUrlReview,
        type : "POST",
        data : {
			ifmmSeq : ${sessSeq},
			tdmcContent : $("#tdmcContent").val(),
			tdmcRate : $("#tdmcRate").val(),
			tdmvSeq : $("#tdmvSeq").val()
        },
        datatype : "json",
        success:function(response){
        	if(response.rt=="success"){
	        	var txt = "";
	        	
	        	for(var i=0; i<response.list.length; i++) {
		        	txt +='<div class="story-area">'
		        	txt += 	'<div class="user-prof">'
		        	txt += 		'<div class="prof-img">'
		        	txt += 			'<img src="/static/pc/images/mypage/bg-photo.png" alt="프로필사진">'
		        	txt += 		'</div>'
		        	txt += 		'<p class="user-id">'+response.list[i].ifmmId+'</p>'
		        	txt += 	'</div>'
		        	txt += 	'<div class="story-box">'
		        	txt += 		'<div class="story-wrap review">'
		        	txt += 			'<div class="tit">관람평</div>'
		        	txt += 			'<div class="story-cont">'
		        	txt += 				'<div class="story-point">'                        
		        	txt += 					'<span>'+response.list[i].tdmcRate+'</span>'                 
		        	txt += 				'</div>'                   
		        	txt += 				'<div class="story-txt">'+response.list[i].tdmcContent+'</div>'                
		        	txt += 				'</div>'                    
		        	txt += 		'</div>'            
		        	txt += 	'</div>'            
		        	txt += '</div>'        
		        	txt += '<div class="story-date">'            
		        	txt += 		'<div class="review on">'                
		        	txt += 			'<span>'+response.list[i].tdmcCreatDate+'</span>'            
		        	txt += 		'</div>' 
		        	txt += 	'</div>'
	        	}
	        	newReview.html(txt);
        	} else {
        		aleat("null");
        	}
			
        }
        ,error:function(){
            alert("error");
        }
    });
	
} 

</script>


</body>
</html>