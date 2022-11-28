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
	
	<div class="container" style="padding-bottom:240px;">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
                	<a href="/movie/timeTable" title="예매 페이지로 이동">예매</a>
                	<a href="" title="빠른예매 페이지로 이동">예매완료</a>
				</div>
			</div>
		</div>	
		
		<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
			<form method="post" id="formList" name="formList">
				<input type="hidden" name="tdttSeq" value="${dtoBk.tdttSeq}">
				<input type="hidden" name="tdthSeq" value="${dtoBk.tdthSeq}">
				<input type="hidden" name="ifmmSeq" value="${sessSeq}">
				<input type="hidden" name="ifmmPhone" value="${sessPhone}">
				
				<input type="hidden" name="thprSeq" value="${dtoBk.thprSeq}">
			  	<input type="hidden" name="thprPrice" value="${dtoBk.thprPrice}"/>
		        <input type="hidden" id="tdbkTotalCost" name="tdbkTotalCost" value="${dtoBk.tdbkTotalCost}">
		        <input type="hidden" name="tdmvSeq" value="${dtoBk.tdmvSeq}">
		        <input type="hidden" name="tdmvMovieTitle" value="${dtoBk.tdmvMovieTitle}">
		        <input type="hidden" name="tdthBranch" value="${dtoBk.tdthBranch}">
		        <input type="hidden" name="tdpxPlexName" value="${dtoBk.tdpxPlexName}">
		        <input type="hidden" name="tdttShowTime" value="${dtoBk.tdttShowTime}">
		         
		        <c:forEach items="${dtoBk.tdbsSeatNums}" var="list" varStatus="statusSn">
			        <input type="hidden" name="tdbsSeatNums" value="${list}">        
		        </c:forEach>
		        
				<div class="quick-reserve">
					<h2 class="tit purple">예매완료</h2>
		
						<!-- reserve-finish -->
						<div class="reserve-finish">
							<!-- reserve-ininfomation-box -->
							<div class="reserve-ininfomation-box">
								<div class="movie-poster-area">
									<img src="${result.upPath}${result.uuIdName}" alt="${result.tdmvMovieTitle}">
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
											<li><span>예매영화</span> <c:out value="${result.tdmvMovieTitle}"/> / 2D(자막)</li>
											<li><span>관람극장/상영관</span> <c:out value="${result.tdthBranch}"/> / <c:out value="${result.tdpxPlexName}"/></li>
											<li><span>관람일시</span> &nbsp;<c:out value="${result.tdttShowTime.substring(0, 16)}"/></li>
											<li><span>관람인원</span> &nbsp;성인 <c:out value="${fn:length(result.tdbsSeatNums)}"/></li>
											<li><span>좌석번호</span> &nbsp;
												 <c:forEach items="${result.tdbsSeatNums}" var="list" varStatus="statusSn">
											        <c:out value="${list}"/>       
										        </c:forEach>
											</li>
											<li><span>전화번호</span> &nbsp;<c:out value="${sessPhone}"/></li>
											<li>
												<span>결제정보</span>
												<strong class="roboto"><c:out value="${dtoBk.tdbkTotalCost}"/></strong> 원<br>
												<em></em>
											</li>
										</ul>
									</div>
									
								</div>
								<!--// movie-infomation-area -->
							</div>
							<!--// reserve-ininfomation-box -->
						</div>
						<!--// reserve-finish -->
						<div class="btn-group pt30">
							<a href="/mypage/main" class="button purple large" title="예매내역 페이지로 이동">예매내역</a>
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
										<li>극장 건물내 주차장 이용</li>
										<li>매표소 주차안내 데스크에서  당일 영화 티켓 제시 후 주차 할인 인증 가능 (주간 4시간 4,800원/야간 22시 이후 2,400원) /출차시 정산</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</form>
			</div>
		</div>
		
	<!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->	
	
	</div>

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

</body>
</html>