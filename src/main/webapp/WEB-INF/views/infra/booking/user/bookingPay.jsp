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
                	<a href="/movie/timeTable" title="빠른예매 페이지로 이동">빠른예매</a>
				</div>
			</div>
		</div>
		<form method="post" id="formList" name="formList">
		<input type="hidden" name="tdttSeq" value="${item.tdttSeq}">
		<input type="hidden" name="ifmmSeq" value="${sessSeq}">
		
			<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;"> 
				<div class="quick-reserve">
			
					<h2 class="tit">빠른예매</h2>
			
					<!-- seat-select-section -->
					<div class="seat-select-section">
						<!-- seat-section -->
						<div class="seat-section h-auto">
							<div class="tit-util mt40">
								<h3 class="tit small">결제수단선택 </h3>
			
								<div class="right">
									<input type="checkbox" id="same_use_payment">
									<label for="same_use_payment" id="label_use_payment">다음에도 이 결제수단 사용</label>
								</div>
							</div>
			
							<!-- seat-section -->
							
							<!--// seat-section -->
			
							<!--
								체크 표시 on 클래스 추가
			
								<button type="button">
			
								<button type="button" class="on">
							-->
							<div class="select-payment ty2">
			
								<div class="radio-group">
									<span class="bg-chk small">
										<input type="radio" name="radio_payment_easypay" id="rdo_pay_easypay" value="easypay">
										<label for="rdo_pay_easypay">간편결제</label>
									</span>
								</div>
			
								<div class="select-payment-easypay" style="">
									<input type="radio" name="tdbkPayment" id="rdo_pay_kakaopay" value="kakaopay">
									<label for="rdo_pay_kakaopay">카카오페이</label>
								</div>
			
							<dl class="term-list" id="terms" style="display: block;">
								<dt>
									<span class="bg-chk small">
										<input type="checkbox" id="agree"><label for="agree">결제대행 서비스 약관 필수 동의</label>
									</span>
								</dt>
								<dd class="tit">
									전자금융거래 이용약관
									<a href="" onclick="openTermsPop('one')">내용보기</a>
								</dd>
								<dd class="tit">
									개인정보 수집 및 이용 안내
									<a href="" onclick="openTermsPop('two')">내용보기</a>
								</dd>
								<dd class="tit">
									개인정보 제공 및 위탁 안내
									<a href="" onclick="openTermsPop('three')">내용보기</a>
								</dd>
							</dl>
						</div>
						<!--// seat-section -->
			
						<!-- seat-result -->
						<div class="seat-result">
							<div class="wrap">
			
								<div class="tit-area type2">
									 <span class="movie-grade small 
		                                	<c:choose>
		                                		<c:when test="${item.tdmvAge eq 18}">age-all</c:when>
		                                		<c:when test="${item.tdmvAge eq 19}">age-12</c:when>
		                                		<c:when test="${item.tdmvAge eq 20}">age-15</c:when>
		                                		<c:when test="${item.tdmvAge eq 21}">age-19</c:when>
		                                	</c:choose>
		                                "></span>
			
									<p class="tit" id="movieNm"><c:out value="${item.tdmvMovieTitle}"/></p>
									<p class="cate" id="playKindNm">2D(자막)</p>
									<p class="theater" id="brchNm"><c:out value="${item.tdthBranch}"/> / <c:out value="${item.tdpxPlexName}"/></p>
									<p class="date"><span id="playDe"><c:out value="${item.tdttShowTime.substring(0, 10)}"/></span><em id="dowNm">(수)</em> <span class="time" id="playTime"><i class="iconset ico-clock-white"></i><c:out value="${item.tdttShowTime.substring(10, 16)}"/>~<c:out value="${item.tdttEndTime.substring(10, 16)}"/></span></p>
								</div>
								<div class="price-process">
									<div class="box"><div class="data"><span class="tit">성인 <em>2</em></span><span class="price">30,000</span></div>
										<!--
										<div class="data">
											<span class="tit">일반 <em>1</em></span>
											<span class="price">20,000</span>
										</div>
			
										<div class="data">
											<span class="tit">어린이 <em>2</em></span>
											<span class="price">6,000</span>
										</div>
										-->
										<div class="all">
											<span class="tit">금액 </span>
											<span class="price"><em>30,000</em> <span>원 </span></span>
										</div>
									</div>
			
									<div class="box discout-box">
			
										<div class="all">
											<span class="tit">할인적용 </span>
											<span class="price"><em>0</em> 원</span>
										</div>
									</div>
								</div>
			
								<div class="pay-area">
									<div class="add-thing">
										<p class="tit">추가차액 </p>
			
										<div class="money">0</div>
									</div>
									<div class="pay">
										<p class="tit">최종결제금액</p>
			
										<div class="money">
											<em>30,000</em>
											<span>원 </span>
										</div>
									</div>
									<div class="payment-thing">
										<span class="tit">결제수단</span>
										<span class="thing">카카오페이</span>
									</div>
								</div>
			
								<div class="btn-group">
									<a class="button" id="btn_booking_back" title="이전">이전 </a>
									<a w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" onclick="startPay()" title="결제">결제</a>
								</div>
							</div>
						</div>
						<!--// seat-result -->
					</div>
					<!--// seat-select-section -->
				</div>
			</div>
		</div>
	</form>		
</div>		

	<!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->		
		
</div>


<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->
<script>

	var goUrlSeat = "/booking/seatSelect";
	var goUrlResult = "/booking/bookingResult";
	var form = $("form[name=formList]");
	
	startPay = function(){
		form.attr("action", goUrlResult).submit();
	}
	
	
	
	
	
	
	
	



</script>


</body>
</html>