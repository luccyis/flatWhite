<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
	<link rel="shortcut icon" href="/resources/images/favicon.ico">
	<title>meet play share, 메가박스</title>
	<link rel="stylesheet" href="/resources/css/megabox.min.css" media="all">

</head>

<body>
<div class="body-wrap">
	<%@include file="../../../common/user/includeV1/header.jsp" %>
	
	<div class="container" style="padding-bottom:240px;">
		<div class="page-util">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span>
                	<a href="/timetable/choiceMovie" title="예매 페이지로 이동">예매</a>
                	<a href="/timetable/choiceMovie" title="빠른예매 페이지로 이동">빠른예매</a>
				</div>
			</div>
		</div>	
		
			<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
            <div class="quick-reserve">
            	<div class="tit-util">
            		<h2 class="tit">빠른예매</h2>
            		<div id="btnLangChg" class="right btn-ticket" style="display:none">
                        <button type="button" class="button gray-line" onclick="parent.setLangChg()">English</button>
                    </div>
            	</div>
            	<form id="formList" method="post" name="formList">
	                <div class="seat-select-section">
	                    <div class="seat-section">
	                        <div class="tit-util">
	                            <h3 class="tit small"> 좌석선택</h3>
	                           
	                        </div>
	                        <div class="seat-area">
	                            <div class="seat-count" style="min-height: 52px">
	                            	<div class="cell">
	                            		
	                            	</div>
	                            	<div class="cell">
	                            		
	                            	</div>
	                            </div>
	                            <div class="seat-layout">
	                            
		                            <input type="hidden" name="thprPrice" value="${list[0].thprPrice}"/>
		                            <input type="hidden" name="thprSeq" value="${list[0].thprSeq}"/>
		                            <input type="hidden" name="tdthSeq" value="${item.tdthSeq}">
		                            <input type="hidden" name="tdthBranch" value="${item.tdthBranch}">
		                            <input type="hidden" name="tdttSeq" value="${item.tdttSeq}">
		                            <input type="hidden" id="tdbkTotalCost" name="tdbkTotalCost" value="${dtoBk.tdbkTotalCost}">
		                            <input type="hidden" name="tdmvSeq" value="${item.tdmvSeq}">
		                            <input type="hidden" name="tdpxSeq" value="${item.tdpxSeq}">
		                            <input type="hidden" name="tdpxPlexName" value="${item.tdpxPlexName}">
		                            <input type="hidden" name="tdttShowTime" value="${item.tdttShowTime}">
		                            
		                            <input type="hidden" name="tdmvMovieTitle" value="${item.tdmvMovieTitle}">
	                            
	                                <div class="alert" style="display: none;"></div>
	                                <div class="seat-count-before off" style="top: 0px">관람인원을 선택하십시오</div>
	                                <div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
	                                	<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
	                                		<div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position: relative; top: 0px; left: 0px; height: 270px;" dir="ltr">
	                                    		<div id="seatLayout" style="width: 100%; height: 270px;">
	                                        		<img src="/resources/images/theaterScreen.png" alt="screen" style="position: absolute; left: 62px; top: 10px;" class="mCS_img_loaded">
	                                        			<div class'row'="" id="seatChoice">
	                                        				<c:set var="left" value="351"/>
	                                        				<c:set var="top" value="50"/>
	                                        				<c:set var="addY" value="0"/>
	                                        				<c:set var="alphabet" value="${fn:split('A/B/C/D/E/F/G/H/I/J/K/L/M/N/O/P/Q/R/S/T/U/V/W/X/Y/Z','/')}"/>
	                                        				
	                                        				<c:forEach var="row" begin="1" end="${item.tdpxSittingRowNum}" step="1" varStatus="varStatusRow">
	                                        					<c:set var="addX" value="0"/>
	                                        					<button type="button" class="btn-seat-row" title="<c:out value="${alphabet[varStatusRow.index-1]}"/>행" style="position:absolute; left:330px; top:<c:out value="${top+addY}"/>px; width:20px;"><c:out value="${alphabet[varStatusRow.index-1]}"/></button>
	                                        					<c:forEach var="col" begin="1" end="${item.tdpxSittingColNum}" step="1" varStatus="varStatuscol">
	                                        						<c:set var="addX" value="${addX+20}"/>
	                                        						<button type="button" title="<c:out value="${alphabet[varStatusRow.index-1]}${varStatuscol.index}"/> (스탠다드/일반)" 
		                                        						class="jq-tooltip seat-condition standard common" id="${alphabet[varStatusRow.index-1]}${varStatuscol.index}"
		                                        						onclick="choiceSeat('${alphabet[varStatusRow.index-1]}${varStatuscol.index}')"
		     															style="position:absolute; left:<c:out value="${left+addX}"/>px; top:<c:out value="${top+addY}"/>px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" 
		     															rownm="<c:out value="${alphabet[varStatusRow.index-1]}"/>" seatno="<c:out value="${varStatuscol.index}"/>" seatchoigrpnm="<c:out value="${alphabet[varStatusRow.index-1]}${varStatuscol.index}"/>">
						                                        			<span class="num"><c:out value="${varStatuscol.index}"/></span>
						                                        			<span class="kind">스탠다드</span>
						                                        			<span class="condition">판매가능</span>
						                                        			<span class="rank">일반</span>
					                                        		</button>
	                                        					</c:forEach>
	                                        					<c:set var="addY" value="${addY+20}"/>
	                                        				</c:forEach>
	                                        				
		                                        		<img src="/resources/images/doorTop.png" alt="좌우측 출입구" style="position:absolute; left:491px; top:30px; width:16px; height: 16px;" class="mCS_img_loaded">
	                                        		</div>
	                                			</div>
	                                			<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;">
	                                				<div class="mCSB_draggerContainer">
	                                					<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; height: 569px; top: 0px; max-height: 382px;">
	                                						<div class="mCSB_dragger_bar" style="line-height: 30px;">
	                                						</div>
	                                					</div>
	                                					<div class="mCSB_draggerRail">
	                             					</div>
	                                			</div>
	                                		</div>
	                                	</div>
	                                </div>
	                            </div>
	                            <div class="zone-legend" style="display: none"></div>
	                        </div>
	                    </div>
	                    <div class="seat-result">
	                        <div class="wrap">
	                            <div class="tit-area">
	                                <span class="movie-grade small 
	                                	<c:choose>
	                                		<c:when test="${item.tdmvAge eq 18}">age-all</c:when>
	                                		<c:when test="${item.tdmvAge eq 19}">age-12</c:when>
	                                		<c:when test="${item.tdmvAge eq 20}">age-15</c:when>
	                                		<c:when test="${item.tdmvAge eq 21}">age-19</c:when>
	                                	</c:choose>
	                                "></span>
	                                <p class="tit"><c:out value="${item.tdmvMovieTitle}"/></p>
	                                <p class="cate">2D(자막)</p>
	                            </div>
	                            <div class="info-area">
	                                <p class="theater"><c:out value="${item.tdthBranch}"/></p>
	                                <p class="special"><c:out value="${item.tdpxPlexName}"/></p>
	                                <p class="date"><span><c:out value="${item.tdttShowTime.substring(0, 10)}"/></span><em>(수)</em></p>
	                                <div class="other-time">
	                                    <button type="button" class="now"><c:out value="${item.tdttShowTime.substring(10, 16)}"/></button>
	                                </div>
	                                <p class="poster">
	                                	<img src="${imageItem.upPath}${imageItem.uuIdName}" alt="${item.tdmvMovieTitle}">
	                                </p>
	                            </div>
	                            <div class="choice-seat-area">
	                                <div class="legend">
	                                    <ul class="list"> <li><div class="seat-condition choice" title="선택한 좌석"></div>
	                                    <em>선택</em></li> <li><div class="seat-condition finish" title="예매 완료"></div> <em>예매완료</em></li> <li><div class="seat-condition impossible" title="선택 불가"></div> <em>선택불가</em></li> <li><div class="seat-condition common" title="일반"></div> <em> 일반</em></li></ul>
	                                </div>
	                                <div class="seat-num">
	                                    <p class="tit">선택좌석</p>
	                                    <div class="my-seat"></div>
	                                </div>
	                            </div>
	                            <div class="pay-area">
	                                <!-- <p class="count"><span>성인 <em>2</em></span></p> -->
	                                <div class="pay">
	                                    <p class="tit">최종결제금액</p>
	                                    <div class="money">
	                                        <em id="finalPrice">0</em> <span>원</span>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="btn-group">
	                                <a class="button" id="pagePrevious" title="이전">이전</a>
	                                <a class="button active" id="pageNext" title="다음">다음</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	     	</form>
        </div>
     </div>
  </div>   
     
     <!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->


