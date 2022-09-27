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
		<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">영화 /</span> 상영 시간표 관리 </h4>
		
	<!-- 	Table -->
		<div class="card">
			<h5 class="card-header">상영 시간표</h5>
			<div class="card-body">
				<div class="table-responsive text-nowrap">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>#</th>
								<th>seq</th>
								<th>영화제목</th>
								<th>극장</th>
								<th>상영관</th>
								<th>시간</th>
								<th>조조여부</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>1</td>
								<td>탑건: 매버릭</td>
								<td>코엑스</td>
								<td>1</td>
								<td>2022-08-02 09:40</td>
								<td>1</td>
							</tr>	
							<tr>
								<td>2</td>
								<td>2</td>
								<td>탑건: 매버릭</td>
								<td>코엑스</td>
								<td>1</td>
								<td>2022-08-02 13:50</td>
								<td>0</td>
							</tr>
							<tr>
								<td>3</td>
								<td>3</td>
								<td>애프터 양</td>
								<td>코엑스</td>
								<td>1</td>
								<td>2022-08-02 20:40</td>
								<td>0</td>
							</tr>	
							<tr>
								<td>4</td>
								<td>4</td>
								<td>헤어질 결심</td>
								<td>코엑스</td>
								<td>2</td>
								<td>2022-08-02 08:20</td>
								<td>1</td>
							</tr>
							<tr>
								<td>5</td>
								<td>5</td>
								<td>헤어질 결심</td>
								<td>코엑스</td>
								<td>2</td>
								<td>2022-08-02 12:50</td>
								<td>0</td>
							</tr>
							<tr>
								<td>6</td>
								<td>6</td>
								<td>헤어질 결심</td>
								<td>코엑스</td>
								<td>2</td>
								<td>2022-08-02 17:10</td>
								<td>0</td>
							</tr>
							<tr>
								<td>7</td>
								<td>7</td>
								<td>토르</td>
								<td>코엑스</td>
								<td>3</td>
								<td>2022-08-02 09:00</td>
								<td>1</td>
							</tr>
							<tr>
								<td>8</td>
								<td>8</td>
								<td>토르</td>
								<td>코엑스</td>
								<td>3</td>
								<td>2022-08-02 13:00</td>
								<td>0</td>
							</tr>
							<tr>
								<td>9</td>
								<td>9</td>
								<td>토르</td>
								<td>코엑스</td>
								<td>3</td>
								<td>2022-08-02 19:10</td>
								<td>0</td>
							</tr>
							<tr>
								<td>10</td>
								<td>10</td>
								<td>애프터 양</td>
								<td>성수</td>
								<td>4</td>
								<td>2022-08-02 09:20</td>
								<td>1</td>
							</tr>	
							<tr>
								<td>11</td>
								<td>11</td>
								<td>애프터 양</td>
								<td>성수</td>
								<td>4</td>
								<td>2022-08-02 15:30</td>
								<td>0</td>
							</tr>
							<tr>
								<td>12</td>
								<td>12</td>
								<td>토르</td>
								<td>성수</td>
								<td>4</td>
								<td>2022-08-02 20:10</td>
								<td>0</td>
							</tr>
							<tr>
								<td>13</td>
								<td>13</td>
								<td>토르</td>
								<td>성수</td>
								<td>5</td>
								<td>2022-08-02 12:15</td>
								<td>0</td>
							</tr>
							<tr>
								<td>14</td>
								<td>14</td>
								<td>헤어질 결심</td>
								<td>성수</td>
								<td>5</td>
								<td>2022-08-02 16:55</td>
								<td>0</td>
							</tr>
							<tr>
								<td>15</td>
								<td>15</td>
								<td>헤어질 결심</td>
								<td>성수</td>
								<td>5</td>
								<td>2022-08-02 21:10</td>
								<td>0</td>
							</tr>
							<tr>
								<td>16</td>
								<td>16</td>
								<td>탑건: 매버릭</td>
								<td>성수</td>
								<td>6</td>
								<td>2022-08-02 07:30</td>
								<td>1</td>
							</tr>
							<tr>
								<td>17</td>
								<td>17</td>
								<td>탑건: 매버릭</td>
								<td>성수</td>
								<td>6</td>
								<td>2022-08-02 12:40</td>
								<td>0</td>
							</tr>
							<tr>
								<td>18</td>
								<td>18</td>
								<td>탑건: 매버릭</td>
								<td>성수</td>
								<td>6</td>
								<td>2022-08-02 18:20</td>
								<td>0</td>
							</tr>
							<tr>
								<td>19</td>
								<td>19</td>
								<td>헤어질 결심</td>
								<td>동대문</td>
								<td>7</td>
								<td>2022-08-02 09:30</td>
								<td>1</td>
							</tr>
							<tr>
								<td>20</td>
								<td>20</td>
								<td>헤어질 결심</td>
								<td>동대문</td>
								<td>7</td>
								<td>2022-08-02 14:40</td>
								<td>0</td>
							</tr>
							<tr>
								<td>21</td>
								<td>21</td>
								<td>헤어질 결심</td>
								<td>동대문</td>
								<td>7</td>
								<td>2022-08-02 17:55</td>
								<td>0</td>
							</tr>
							<tr>
								<td>22</td>
								<td>22</td>
								<td>탑건: 매버릭</td>
								<td>동대문</td>
								<td>8</td>
								<td>2022-08-02 08:30</td>
								<td>1</td>
							</tr>
							<tr>
								<td>23</td>
								<td>23</td>
								<td>탑건: 매버릭</td>
								<td>동대문</td>
								<td>8</td>
								<td>2022-08-02 13:40</td>
								<td>0</td>
							</tr>
							<tr>
								<td>24</td>
								<td>24</td>
								<td>헤어질 결심</td>
								<td>동대문</td>
								<td>8</td>
								<td>2022-08-02 19:00</td>
								<td>0</td>
							</tr>
							<tr>
								<td>25</td>
								<td>25</td>
								<td>토르</td>
								<td>동대문</td>
								<td>9</td>
								<td>2022-08-02 11:20</td>
								<td>0</td>
							</tr>
							<tr>
								<td>26</td>
								<td>26</td>
								<td>애프터 양</td>
								<td>동대문</td>
								<td>9</td>
								<td>2022-08-02 15:40</td>
								<td>0</td>
							</tr>
							<tr>
								<td>27</td>
								<td>27</td>
								<td>애프터 양</td>
								<td>동대문</td>
								<td>9</td>
								<td>2022-08-02 20:10</td>
								<td>0</td>
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
				<button type="button" class="btn btn-success" onclick="location.href='../movie/timeTableForm.html'">
					<i class="fa-solid fa-plus"></i>
				</button>
				<button type="button" class="btn btn-danger">
					<i class="fa-solid fa-minus"></i>
				</button>
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
