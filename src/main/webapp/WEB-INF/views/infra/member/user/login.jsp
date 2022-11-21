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
		    
		    <!-- 레이어 : 검색 -->
		    <div id="layer_header_search" class="header-layer layer-header-search"></div>
		</header>

	<div style="display:none;">
		<a id="loginPupupATag" href="#layer_login_select" class="button active btn-modal-open target" w-data="850" h-data="484"></a>
	</div>

	<section id="layer_login_select" class="modal-layer on" style="z-index: 501;"><a href="" class="focus">레이어로 포커스 이동 됨</a><a href="#" class="focus" title="레이어로 포커스 이동 됨">레이어로 포커스 이동 됨</a>
		<div class="wrap" style="width: 850px; height: 484px; margin-left: -425px; margin-top: -242px;">
			<header class="layer-header">
				<h3 class="tit">로그인</h3>
			</header>

			<div class="layer-con" style="height: 439px;">

				<div class="tab-list tab-layer" style="display: none;">
					<ul>
						<li class="on"><a href="#login_tab_01" title="회원 로그인 선택">회원 로그인</a></li>
					</ul>
				</div>

				<!-- tab-cont-wrap -->
				<div class="tab-cont-wrap">
					<!-- tab 회원 로그인 -->
					<div id="login_tab_01" class="tab-cont on"><a href="" class="ir">회원 로그인 탭 화면 입니다.</a><a href="" class="ir" title="로그인">회원 로그인 탭 화면 입니다.</a>

						<div class="login-member col-2 pt00">
							<!-- col-wrap -->
							<form id="formLogin" name="formLogin" method="post">
							<div class="col-wrap">
								<div class="col left">
									<div class="login-input-area">
										<input autocomplete="off" id="ifmmId" name="ifmmId" maxlength="20" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim" value="hiii">
										<input autocomplete="off" id="ifmmPassword" name="ifmmPassword" maxlength="20" type="password"  onkeyup="enterKey()" placeholder="비밀번호" title="비밀번호를 입력하세요" value="123" class="input-text mt15">
										<div class="alert"></div>

										<!-- chk-util -->
										<div class="chk-util">
											<div class="left">
												<input id="autoLogin" type="checkbox"> <label for="chkIdSave">아이디 저장</label>
											</div>

										</div>
										<!--// chk-util -->

										<button onclick="submitform()" type="button" class="button purple large btn-login">로그인</button>

										<div class="link">
											<a href="/find/findId" title="ID/PW 찾기 선택">ID/PW 찾기</a>
											<a href="/member/joinAuth" title="회원가입 선택">회원가입</a><br>
										</div>

										<div class="sns-login">
											<a href="javascript:naverIdLogin()"><img src="/resources/images/ico-naver.png" alt="네이버"> 네이버로 로그인</a>
											<a id="kakaoBtn"><img src="/resources/images/ico-kakao.png" alt="카카오톡">카카오톡으로 로그인</a>
										</div>
									</div>
								</div>

								<div class="col right">
									<div class="login-ad" id="Rw6jtk0hQTuOBSzFbvGGlw" style="background-color: rgb(255, 255, 255);">
										<a href="https://www.megabox.co.kr/movie-detail?rpstMovieNo=22041100" target="_blank">
											<img id="pageBannerRnbImage" src="https://mlink-cdn.netinsight.co.kr/2022/08/01/c60cb383ddab0e31804d6194df62eb19.jpg" alt="메가박스 하우스 PC일반배너 2208 바렌보임랑랑" clickthrough="" style="height: 380px;">
										</a>
									</div>
								</div>
							</div>
							</form>
							<!--// col-wrap -->
							<form name="form">
								<input type="hidden" name="ifmmName"/>
								<input type="hidden" name="ifmmId"/>
								<input type="hidden" name="ifmmPhone"/>
								<input type="hidden" name="ifmmEmailAddress"/>
								<input type="hidden" name="ifmmGender"/>
								<input type="hidden" name="ifmmDob"/>
								<input type="hidden" name="snsImg"/>
								<input type="hidden" name="token"/>
							</form>
						</div>
					</div>
					<!--// tab 회원 로그인 -->
				</div>
				<!--// tab-cont-wrap -->
			</div>

			<button type="button" class="btn-modal-close" onclick="location.href='/userHome'">레이어 닫기<!--레이어 닫기--></button>
		</div>
	</section>
