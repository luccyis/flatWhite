<%@ page language="java" pageEncoding="utf-8" %>

<header id="header">
    <h1 class="ci"><a href="/userHome" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
    <div class="util-area">
        <div class="right-link">
        	<c:if test="${sessSeq eq null}">
        		<!-- 로그인 전 -->
            	<div class="before" style="">
                	<a href="/member/login" title="로그인">로그인</a>
               		<a href="/member/joinAuth" title="회원가입">회원가입</a>
            	</div>
        	</c:if>
            <c:if test="${sessSeq ne null}">
          	 <!--  로그인 후 -->
	           	<div class="after" style="">
	           		<a><c:out value="${sessName}"/> 님 안녕하세요.</a>
	                <a id="btnLogout" class="" title="로그아웃">로그아웃</a>
	            </div>
            </c:if>
        </div>
    </div>
    <div class="link-area">
        <a href="/timetable/choiceMovie" class="link-ticket" title="상영시간표">상영시간표</a>
        <a href="/mypage/main" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
    </div>

	<nav id="gnb" class="">
        <ul class="gnb-depth1">
            <li><a href="/movie/main" class="gnb-txt-movie" title="영화">영화</a></li>
            <li><a href="/timetable/choiceMovie" class="gnb-txt-reserve" title="예매">예매</a></li>
        </ul>
    </nav>
    <!-- 레이어 : 검색 -->
    <div id="layer_header_search" class="header-layer layer-header-search"></div>
</header>