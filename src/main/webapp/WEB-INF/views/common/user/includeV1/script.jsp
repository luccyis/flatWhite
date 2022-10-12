<%@ page language="java" pageEncoding="utf-8" %>

<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

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

