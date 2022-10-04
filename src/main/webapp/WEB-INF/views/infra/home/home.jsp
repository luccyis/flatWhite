<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html
  lang="ko"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/resources/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
  <%@include file = "../../common/xdmin/includeV1/head.jsp" %>
  
  </head>

<body>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-6 p-2">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<img src="/resources/images/userMain.png" height="400" alt="userMainPage" onclick="location.href='/home/userMain'"/>
						</div>
					</div>
					<div class="card-footer">
						<div class="text-center">
							<button class="btn btn-lg btn-outline-primary" type="button" onclick="location.href='/home/userMain'">사용자 페이지로</button>
						</div>
					</div>	
				</div>
			</div>
			<div class="col-6 p-2">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<img src="/resources/images/xdminMain.png" height="400" alt="userMainPage" onclick="location.href='/home/xdminMain'"/>
						</div>
					</div>
					<div class="card-footer">
						<div class="text-center">
							<button class="btn btn-lg btn-outline-primary" type="button" onclick="location.href='/home/xdminMain'">관리자 페이지로</button>
						</div>	
					</div>
				</div>
			</div>
		</div>	
				
				
					
	






	</div>
</body>
</html>