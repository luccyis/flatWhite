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
					<a href="/mypage/Main" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
				</div>
			</div>
       	</div>
       	<div class="inner-wrap">
			<div class="lnb-area">
				<nav id="lnb">
					<p class="tit on"><a href="/mypage/main" title="나의 메가박스">나의 메가박스</a></p>
					<ul>
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
       	
       		<div id="contents" class="">
				<h2 class="tit">선택정보 수정</h2>
			
				<div class="box-radius ">
					<div class="box-top">
						<strong>마케팅 활용을 위한 개인정보 수집 이용 안내</strong>
						<div class="righten">
							<input type="radio" name="personInfoUtilAgreeAt" id="chk1" value="N"><label for="chk1">미동의</label>
							<input type="radio" name="personInfoUtilAgreeAt" id="chk2" value="Y" checked=""><label for="chk2">동의</label>
						</div>
					</div>
					<div class="box-bot">
						<p>
							[수집 목적]<br>
							고객 맞춤형 상품 및 서비스 추천. 당사 신규 상품/서비스 안내 및 권유. 사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유
						</p>
						<p>
							[수집 항목]<br>
							이메일, 휴대폰번호, 주소, 생년월일, 선호극장, 문자/이메일/앱푸쉬 정보 수신동의여부, 서비스 이용기록, 포인트 적립 및 사용 정보, 접속로그
						</p>
						<p>
							[보유 및 이용 기간]<br>
							회원 탈퇴 시 혹은 이용 목적 달성 시까지
						</p>
					</div>
				</div>

				<div class="box-radius mb00 ">
					<div class="box-top">
						<strong>마케팅정보 수신동의</strong>
					</div>
			
					<div class="box-bot">
						<p>
							거래정보와 관련된 내용(예매완료/취소)과 소멸포인트 안내는 수신동의 여부와 관계없이 SMS, PUSH 알림 또는 이메일로 발송됩니다.<br>
							이 외 타 정보는 수신동의를 하셔야만 받으실 있습니다. (2014.05.16 기준)
						</p>
			
						<div class="mt05 mb05 font-gblue">
							<i class="iconset ico-exclamation-gblue"></i> 수신동의 여부를 선택해 주세요.
						</div>
			
						<div class="chk-box">
							<strong class="label w80px">이메일</strong>
							<input type="radio" name="ifmmEmailNy" id="chk3" value="1" checked>
							<label for="chk3" class="w80px">수신동의</label>
			
							<input type="radio" name="ifmmEmailNy" id="chk4" value="0">
							<label for="chk4" class="w80px">수신거부</label>
			
							
						</div>
			
						<div class="chk-box mt05">
							<strong class="label w80px">SMS</strong>
							<input type="radio" name="ifmmSmsNy" id="chk5" value="1" checked>
							<label for="chk5" class="w80px">수신동의</label>
			
							<input type="radio" name="ifmmSmsNy" id="chk6" value="0" >
							<label for="chk6" class="w80px">수신거부</label>
						</div>
			
					</div>
				</div>

	<h3 class="tit mt40">부가정보</h3>

	<div class="table-wrap">
		<table class="board-form">
			<caption>현재 비밀번호, 새 비밀번호, 새 비밀번호 재입력 순서로 입력해주세요.</caption>
			<colgroup>
				<col style="width:200px;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">선호극장</th>
					<td>
						<span>선호 영화관은 최대 3개까지 등록 가능합니다.</span><br>
						<c:forEach items="${favTh}" var="sort" begin="0" end="2" step="1" varStatus="sortNum">
							<span><c:out value="${sortNum.count}"/>순위</span>
							<input type="hidden" name="xtheaterSort" value="${sortNum.count}"/>
								<div class="row">
									<div class="col p-2" style="display: inline;">
										<select title="${sortNum.count}순위 지역 선택" class="w150px" tabindex="-98">
											<option value="">지역선택</option>
											<option value="" selected="">서울</option>
										</select>
									</div>	
									<div class="col p-2" style="display: inline;">
										<select name="xtdthSeq" title="${sortNum.count}순위 극장 선택" class="w150px" tabindex="-98">
											<option>극장선택</option>
											<c:forEach items="${thList}" var="list" varStatus="statusThList">
												<option value="${list.tdthSeq}" 
													<c:if test="${sort.tdthSeq eq list.tdthSeq}">
														selected
													</c:if>>
													<c:out value="${list.tdthBranch}"/>
												</option>
											</c:forEach>
										</select>
									</div>
								</div>
						</c:forEach>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="btn-group pt40">
		<button class="button large" id="cancelBtn">취소</button>
		<button class="button purple large" id="updateBtn">수정</button>
	</div>

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

<script>
	var form = $("#formList");
	var goUrlUpdt = "/mypage/additinalInfoUpdt";
	var goUrlMain = "/mypage/main";
	
	$("#updateBtn").on("click", function(){
		form.attr("action", goUrlUpdt).submit();
	});
	
	$("#cancelBtn").on("click", function(){
		form.attr("action", goUrlMain).submit();
	});
	

</script>

</body>
</html>