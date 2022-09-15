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
<body class="bg-member">
    <div class="body-wrap">
    
		<!-- member-wrap -->
		<div class="member-wrap">
			<h1 class="ci"><a href="/home/main" title="메인 페이지로 이동">MEGABOX : Life Theater</a></h1>

		<!-- col-wrap -->
		<div class="col-wrap">
			<!-- col -->
			<div class="col">

				<p class="tit-member">아이디/비밀번호 찾기</p>

				<div class="tab-list">
					<ul>
						<li><a href="/find/findId" title="아이디찾기 선택">아이디 찾기</a></li>
						<li class="on"><a href="/find/findPw" title="비밀번호 찾기 선택">비밀번호 찾기</a></li>
					</ul>
				</div>
				
				<h2 class="tit mt20">비밀번호 재설정</h2>
				
				<form>
					<div class="table-wrap">
						<table class="board-form">
							<caption>비밀번호 재설정표</caption>
							<colgroup>
								<col style="width: 130px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="settingPw">비밀번호</label>
									<td>
										<input id="settingPw" maxlength="20" type="password" class="input-password w230px">
									</td>
								</tr>	
								<tr>
									<th scope="row"><label for="settingPw">비밀번호 확인</label>
									<td>
										<input id="settingPw" maxlength="20" type="password" class="input-password w230px">
									</td>
								</tr>		
							</tbody>
						</table>
						<div class="btn-member-bottom">
							<button type="submit" type="btn" class="button purple large">확인</button>
						</div>
					</div>
				</form>	
			</div>
			<!--// col -->
		</div>
		<!--// col-wrap -->
	</div>
	<!--// member-wrap -->

<!-- footer -->
<footer>
</footer>
<!--// footer --></div>
  	<!--// body-wrap -->

<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>

</body>	
</html>