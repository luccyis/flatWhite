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
	<header id="header">
	    <h1 class="ci"><a href="/home" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
	    <div class="util-area">
	        <div class="right-link">
	            <!-- 로그인전 -->
	            <div class="before" style="">
	                <a href="/login" title="로그인">로그인</a>
	                <a href="/member/joinAuth" title="회원가입">회원가입</a>
	            </div>
	            <!-- 로그인후 -->
	            <div class="after" style="display:none">
	                <a href="" class="" title="로그아웃">로그아웃</a>
	                <a href="" class="notice" title="알림">알림</a>
	            </div>
	        </div>
	    </div>
	    <div class="link-area">
	        <a href="#layer_header_search" class="header-open-layer btn-layer-search" title="검색">검색</a>
	        <a href="/booking/timeTable" class="link-ticket" title="상영시간표">상영시간표</a>
	        <a href="/mypage/main" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
	    </div>
	
		<nav id="gnb" class="">
	        <ul class="gnb-depth1">
	            <li><a href="/movie/main" class="gnb-txt-movie" title="영화">영화</a></li>
	            <li><a href="/booking/timeTable" class="gnb-txt-reserve" title="예매">예매</a></li>
	            <li><a href="" class="gnb-txt-theater" title="극장">극장</a></li>
		        <li><a href="" onclick="" class="gnb-txt-event" title="이벤트">이벤트</a></li>
		        <li><a href="" onclick="" class="gnb-txt-store" title="스토어">스토어</a></li>
		        <li><a href="" class="gnb-txt-benefit" title="혜택">혜택</a></li>
	        </ul>
	    </nav>
	    <!-- 레이어 : 검색 -->
	    <div id="layer_header_search" class="header-layer layer-header-search"></div>
	</header>
	
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
					<p class="tit on"><a href="/mypage/Main" title="나의 메가박스">나의 메가박스</a></p>
					<ul>
						<li class=""><a href="/mypage/Bookinglist" title="예매/구매내역">예매내역</a></li>
						
						<li>
							<a href="/mypage/Main" title="회원정보">회원정보</a>
							<ul class="depth3">
								<li><a href="/mypage/mypageMod" title="개인정보 수정">개인정보 수정</a></li>
								<li><a href="/mypage/additionalInfo" title="선택정보 수정">선택정보 수정</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
       	
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
		                                      <img src="" alt="프로필 사진 샘플">
		                                  </div>
	                                  		<button type="button" class="button small gray-line" id="addProfileImgBtn">이미지 등록</button>
	                                  		<a href="" class="button small member-out" title="회원탈퇴">회원탈퇴</a>
	                              </div>
	                              <p style="font-size:0.8em; color:#999; margin-top:10px; padding:0; text-align:left; position:absolute; top:22px; left:194px;">
	                                  ※ 개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
	                          </td>
	                      </tr>
	                      <tr>
	                          <th scope="row">아이디</th>
	                          <td>ezen2022</td>
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
	
	          <form name="mbInfoForm">
	              <input type="hidden" name="mbNo" value="704656">
	              
	              <input type="hidden" name="phoneNo" value="010-2333-4455">
	              <input type="hidden" name="zipcd" value="12118">
	              <input type="hidden" name="mbAddr" value="서울시 서초구 서초대로77길 55(서초동)">
	              <input type="hidden" name="mbProfilFileNo" value="0">
	              <input type="hidden" id="mbByymmdd" value="19940608">
	
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
	                                  <span class="mbNmClass">김이젠 </span>
	                                  <a href="#layer_name" class="button small gray-line ml10 mr10 btn-modal-open" w-data="600" h-data="350" title="이름변경">이름변경</a>
	                                  ※ 개명으로 이름이 변경된 경우, 회원정보의 이름을 변경하실 수 있습니다.
	
	                                  <section id="layer_name" class="modal-layer"><a href="" class="focus">레이어로 포커스 이동 됨</a>
	                                      <div class="wrap">
	                                          <header class="layer-header">
	                                              <h3 class="tit">본인확인 수단 선택</h3>
	                                          </header>
	
	                                          <div class="layer-con">
	                                              <p class="reset">
	                                                  이름을 변경하기 위한 본인 확인 수단을 선택해 주세요.<br>
	                                                  (단, 개명된 이름으로 가입된 본인명의의 휴대전화 또는 아이핀으로만 가능함)
	                                              </p>
	
	                                              <div class="box-gray v1 mt20 a-c">
	                                                  <a href="#" target="_blank" class="button" id="ipinBtn" title="I-PIN 인증">I-PIN 인증</a>
	                                                  <a href="#" target="_blank" class="button ml10" id="phoneBtn" title="휴대폰 인증">휴대폰 인증</a>
	                                              </div>
	
	                                              <ul class="dash-list mt20">
	                                                  <li>신용평가기관에 개명된 이름이 먼저 등록되어 있어야 합니다.</li>
	                                                  <li>본인인증을 위해 입력하신 정보는 해당 인증기관에서 직접 수집하며 인증 이외의 용도로 이용 또는 저장되지 않습니다.</li>
	                                              </ul>
	                                          </div>
	
	                                          <button type="button" class="btn-modal-close">레이어 닫기</button>
	                                      </div>
	                                  </section>
	                              </td>
	                          </tr>
	                          <tr>
	                              <th scope="row">
	                                  생년월일 <em class="font-orange">*</em>
	                              </th>
	                              <td>
	                                  1994년
	                                  06월
	                                  08일
	                              </td>
	                          </tr>
	                          <tr>
	                              <th scope="row">
	                                  <label for="num">휴대폰</label> <em class="font-orange">*</em>
	                              </th>
	                              <td>
	                                  <div class="clearfix">
	                                      <p class="reset float-l w170px lh32 changeVal" data-name="phoneNo">
	                                          010-2233-4455
	                                      </p>
	                                      <div class="float-l">
	                                          <button type="button" class="button small gray-line change-phone-num" id="phoneChgBtn" title="휴대폰번호 변경">휴대폰번호 변경</button>
	                                      </div>
	                                  </div>
	
	                                  <div class="change-phone-num-area">
	                                      <div class="position">
	                                          <label for="chPhone" class="label">변경할 휴대폰</label>
	                                          <input type="text" id="chPhone" class="input-text w160px numType" placeholder="'-'없이 입력해 주세요" title="변경할 휴대폰 번호 입력" maxlength="11">
	                                          <button type="button" class="button small gray-line" id="sendNumberBtn">인증번호 전송</button>
	                                      </div>
	
	                                      <div class="position" style="display: none;">
	                                          <label for="chkNum" class="label">인증번호 입력</label>
	
	                                          <div class="chk-num small">
	                                              <div class="line">
	                                                  <input type="text" id="chkNum" class="input-text w180px" title="인증번호 입력" placeholder="인증번호를 입력해 주세요" maxlength="4">
	
	                                                  <div class="time-limit" id="timeLimit">3:00</div>
	                                              </div>
	                                          </div>
	                                          <button type="button" class="button small gray-line" id="chgBtn">변경완료</button>
	                                      </div>
	                                  </div>
	                              </td>
	                          </tr>
	                          <tr>
	                              <th scope="row">
	                                  <label for="email">이메일</label> <em class="font-orange">*</em>
	                              </th>
	                              <td>
	                                  <input type="text" id="email" name="mbEmail" class="input-text w500px" value="mungjee08@naver.com">
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
	          </form>
	
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
	                              <input type="radio" name="kioskset" id="kioskon" checked="" value="Y">
	                              <label for="kioskon" class="mr10">사용</label>
	
	                              <input type="radio" name="kioskset" id="kioskoff" value="N">
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
	              <button class="button purple large" id="updateBtn">등록</button>
	          </div>
	      </div>
      </div>
	</div>		
	
	
</div>


<form id="mainForm"></form>
<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>

</body>
</html>
	