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
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">극장 /</span> 관람료 </h4>

		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">영화 관람료</h5>
				<div class="card-body">
					<div class="row">
						<div class="col-4 p-2">
							<label class="form-label" for="priceSelectTheater">극장 선택</label>
							<select class="form-select" onchange="selectTheater()" id="priceSelectTheater">
								<option value="1">코엑스</option>
								<option value="2">성수</option>
								<option value="3">동대문</option>
							</select>
						</div>	
						<div class="col-4 py-4">	
							<button type="submit" class="btn btn-warning" id="btnSearch">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
					</div>		
					<div class="table-responsive text-nowrap">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>요일</th>
									<th>상영시간</th>
									<th>일반</th>
									<th>청소년</th>
								</tr>
							</thead>
							<tbody>
							
							<tr>
								<td></td>
							
							
							
								<tr>
									<td rowspan="2">주중 thprWeekendNy</td>
									<td>조조 thprMorningNy</td>
									<td>10,000</td>
									<td>8,000</td>
								</tr>
								<tr>
									<!-- <td>월~목</td> -->
									<td>일반</td>
									<td>14,000</td>
									<td>12,000</td>
								</tr>
								<tr>
									<td rowspan="2">주말<br>공휴일</td>
									<td>조조</td>
									<td>11,000</td>
									<td>9,000</td>
								</tr>
								<tr>
									<!-- <td>금~일<br>공휴일</td> -->
									<td>일반</td>
									<td>15,000</td>
									<td>13,000</td>
								</tr>
							</tbody>	
						</table>
					</div>
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
								<button type="button" class="btn btn-danger">삭제</button>
							</div>
						</div>	
					</div>
				</div>
			</div>

     
          <!-- / Content -->
          <%@include file = "../../../common/xdmin/includeV1/footer.jsp" %>

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
	var goUrlList = "/theaterPrice/list";
	var goUrlInst = "/theaterPrice/inst";
	var goUrlUpdt = "/theaterPrice/updt";
	var goUrlUele = "/theaterPrice/uele";
	var goUrlDele = "/theaterPrice/dele";
	var goUrlForm = "/theaterPrice/form";
	
	var seq = $("input:hidden[name=tdthSeq]");
	
	var form = $("form[name=formList]");
	var formVo = $("form[name=formVo]");
	
	$("#btnSearch").on("click", function(){
		form.attr("action", goUrlList).submit();
	});
	
	$("#btnReset").on("click", function(){
		$(location).attr("href", goUrlList);
	});
	
	$("#btnForm").on("click", function(){
		goForm(0);
	});
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}
	
	goForm = function(keyValue){
		seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}
	
	selectTheater = function(){
		var select = $("#priceSelectTheater");
		//select된 밸류값 가져오기....
		$.ajax(){
			async: true
			,cache: fale
			,type: "post"
			,url: ""
			
			//url 만들어야됨~~~~~~~
		}
	}
	
	
	</script>
    

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
