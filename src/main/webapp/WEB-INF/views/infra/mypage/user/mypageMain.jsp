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
	
	<form name="formList" id="formList">
	<input type="hidden" name="ifmmSeq" value="${sessSeq}">
	
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
					<p class="tit on"><a href="/mypage/main" title="나의 메가박스">나의 메가박스</a></p>
					<ul>
						<li class=""><a href="/mypage/bookingList" title="예매/구매내역">예매내역</a></li>
						
						<li>
							<a href="/mypage/Main" title="회원정보">회원정보</a>
							<ul class="depth3">
								<li><a href="/mypage/mod" title="개인정보 수정">개인정보 수정</a></li>
								<li><a href="/mypage/additionalInfo" title="선택정보 수정">선택정보 수정</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
			
		
			<div id="contents" class="">
				<c:set var="listCodeGrade" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
				<!-- my-megabox-main -->
				<div class="my-megabox-main">
			
					<div class="my-magabox-info ">
						<!-- top -->
						<div class="top">
							<div class="photo" id="myPhoto">
								<div class="wrap">
									<button type="button" class="img">
										<img src="/resources/images/profile-default.png" alt="">
									</button>
								</div>
							</div>
			
							<div class="grade">
								<p class="name"><a><c:out value="${sessName}"/></a>님은<br>
								<a>
									<c:forEach items="${listCodeGrade}" var="listGrade" varStatus="statusGrade">
										<c:if test="${sessGrade eq listGrade.cdSeq}"><c:out value="${listGrade.cdName}"/></c:if>
									</c:forEach>
								</a>등급입니다.</p>
			
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
									<a href="/mypage/additionalInfo" class="right" title="선호극장 변경">변경 <i class="iconset ico-arr-right-reverse"></i></a>
								</div>
			
								<c:choose>
									<c:when test="${fn:length(favTh) eq 0}">
										<div class="no-list">
											<span>선호극장</span>을  설정하세요.
										</div>
									</c:when>
									<c:otherwise>
										<div class="list">
											<ol>
												<li>	
													<em><c:out value="${tdftSort}"/></em>	
													<span><c:out value="${favTh.tdthBranch}"/></span>
												</li>
											</ol>
										</div>	
									</c:otherwise>
								</c:choose>
							
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
						</div>
		
						<div class="box-border link-movie-story">
							<a href="" title="본 영화 탭으로 이동">
								<em><c:out value="${fn:length(history)}"/></em>
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
			
							<a href="/mypage/bookingList" class="more" title="나의 예매내역 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
						</div>
			
						<!-- my-reserve-history -->
						<div class="my-reserve-history">
							<ul>
								<c:choose>
									<c:when test="${fn:length(history) eq 0}">
										<li class="no-result">
											<div class="no-history-reservation">
												예매 내역이 없습니다.
											</div>
										</li>
									</c:when>
									<c:otherwise>
										<c:forEach items="${history}" var="history" varStatus="statusHistory">
											<li class="result">
												<div class="reserve-history">
													<p class="img">
														<img src="${history.upPath}${history.uuIdName}" alt="${history.tdmvMovieTitle}">
													</p>	
													<div class="cont">		
														<p class="pay">결제 일시 : <c:out value="${history.tdbkBookingDate}"/></p>		
														<p class="ticket">			
															<span><c:out value="${history.tdmvMovieTitle}"/></span>		
														</p>		
														<p class="theater"><c:out value="${history.tdthBranch}"/></p>		
														<p class="date"><c:out value="${history.tdttShowTime}"/></p>	
													</div>	
												</div>
											</li>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
						<!--// my-reserve-history -->
					</div>
				</div>
				<!--// my-megabox-main -->
			</div>
		</div>
	</div>
	</form>	
	
	<!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->	
	
	
</div>

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

</body>
</html>	
	