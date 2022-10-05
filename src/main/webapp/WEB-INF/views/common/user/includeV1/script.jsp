<%@ page language="java" pageEncoding="utf-8" %>

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
				location.href = "/home/userMain";
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