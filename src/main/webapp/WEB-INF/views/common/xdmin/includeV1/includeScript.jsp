<%@ page language="java" pageEncoding="utf-8" %>

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


<script async defer src="https://buttons.github.io/buttons.js"></script>
<script src="https://kit.fontawesome.com/47516a9c09.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script>
$("#btnLogout").on("click", function(){
	$.ajax({
		async: true
		,cach: false
		,type: "post"
		,url: "/member/logoutProc"
		,data: {}
		,success: function(response) {
			if(response.rt == "success"){
				location.href = "/";
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