</div>
<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- script-e -->

 <script>

 adultCount = function(key){
	 if(key == 'up'){
		 $("#adultTicket").html(Number($("#adultTicket").html())+1);
	 } else {
		 if( $("#adultTicket").html() == 0)
			 return ;
		 $("#adultTicket").html(Number($("#adultTicket").html())-1);
	 }
 }
 
 teenCount = function(key){
	 if(key == 'up'){
		 $("#teenTicket").html(Number($("#teenTicket").html())+1);
	 } else {
		 if( $("#teenTicket").html() == 0)
			 return ;
		 $("#teenTicket").html(Number($("#teenTicket").html())-1);
	 }
 }
 
 
 choiceSeat =function(seatNum){
	 var price=Number($("input:hidden[name=thprPrice]").val());
	 
	 if ($("#"+seatNum).hasClass('on choice')) {
		 $("#"+seatNum).removeClass('on choice');
		 $("#btn"+seatNum).remove();
		 $("#finalPrice").html(Number($("#finalPrice").html())-price);
		 $("#tdbsSeatNums"+seatNum).remove();
		 
	 } else {
		 $("#"+seatNum).addClass('on choice');
		 document.querySelector('.my-seat').innerHTML += '<div class="seat choice" title="선택한 좌석" id="btn'+seatNum+'" name="tdbsSeatNum">'+ seatNum +'</div>';
		 $("#finalPrice").html(Number($("#finalPrice").html())+price);
		 $("#formList").append("<input type='hidden' name='tdbsSeatNums' id='tdbsSeatNums"+ seatNum +"' value='" + seatNum + "'>");
		 
	 }
 }
</script>

<script>
	var goUrlBack = "/timetable/choiceMovie";
	var goUrlPay = "/booking/bookingPay";
	var form=$("form[name=formList]");
	var seq = $("input:hidden[name=tdttSeq]");
	
	$("#pageNext").on("click", function(){
		if( $("#finalPrice").html() == 0){
			swal("좌석을 선택해주세요.");
		} else {
			$("#tdbkTotalCost").val($("#finalPrice").html());
			form.attr("action",goUrlPay).submit();
		}
	});
	
	$("#pagePrevious").on("click", function(){
		form.attr("action", goUrlBack).submit();
	});
	
	


</script>

</body>
</html>