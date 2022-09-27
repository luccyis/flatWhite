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
	<div class="content-wrapper">
<!-- Content -->	
		<div class="container-xxl flex-grow-1 container-p-y">
			<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">영화 /</span> 무비포스트 </h4>
			
		<!-- 	Table -->
			<div class="card">
				<h5 class="card-header">무비포스트 리스트</h5>
				<div class="card-body">
					<div class="table-responsive text-nowrap">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>
										<div class="form-check g-2">
											<input type="check" class="form-check-input">
										</div>
									</th>
									<th>#</th>
									<th>시퀸스</th>
									<th>작성자 아이디</th>
									<th>영화제목</th>
									<th>내용</th>
									<th>이미지</th>
									<th>작성시간</th>
									<th>수정시간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="form-check g-2">
											<input type="check" class="form-check-input">
										</div>
									</td>
									<td>1</td>
									<td>1</td>
									<td>mjee08</td>
									<td>탑건: 매버릭</td>
									<td>입체감있고 스릴만점이네요. 재밌어요</td>
									<td></td>
									<td>2022-08-09 20:42:10</td>
									<td>2022-08-09 20:42:10</td>
								</tr>
							</tbody>	
						</table>
					</div>
				</div>
				<div class="card-footer">
					<div class="col-12">
						<div class="demo-inline-spacing">
							<nav aria-lable="Page Navigation">
								<ul class="pagination pagination-sm justify-content-center">
									<li class="page-item prev">
										<a class="page-link" href="javascript:void(0);">
											<i class="tf-icon bx bx-chevrons-left"></i>
                         						</a>
		                            </li>
		                            <li class="page-item active">
		                              <a class="page-link" href="javascript:void(0);">1</a>
		                            </li>
		                            <li class="page-item">
		                              <a class="page-link" href="javascript:void(0);">2</a>
		                            </li>
		                            <li class="page-item">
		                              <a class="page-link" href="javascript:void(0);">3</a>
		                            </li>
		                            <li class="page-item">
		                              <a class="page-link" href="javascript:void(0);">4</a>
		                            </li>
		                            <li class="page-item">
		                              <a class="page-link" href="javascript:void(0);">5</a>
		                            </li>
		                            <li class="page-item next">
		                            	<a class="page-link" href="javascript:void(0);">
		                              		<i class="tf-icon bx bx-chevrons-right"></i>
	                              		</a>
		                           </li>
		                        </ul>
		                      </nav>	
							</div>
						</div>
					</div>
				</div>	
				<div class="demo-inline-spacing">
					<button type="button" class="btn btn-primary">
						<i class="fa-solid fa-file-arrow-down"></i>
					</button>
					<button type="button" class="btn btn-success" onclick="location.href='../movie/moviePostForm.html'">
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

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
  </body>
</html>
