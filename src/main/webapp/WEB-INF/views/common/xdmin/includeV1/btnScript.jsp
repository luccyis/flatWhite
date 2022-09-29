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


</script>
