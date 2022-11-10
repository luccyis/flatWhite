<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


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
	
	<!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

           	<form method="post" name="formList" id="formList">
			<input type="hidden" name="tdmvSeq">
			<input type="hidden" name="ifmmSeq">
			<input type="hidden" name="tdthSeq">
			
            	<div class="container-xxl flex-grow-1 container-p-y">
	            	<div class="row">
		                <div class="col-lg-8 mb-4 order-0">
		                  <div class="card">
		                    <div class="d-flex align-items-end row">
		                        <div class="card-body container">
		                        	<h4 class="card-title text-nowrap mb-4"><b>현재 박스오피스 순위</b></h4>
		                        	
									<div class="row gx-1">
										<c:forEach items="${list}" var="list" varStatus="status">
											<div class="col-lg-3 p-2">
												<p class="rank"><c:out value="${list.tdmvRank}"/><span class="ir">위</span></p>
										      	<img src="${list.upPath}${list.uuIdName}" alt="${list.tdmvMovieTitle}" style="width: 200px;">
										    </div>  	
										</c:forEach>	
									</div>
									<div class="row gx-1 ">
										<div class="d-flex align-items-center">
	                      					<button href="" class="btn btn-md btn-outline-primary" style="width: 300px;">영화정보관리로 이동</button>
										</div>
									</div>
	                      		</div>
		                    </div>
		                  </div>
		                </div>
		                <div class="col-lg-4 col-md-4 order-1">
		                	<div class="row">
                    			<div class="col-lg-6 col-md-12 col-6 mb-4">
                     				<div class="card">
                        				<div class="card-body">
                        					<div class="card-title text-center">
                       							<span class="fw-semibold d-block mb-1">총 회원 수</span>
                         						<h1 class="text-primary fw-semibold">
                         						<i class="fa-solid fa-users-rectangle"></i></h1>
                        						<h3 class="card-title mb-2"> <c:out value="${memberCount}"/></h3>
                        					</div>
                        				</div>
                        			</div>		
		                		</div>
		                		<div class="col-lg-6 col-md-12 col-6 mb-4">
                     				<div class="card">
                        				<div class="card-body">
                        					<div class="card-title text-center">
                       							<span class="fw-semibold d-block mb-1">총 극장 수</span>
                         						<h1 class="text-info fw-semibold">
                         						<i class="fa-solid fa-hotel"></i></h1>
                        						<h3 class="card-title mb-2"> <c:out value="${theaterCount}"/></h3>
                        					</div>
                        				</div>
                        			</div>		
		                		</div>
		                		<div class="col-lg-12 col-md-12 col-6 mb-4">
                     				<div class="card">
                        				<div class="card-body">
                        					<div class="card-title text-center">
                       							<span class="fw-semibold d-block mb-1">월별 결제금액</span>
                         						<h1 class="text-warning fw-semibold">
                         						<i class="fa-solid fa-cat"></i></h1>
                        						<h3 class="card-title mb-2"> <c:out value="${bkList.bkDate}"/></h3>
                        						<h3 class="card-title mb-2"> <c:out value="${bkList.bkSum}"/></h3>
                        					</div>
                        				</div>
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

<%@include file = "../../../common/xdmin/includeV1/includeScript.jsp" %>

  </body>
</html>
