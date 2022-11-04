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
	
	<form name="formList" id="formList">
	<input type="hidden" name="ifmmSeq" value="${sessSeq}">
		<div class="container has-lnb">
	    	<div class="page-util">
	        	<div class="inner-wrap" id="myLoaction">
	        		<div class="location">
						<span>Home</span>
						<a href="/mypage/main" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
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
								<a href="/mypage/main" title="회원정보">회원정보</a>
								<ul class="depth3">
									<li><a href="/mypage/mod" title="개인정보 수정">개인정보 수정</a></li>
									<li><a href="/mypage/additionalInfo" title="선택정보 수정">선택정보 수정</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
	       	
	       		<div id="contents">
					<h2 class="tit">예매내역</h2>
				
					<div class="tab-block tab-layer">
						<ul>
							<li data-url="/mypage/BookingList" data-tit="예매내역" title="예매내역 탭으로 이동" class="on"><a href="#myBokdArea" class="btn">예매 </a></li>
						</ul>
					</div>
					<div class="tab-cont-wrap">
	
						<!-- 예매내역 -->
						<div id="myBokdArea" class="tab-cont on"><a href="" class="ir">예매  탭 화면 입니다.</a>
				
							<!-- 예매 조회 조건 -->
							<div class="board-list-search mt20">
								<table summary="예매 조회 조건">
									<colgroup>
										<col style="width:75px;">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">구분 </th>
											<td>
												<input type="radio" id="radBokd01" name="radBokd" value="B" checked="checked">
												<label for="radBokd01">예매내역 </label>
												<input type="radio" id="radBokd02" name="radBokd" value="E">
												<label for="radBokd02">지난내역 </label>
				
												<div class="dropdown bootstrap-select disabled small bs3"><select name="selYM" class="selectpicker small" disabled="disabled" tabindex="-98">
													
														<option value="202208">2022년 8월</option>
													
														<option value="202207">2022년 7월</option>
													
														<option value="202206">2022년 6월</option>
													
														<option value="202205">2022년 5월</option>
													
														<option value="202204">2022년 4월</option>
													
														<option value="202203">2022년 3월</option>
													
														<option value="202202">2022년 2월</option>
													
														<option value="202201">2022년 1월</option>
													
														<option value="202112">2021년 12월</option>
													
														<option value="202111">2021년 11월</option>
													
														<option value="202110">2021년 10월</option>
													
														<option value="202109">2021년 9월</option>
													
												</select><button type="button" class="btn dropdown-toggle disabled btn-default" data-toggle="dropdown" role="button" tabindex="-1" aria-disabled="true" title="2022년 8월"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">2022년 8월</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>
				
												<button type="button" class="button gray-line small ml05" name="search">
													<i class="iconset ico-search-gray"></i> 조회 
												</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 예매 조회 조건 End -->
				
							<!-- 예매 영화 목록 -->
							<div id="bokdList"><div class="no-history-reservation mt20">	예매 내역이 없습니다. </div></div>
				
							<h3 class="tit mt70">예매취소내역</h3>
				
							<ul class="dot-list">
								<li>상영일 기준 7일간 취소내역을 확인하실 수 있습니다.</li>
							</ul>
				
							<!-- 취소한 예매 영화 목록 -->
							<div class="table-wrap mt10">
								<table class="board-list" summary="취소일시, 영화명, 극장, 상영일시, 취소금액 항목을 가진 취소내역 목록 표">
									<caption>취소일시, 영화명, 극장, 상영일시, 취소금액 항목을 가진 취소내역 목록 표</caption>
									<colgroup>
										<col style="width:160px;">
										<col>
										<col style="width:130px;">
										<col style="width:188px;">
										<col style="width:105px;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">취소일시</th>
											<th scope="col">영화명</th>
											<th scope="col">극장</th>
											<th scope="col">상영일시</th>
											<th scope="col">취소금액</th>
										</tr>
									</thead>
									<tbody><tr><td colspan="5" class="a-c">취소내역이 없습니다.</td></tr></tbody>
								</table>
							</div>
				
							<nav class="pagination" id="navBokd"></nav>
				
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>	
	
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