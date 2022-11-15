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
	
	<div class="container">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
                	<a title="영화 페이지로 이동">영화</a>
                	<a title="전체영화 페이지로 이동">전체영화</a>
				</div>
			</div>
		</div>
	<!-- contents -->
		<form method="post" name="formList" id="formList">
		<input type="hidden" name="tdmvSeq">
		
		<div id="contents" class="">
			<!-- inner-wrap -->
			<div class="inner-wrap">
				<h2 class="tit">전체영화</h2>
				<div class="tab-list fixed">
					<ul id="topMenu">
						<li class="on"><a title="박스오피스 탭으로 이동">박스오피스</a></li> 
						<li><a title="" value="2">상영예정작</a></li>
						<li><a title=""></a></li>
						<li><a title=""></a></li>
						<li><a title=""></a></li>
					</ul>
				</div>
				<div class="movie-list-util mt40">
					<div class="movie-search">
						<input type="text" title="영화명을 입력하세요" id="shValue" name="shValue" value="${vo.shValue}" placeholder="영화명 검색" autocomplete="off" class="input-text">
						<button type="button" class="btn-search-input" id="btnSearch">검색</button>
					</div>
				</div>	
				
				<div id="lita"></div>
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
	var goUrlView = "/movie/view";
	var seq = $("input:hidden[name=tdmvSeq]");
	
	var form = $("form[name=formList]");
	
	goView = function(tdmvSeq){
		seq.val(tdmvSeq);
		form.attr("action",goUrlView).submit();
	}

</script>
	
</body>
</html>