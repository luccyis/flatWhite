<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mj.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html
  lang="ko"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/resources/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
  <%@include file = "../../../common/xdmin/includeV1/head.jsp" %>
    
  </head>

  <body>
  <%@include file = "../../../common/xdmin/includeV1/frontMenu.jsp" %>
   
    <!--  Content Wrapper -->
	<div class="content-wrapper">
<!-- Content -->	
		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">극장 /</span> 기본 정보 관리 </h4>
			
			<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('5')}"/>
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">극장 정보 추가</h5>
				<div class="card-body">
					<form id="form" method="post">
						<%@include file="theaterVo.jsp" %>
					
					<div class="row">
						<div class="col-6 p-2">
							<label for="theaterCode" class="form-label">코드</label>
							<input type="text" class="form-control" name="tdthSeq" id="theaterCode" placeholder="자동생성" disabled>
						</div>
						<div class="col p-2">
							<label for="inputRegion" class="form-label">지역선택</label>
							<select id="inputRegion" name="tdthRegion" class="form-select" value="<c:out value="${item.tdthRegion}"/>">
								<c:forEach items="${listCodeRegion}" var="listRegion" varStatus="status">
									<option value="${list.tdthRegion eq listRegion.cdSeq }">${listRegion.cdName}</option>
								</c:forEach>
							</select>
						</div>
					</div>	
					<div class="row">
						<div class="col p-2">
							<label for="inputBranch" class="form-label">지점명</label>
							<input type="text" class="form-control" name="tdthBranch" value="<c:out value="${item.tdthBranch}"/>" id="inputBranch">
						</div>
						<div class="col p-2">
							<label for="inputBranchEng" class="form-label">지점명(영어)</label>
							<input type="text" class="form-control" name="tdthBranchEng" value="<c:out value="${item.tdthBranchEng}"/>" id="inputBranchEng">
						</div>
					</div>
					<div class="row">	
						<div class="col-6 p-2">
							<label for="sample4_postcode" class="form-label">주소</label>
							<div class="input-group">
								<input type="text" class="form-control" id="sample3_postcode" name="tdthZipCode" placeholder="우편번호" aria-describedby="btnAddress">
								<button type="button" class="btn btn-outline-dark" id="btnAddress">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button type="button" class="btn btn-outline-dark" id="btnAddressClear">
									<i class="fa-solid fa-xmark"></i>
								</button>
							</div>
							<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
								<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
							</div>
						</div>
						<div class="col-6 p-2">		
							<div class="row p-1">	
								<input type="text" class="form-control" id="sample3_roadAddress" name="tdthAddress" placeholder="도로명주소" disabled>
							</div>	
							<div class="row p-1">		
								<input type="text" class="form-control" id="sample3_jibunAddress" name="" placeholder="지번주소" disabled>
							</div>
							<div class="row p-1">		
								<input type="text" class="form-control" id="sample3_detailAddress" name="" placeholder="상세주소">
							</div>
							<div class="row p-1">
								<input type="text" class="form-control" id="sample3_extraAddress" placeholder="참고항목" disabled>
							</div>
							<div class="row p-1">
								<div class="col">
									<input type="text" class="form-control" id="ifmaLatArray0" placeholder="위도" disabled>
								</div>
								<div class="col">
									<input type="text" class="form-control" id="ifmaLngArray0" placeholder="경도" disabled>
								</div>
							</div>
						</div>	
					</div>	
			
				<div class="row">
					<div class="col-6">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-primary" id="btnList">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
					</div>	
					<div class="col-6 d-flex flex-row-reverse">
						<div class="demo-inline-spacing">
							<button type="button" class="btn btn-danger" id="btnUelete">
								<i class="fa-solid fa-xmark"></i>
							</button>
							<button type="button" class="btn btn-danger" id="btnDelete">
								<i class="fa-solid fa-trash-can"></i>
							</button>
							<button type="button" class="btn btn-success" id="btnSave">
								<i class="fa-solid fa-arrow-up-from-bracket"></i>
							</button>	
						</div>
					</div>
				</div>		
			</div>
			</form>
			<form name="formVo" id="formVo" method="post">
				<!-- *Vo.jsp s -->
				<%@include file="theaterVo.jsp" %>
				<!-- *Vo.jsp e -->
			</form>
		</div>	
        <!-- / Content -->
		 <%@include file = "../../../common/xdmin/includeV1/footer.jsp" %>
		 
		 <!-- modalBase s -->
		<%@include file="../../../common/xdmin/includeV1/modalBase.jsp"%>
		<!-- modalBase e -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

<%@include file = "../../../common/xdmin/includeV1/includeScript.jsp" %>
    
    <script type="text/javascript">
    
    	var goUrlList = "/theater/theaterList";
    	var goUrlInst = "/theater/theaterInst";
    	var goUrlUpdt = "/theater/theaterUpdt";
    	var goUrlUele = "/theater/theaterUele";
    	var goUrlDele = "/theater/theaterDele";
    	
    	var seq = $("input:hidden[name=tdthSeq]");
    	
    	var form = $("form[name=form]");
    	var formVo = $("form[name=formVo]");
    	
    </script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ae2d588a9908efcae4b7f462eb1258db&libraries=services"></script>
<script>	

	$("#btnAddress").on("click", function(){
		sample3_execDaumPostcode();
	});
	
	$("#btnAddressClear").on("click", function(){
		$("#sample3_roadAddress").val('');
		$("#sample3_postcode").val('');
		$("#sample3_detailAddress").val('');
		$("#sample3_extraAddress").val('');
		$("#sample3_jibunAddress").val('');
	});
	 
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadaddr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
                var jibunAddress = ''; //

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                	roadaddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                	jibunAddress = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_jibunAddress").value = jibunAddress;
                document.getElementById("sample3_roadAddress").value = roadaddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
                
                //경도.위도 찾기
        		/* lat and lng from address s */
        			
        		// 주소-좌표 변환 객체를 생성
        		var geocoder = new daum.maps.services.Geocoder();
        		
        		// 주소로 좌표를 검색
        		geocoder.addressSearch(roadaddr, function(result, status) {
        		 
        			// 정상적으로 검색이 완료됐으면,
        			if (status == daum.maps.services.Status.OK) {
        				
        				document.getElementById("ifmaLatArray0").value=result[0].y;
        				document.getElementById("ifmaLngArray0").value=result[0].x;
        			}
        		});
        		/* lat and lng from address e */
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
    
</script>
<%@include file = "../../../common/xdmin/includeV1/btnScript.jsp" %>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
