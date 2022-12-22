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
	
	
	<div class="container has-lnb">
    	<div class="page-util">
        	<div class="inner-wrap" id="myLoaction">
        		<div class="location">
					<span>Home</span>
					<a href="/mypage/mypageMain" title="나의 메가박스 페이지로 이동">나의 메가박스</a>
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
       	<form id="mbInfoForm">
			<input type="hidden" name="ifmmSeq" value="${sessSeq}">
			<input type="hidden" name="ifmmId" value="${sessId}">
	
       	
       		<div id="contents" class="location-fixed">
	          <h2 class="tit">개인정보 수정</h2>
	          <ul class="dot-list mb10">
	              <li>회원님의 정보를 정확히 입력해주세요.</li>
	          </ul>

	          <div class="table-wrap">
	              <table class="board-form">
	                  <caption>프로필사진, 아이디 항목을 가진 표</caption>
	                  <colgroup>
	                      <col style="width:180px;">
	                      <col>
	                  </colgroup>
	                  <tbody>
	                      <tr>
	                          <th scope="row">프로필 사진</th>
	                          <td>
	                              <div class="profile-photo">
	                                  <form name="fileForm">
	                                      <input type="file" id="profileTarget" name="file" style="display: none;">
	                                  </form>
		                                  <div class="profile-img">
		                                      <img src="/resources/images/profile-default.png" alt="프로필 사진 샘플">
		                                  </div>
	                                  		<button type="button" class="button small gray-line" id="addProfileImgBtn">이미지 등록</button>
	                                  		<a id="btnUele" class="button small member-out" title="회원탈퇴">회원탈퇴</a>
	                              </div>
	                              <p style="font-size:0.8em; color:#999; margin-top:10px; padding:0; text-align:left; position:absolute; top:22px; left:194px;">
	                                  ※ 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
	                          </td>
	                      </tr>
	                      <tr>
	                          <th scope="row">아이디</th>
	                          <td><c:out value="${sessId}"/></td>
	                      </tr>
	                  </tbody>
	              </table>
	          </div>
	
	          <div class="tit-util mt40 mb10">
	              <h3 class="tit">기본정보</h3>
	
	              <div class="right">
	                  <p class="reset"><em class="font-orange">*</em> 필수</p>
	              </div>
	          </div>
	
	              <div class="table-wrap mb40">
	                  <table class="board-form">
	                      <caption>이름, 생년월일, 휴대폰, 이메일, 비밀번호, 주소 항목을 가진 기본정보 표</caption>
	                      <colgroup>
	                          <col style="width:180px;">
	                          <col>
	                      </colgroup>
	                      <tbody>
	                          <tr>
	                              <th scope="row">
	                                  이름 <em class="font-orange">*</em>
	                              </th>
	                              <td>
	                                  <span class="mbNmClass"><c:out value="${item.ifmmName}"/></span>
	                              </td>
	                          </tr>
	                          <tr>
	                              <th scope="row">
	                                  생년월일 <em class="font-orange">*</em>
	                              </th>
	                              <td>
	                                 <input type="date" name="ifmmDob" value="${item.ifmmDob}" class="input-date w230px">
	                              </td>
	                          </tr>
	                          <tr>
	                              <th scope="row">
	                                  <label for="num">휴대폰</label> <em class="font-orange">*</em>
	                              </th>
	                              <td>
	                              	<input type="text" class="input-text w500px" name="ifmmPhone" value="${item.ifmmPhone}">
	                              </td>
	                          </tr>
	                          <tr>
	                              <th scope="row">
	                                  <label for="email">이메일</label> <em class="font-orange">*</em>
	                              </th>
	                              <td>
	                                  <input type="text" id="email" name="ifmmEmailAddress" class="input-text w230px" value="${item.ifmmEmailAddress}">
	                                  <select class="form-select" id="emailHelpInline" name="ifmmEmailDomain" aria-label=".form-select email">
	                                  	<option selected>email address</option>
	                                  	<option value="8">gmail.com</option>
	                                  	<option value="9">naver.com</option>
	                                  	<option value="10">직접입력</option>
	                                  </select>
	                              </td>
	                          </tr>
	                          <tr>
	                              <th scope="row">비밀번호 <em class="font-orange">*</em></th>
	                              <td>
	                                  <a href="" class="button small gray-line" title="비밀번호 변경">비밀번호 변경</a>
	
	                                  마지막 비밀번호 변경: 18일전에 함 (2022-07-20 09:10:06)
	                              </td>
	                          </tr>
	                      </tbody>
	                  </table>
	              </div>
	         
	
		          <h3 class="tit">생년월일 로그인 설정</h3>
		
		          <div class="table-wrap mb40">
		              <table class="board-form">
		                  <caption>무인발권기(KIOSK) 기능설정 순서로 보여줍니다.</caption>
		                  <colgroup>
		                      <col style="width:180px;">
		                      <col>
		                  </colgroup>
		                  <tbody>
		                      <tr>
		                          <th scope="row" class="a-l">무인발권기(KIOSK)<br>기능설정</th>
		                          <td class="a-l">
		                              <input type="radio" name="ifmmDobLoginNy" id="kioskon" checked="" value="1">
		                              <label for="kioskon" class="mr10">사용</label>
		
		                              <input type="radio" name="ifmmDobLoginNy" id="kioskoff" value="0">
		                              <label for="kioskoff">사용안함</label>
		
		                              <span class="ml20">※ ‘생년월일+휴대폰번호’ 티켓 출력 및 회원 찾기 기능</span>
		                          </td>
		                      </tr>
		                  </tbody>
		              </table>
		          </div>
		
		          <h3 class="tit">간편로그인 계정연동</h3>
		
		          <div class="table-wrap mb40">
		              <table class="board-list">
		                  <caption>구분, 연동정보, 연결 항목을 가진 간편 로그인 계정연동 표</caption>
		                  <colgroup>
		                      <col style="width:130px;">
		                      <col>
		                      <col style="width:110px;">
		                  </colgroup>
		                  <thead>
		                      <tr>
		                          <th scope="col">구분</th>
		                          <th scope="col">연동정보</th>
		                          <th scope="col">연결</th>
		                      </tr>
		                  </thead>
		                  <tbody id="lnkgInfoTbody">
		                      <tr>
		                          <th scope="row" class="a-c">페이스북</th>
		                          <td class="a-l">연결된 계정정보가 없습니다.</td>
		                          <td>
		                          	<button type="button" class="button small gray" lnkgty="FACEBOOK" connty="conn">연동</button>
		                          </td>
		                      </tr>
		                      <tr>
		                          <th scope="row" class="a-c">네이버</th>
		                          <td class="a-l">연결된 계정정보가 없습니다.</td>
		                          <td>
		                          	<button type="button" class="button small gray" lnkgty="NAVER" connty="conn">연동</button>
		                          </td>
		                      </tr>
		                      <tr>
		                          <th scope="row" class="a-c">카카오</th>
		                          <td class="a-l">연결된 계정정보가 없습니다.</td>
		                          <td>
		                          	<button type="button" class="button small gray" lnkgty="KAKAO" connty="conn">연동</button>
		                          </td>
		                      </tr>
		                  </tbody>
		              </table>
		          </div>
		
		          <div class="btn-group mt40">
		              <button class="button large" id="cancelBtn">취소</button>
		              <button type="button" class="button purple large" id="updateBtn">등록</button>
		          </div>
		        </form>
	      </div>
      </div>
	</div>
	
	<!-- footer-s -->
	
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->		
	
	
</div>

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

<script>
	var form= $("#mbInfoForm");
	
	var goUrlUpdt = "/mypage/updt";
	var goUrlUele = "/mypage/userUele"
	
	$("#updateBtn").on("click", function(){
		form.attr("action", goUrlUpdt).submit();
	}); 
	
	$("#btnUele").on("click", function(){
	
		swal({
			title: "메가박스를 탈퇴하시겠습니까?",
			icon: "warning",
			dangerMode: true,
		})
		.then((willDelete) => {
			  if (willDelete) {
				    swal("탈퇴가 완료되었습니다.", {
				      icon: "success",
				    })
				    .then(function() {
				    	form.attr("action", goUrlUele).submit();
				    });
				  } else {
				    swal("변동사항 없습니다");
				  }
				}); 
	});

	

</script>


</body>
</html>
	