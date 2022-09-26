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
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/resources/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="/resources/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/resources/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/resources/assets/js/config.js"></script>
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script type="text/javascript">
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#shDateStart" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#shDateEnd").datepicker( "option", "minDate", selectedDate );
                 }    
 
            });
            $( "#shDateEnd" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#shDateStart").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });    
    });
</script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
          	<a href="" class="app-brand-link">
       			<span class="app-brand-text demo menu-text fw-bolder ms-2 d-block" style="color: #42326b;">MEGABOX</span>
       			<span class="fw-semibold text-muted">admin</span>
          	</a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <li class="menu-item">
              <a href="" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Dashboard</div>
              </a>
            </li>

            <!-- Layouts -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-clapperboard"></i>&nbsp;
                <div data-i18n="Layouts">영화</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Without menu">기본 정보</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Without navbar">상영시간표</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Container">무비포스트</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Fluid">영화 컨텐츠</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-film"></i>&nbsp;
                <div data-i18n="Layouts">극장</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Without menu">극장 정보</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Without navbar">상영관</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Container">관람료</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Fluid">극장 공지사항</div>
                  </a>
                </li>
              </ul>
            </li>

            <li class="menu-item active open">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-user"></i>&nbsp;
                <div data-i18n="Account Settings">회원</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item active">
                  <a href="/member/memberList" class="menu-link">
                    <div data-i18n="Account">회원 리스트</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Notifications">결제 관리</div>
                  </a>
                </li>
              </ul>
            </li>    
               
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-gear"></i>&nbsp;
                <div data-i18n="Authentications">시스템</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/codeGroup/codeGroupList" class="menu-link">
                    <div data-i18n="Basic">공통 코드 그룹 관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/code/codeList" class="menu-link">
                    <div data-i18n="Basic">공통 코드 관리</div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="bx bx-search fs-4 lh-0"></i>
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="Search..."
                    aria-label="Search..."
                  />
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="/resources/assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="/resources/assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">John Doe</span>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-basic.html">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->
          
         <!--  Content Wrapper -->
			<div class="content-wrapper">
		<!-- Content -->	
				<div class="container-xxl flex-grow-1 container-p-y">
					<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">회원 /</span>회원 리스트 </h4>
				
					<form method="post" name="formList" id="formList">
					<input type="hidden" name="ifmmSeq">
					<input type="hidden" name="thisPage" value="${vo.thisPage}">
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col p-2">
										<select id="shDelNy" name="shDelNy" class="form-select">
											<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>삭제여부</option>
											<option value="0" <c:if test="${vo.shOption eq 0}">selected</c:if>>N</option>
											<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>Y</option>
										</select>	
									</div>
									<div class="col p-2">
										<select id="shOptionDate" name="shOptionDate" class="form-select">
											<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>날짜</option>
											<option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
											<option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
											<option value="3" <c:if test="${vo.shOptionDate eq 3}">selected</c:if>>생년월일</option>
										</select>	
									</div>
									<div class="col p-2">
										<input type="text" class="form-control" id="shDateStart" name="shDateStart" placeholder="시작일">
									</div>
									<div class="col p-2">
										<input type="text" class="form-control" id="shDateEnd" name="shDateEnd" placeholder="종료일">
									</div>
								</div>
								<div class="row">
									<div class="col p-2">
										<select id="shOption" name="shOption" class="form-select">
											<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
											<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>멤버 시퀀스</option>
											<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>이름</option>
											<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>아이디</option>
										</select>	
									</div>
									<div class="col p-2">
										<input type="text" class="form-control" id="shValue" name="shValue" value="${vo.shValue}" placeholder="검색어">
									</div> 
									<div class="col p-2">
										<button type="button" class="btn btn-warning" id="btnSearch">
											<i class="fa-solid fa-magnifying-glass"></i>
										</button>
										<button type="button" class="btn btn-danger" id="btnReset">
											<i class="fa-solid fa-rotate-left"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<br>
					<!-- 	Table -->
						<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}"/>
						<c:set var="listCodeGrade" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
						<c:set var="listCodeEmailDomain" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
						<c:set var="listCodeSnsLogin" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
						<div class="card">
							<h5 class="card-header">회원 리스트 </h5>
							<div class="card-body">
								<div class="table-responsive text-nowrap">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>
													<div class="form-check g-2">
														<input class="form-check-input" type="checkbox" value="" id="listCheck">
													</div>
												</th>
												<th>순번</th>
												<th>시퀸스</th>
												<th>아이디 </th>
												<th>패스워드 </th>
												<th>이름 </th>
												<th>성별 </th>
												<th>등급</th>
												<th>이메일주소</th>
												<th>이메일도메인</th>
												<th>핸드폰번호</th>
												<th>생년월일</th>
												<th>이메일수신동의</th>
												<th>SMS수신동의</th>
												<th>생년월일로그인</th>
												<th>sns로그인</th>
											</tr>
										</thead>
										<tbody>
										
										<c:choose>
											<c:when test="${fn:length(list) eq 0}">
												<tr>
													<td class="text-center" colspan="16">There is no data!</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td>
														<div class="form-check g-2">
															<input class="form-check-input" type="checkbox" name="checkboxSeq" value="<c:out value="${list.ifmmSeq}"/>" id="listCheck">
														</div>
													</td>
													<td>${status.count}</td>
													<td><c:out value="${list.ifmmSeq}"/></td>
													<td><c:out value="${list.ifmmId}"/></td>
													<td><c:out value="${list.ifmmPassword}"/></td>
													<td><c:out value="${list.ifmmName}"/></td>
													<td>
														<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
															<c:if test="${list.ifmmGender eq listGender.cdSeq}"><c:out value="${listGender.cdName}"/></c:if>
														</c:forEach>	
													</td>
													<td>
														<c:forEach items="${listCodeGrade}" var="listGrade" varStatus="statusGrade">
															<c:if test="${list.ifmmGrade eq listGrade.cdSeq}"><c:out value="${listGrade.cdName}"/></c:if>
														</c:forEach>
													</td>
													<td><c:out value="${list.ifmmEmailAddress}"/></td>
													<td>
														<c:forEach items="${listCodeEmailDomain}" var="listEmailDomain" varStatus="statusEmailDomain">
															<c:if test="${list.ifmmEmailDomain eq listEmailDomain.cdSeq}"><c:out value="${listEmailDomain.cdName}"/></c:if>
														</c:forEach>	
													</td>
													<td><c:out value="${list.ifmmPhone}"/></td>
													<td><c:out value="${list.ifmmDob}"/></td>
													<td><c:out value="${list.ifmmEmailNy}"/></td>
													<td><c:out value="${list.ifmmSmsNy}"/></td>
													<td><c:out value="${list.ifmmDobLoginNy}"/></td>
													<td>
														<c:forEach items="${listCodeSnsLogin}" var="listSnsLogin" varStatus="statusSnsLogin">
															<c:if test="${list.ifmmSnsLogin eq listSnsLogin.cdSeq}"><c:out value="${listSnsLogin.cdName}"/></c:if>
														</c:forEach>	
													</td>
												</tr>
												</c:forEach>
											</c:otherwise>	
										</c:choose>	
										</tbody>	
									</table>
								</div>
							</div>
							<div class="card-footer">
								<!-- pagination s -->
								<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
								<!-- pagination e -->
								
							</div>	
							<div class="demo-inline-spacing">
								<button type="button" class="btn btn-primary">
									<i class="fa-solid fa-file-arrow-down"></i>
								</button>
								<button type="button" class="btn btn-success" id="btnForm">
									<i class="fa-solid fa-plus"></i>
								</button>
								<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#backDropModal">
									<i class="fa-solid fa-minus"></i>
								</button>
							</div>
							<div class="modal fade" id="backDropModal" data-bs-backdrop="static" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="backDropModalTitle">삭제</h5>
											<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">정말 삭제하시겠습니까?</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
											<button type="button" class="btn btn-danger" >삭제</button>
										</div>
									</div>	
								</div>
							</div>
						</div>
					</form>
				</div>	
       
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link me-4"
                    >Documentation</a
                  >

                  <a
                    href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                    target="_blank"
                    class="footer-link me-4"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

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


    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="/resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="/resources/assets/vendor/js/bootstrap.js"></script>
    <script src="/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="/resources/assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="/resources/assets/js/main.js"></script>

    <!-- Page JS -->

<script>
		var goUrlList = "/member/memberList";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";
		var goUrlForm = "/member/memberForm";
		
		var seq = $("input:hidden[name=ifmmSeq]");
		
		var form = $("form[name=formList]");
		var formVo = $("form[name=formVo]");
		
		$("#btnSearch").on("click", function(){
			form.attr("action", goUrlList).submit();
		});
		
		$("#btnReset").on("click", function(){
			$(location).attr("href", goUrlList);
		});
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
		
		$("#btnForm").on("click", function(){
			goForm(0);
		});
		
		goForm = function(keyValue){
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
		
	</script>
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