</div>





<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<script>
Kakao.init('ae2d588a9908efcae4b7f462eb1258db'); 
console.log(Kakao.isInitialized());

$("#kakaoBtn").on("click", function() {

	Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  
	        	  var accessToken = Kakao.Auth.getAccessToken();
	        	  Kakao.Auth.setAccessToken(accessToken);

	        	  var account = response.kakao_account;
	        	  
	        	  console.log(response)
	        	  console.log("email : " + account.email);
	        	  console.log("name : " + account.name);
	        	  console.log("nickname : " + account.profile.nickname);
	        	  console.log("picture : " + account.profile.thumbnail_image_url);
	        	  console.log("picture : " + account.gender);
	        	  console.log("picture : " + account.birthday);
	        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
      	  
	        	  
	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
			
	        	  $.ajax({
				async: true
				,cache: false
				,type:"POST"
				,url: "/member/kakaoLoginProc"
				,data:{
					ifmmId : account.email
					,ifmmEmailAddress : account.email
					,ifmmName : account.profile.nickname
					,ifmmGender : account.gender == 'male'? 1: 2
					,ifmmDob : account.birthday
					,ifmmSnsImg : account.profile.thumbnail_image_url
					
					
				}
				,success : function(response) {
					if (response.rt == "fail") {
						alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
						return false;
					} else {
						window.location.href = "/";
					}
				},
				error : function(jqXHR, status, error) {
					alert("알 수 없는 에러 [ " + error + " ]");
				}
			});
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
});

</script>

<script>
		
	var	naverLogin = new naver.LoginWithNaverId(
				{
					clientId: "GZq9bia1ndQvMuqzFoRw",
					callbackUrl: "http://3.35.136.131/member/login",
					isPopup: false,
				}
			);
		
		naverLogin.init();
		
		naverIdLogin = function(){
		naverLogin.getLoginStatus(function (status) {
			
			if(!status)
				naverLogin.authorize();
			else 
				 setLoginStatus();
		});
	};
	
	window.addEventListener('load', function(){
		if(naverLogin.accessToken != null) {
			naverLogin.getLoginStatus(function (status){
				if(status) {
					setLoginStatus();
				}
			});
		}
	});

	function setLoginStatus() {
   			
			if (naverLogin.user.gender == 'M'){
				$("input[name=ifmmGender]").val(1);
			} else {
				$("input[name=ifmmGender]").val(2);
			} 
			
			
			
		$.ajax({
			async: true
			,cache: false
			,type:"POST"
			,url: "/member/naverLoginProc"
			,data: {
				"ifmmName": naverLogin.user.name, 
				"ifmmEmailAddress": naverLogin.user.email, 
				"ifmmGender": $("input[name=ifmmGender]").val(),
				"ifmmDob": naverLogin.user.birthyear+"-"+naverLogin.user.birthday, 
				"ifmmSnsImg": naverLogin.user.profile_image, 
				"ifmmId": naverLogin.user.id}
			,success : function(response) {
				if (response.rt == "fail") {
					alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
					return false;
				} else {
					location.href="/userHome";
				}
			},
			error : function(jqXHR, status, error) {
				alert("ajax error..!");
			}
		});
	}
</script>
 
 <script>
 
	enterKey = function() {
		
		var keycode = event.keyCode;
		
		if(keycode == 13) //Enter
			submitform();  //여기가 이제 로그인 하는 함수로 연결되면 됩니다.
	}
	
	submitform = function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href='/';
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
	});
	
	}
 
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true
			,cach: false
			,type: "post"
			,url: "/member/logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success"){
					location.href = "/userHome";
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate" + jqXHR.textStatus + ": " + jqXHR.errorThrown);
			}
			
		});
	});
 
 </script>
 
 
 
 
 
 
</body>
</html>