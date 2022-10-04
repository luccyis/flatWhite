<%@ page language="java" pageEncoding="utf-8" %>

<script>
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

$("#btnSave").on("click", function(){
	if(seq.val() == "0" || seq.val() == ""){
		form.attr("action", goUrlInst).submit();
	} else {
		form.attr("action", goUrlUpdt).submit();
	}
});

$("#btnDelete").on("click", function(){
	form.attr("action", goUrlDele).submit();
});

$("#btnUelete").on("click", function(){
	form.attr("action", goUrlUele).submit();
});

$("#btnList").on("click", function(){
	formVo.attr("action", goUrlList).submit();
});


</script>
