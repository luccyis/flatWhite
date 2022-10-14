<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mj.infra.modules.code.CodeServiceImpl"/>
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
		
		<form method="post" name="formList" id="formList">
	        <input type="hidden" name="tdmvSeq" id="tdmvSeq">
	        <input type="hidden" name="tdthSeq" id="tdthSeq">
	        <input type="hidden" name="tdttSeq" id="tdttSeq">
			<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
	            <div class="quick-reserve">
	            	<div class="tit-util">
	            		<h2 class="tit">빠른예매</h2>
	            	</div>
	            	<div class="mege-quick-reserve-inculde">
	
	                    <!-- time-schedule -->
	                    <div class="time-schedule quick">
	                        <div class="wrap">
	
	                            <!-- 이전날짜 -->
	                            <button type="button" title="이전 날짜 보기" class="btn-pre" disabled="true">
	                                <i class="iconset ico-cld-pre"></i> <em>이전</em>
	                            </button>
	                            <!--// 이전날짜 -->
	
	                            <div class="date-list">
	                                <!-- 년도, 월 표시 -->
	                                <div class="year-area">
	                                    <div class="year" style="left: 30px; z-index: 1; opacity: 1;">2022.08</div>
	                                    <div class="year" style="left: 450px; z-index: 1; opacity: 0;"></div>
	                                </div>
	
	
	                                <div class="date-area" id="formDeList">
	                                	<div class="wrap" style="position: relative; width: 2100px; border: none; left: -70px;">
		                                	<button class="disabled" type="button" date-data="2022.08.04" month="7" tabindex="-1">
			                                	<span class="ir">2022년 8월</span>
			                                	<em style="pointer-events:none;">1<span style="pointer-events:none;" class="ir">일</span></em>
			                                	<span class="day-kr" style="pointer-events:none;display:inline-block">목</span>
			                                	<span class="day-en" style="pointer-events:none;display:none">Thu</span>
		                                	</button>
		                                	<button class="on" type="button" date-data="2022.08.05" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">2<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">오늘</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Fri</span>
		                                	</button>
		                                	<button class="sat" type="button" date-data="2022.08.06" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">3<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">내일</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Sat</span>
		                                	</button>
		                                		<button class="holi" type="button" date-data="2022.08.07" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">4<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">일</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Sun</span>
		                                	</button>
		                                	<button class="" type="button" date-data="2022.08.08" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">5<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">월</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Mon</span>
		                                	</button>
		                                	<button class="" type="button" date-data="2022.08.09" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">6<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">화</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Tue</span>
		                                	</button>
		                                		<button class="disabled" type="button" date-data="2022.08.10" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">7<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">수</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Wed</span>
		                                	</button>
		                                		<button class="disabled" type="button" date-data="2022.08.11" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">8<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">목</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Thu</span>
		                                	</button>
		                                	<button class="disabled" type="button" date-data="2022.08.12" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">9<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">금</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Fri</span>
		                                	</button>
		                                	<button class="sat" type="button" date-data="2022.08.13" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">10<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">토</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Sat</span>
		                                	</button>
		                                	<button class="disabled holi" type="button" date-data="2022.08.14" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">11<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">일</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Sun</span>
		                                	</button>
		                                	<button class="disabled" type="button" date-data="2022.08.15" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">12<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">월</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Mon</span>
		                                	</button>
		                                	<button class="disabled" type="button" date-data="2022.08.16" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">13<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">화</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Tue</span>
		                                	</button>
		                                	<button class="disabled" type="button" date-data="2022.08.17" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">14<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">수</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Wed</span>
		                                	</button>
		                                	<button class="disabled" type="button" date-data="2022.08.18" month="7">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">15<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">목</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Thu</span>
		                                	</button>
		                                	<button class="disabled" type="button" date-data="2022.08.19" month="7" tabindex="-1">
		                                		<span class="ir">2022년 8월</span>
		                                		<em style="pointer-events:none;">16<span style="pointer-events:none;" class="ir">일</span></em>
		                                		<span class="day-kr" style="pointer-events:none;display:inline-block">금</span>
		                                		<span class="day-en" style="pointer-events:none;display:none">Fri</span>
		                                	</button>
	                                	</div>
	                               	</div>
	                            </div>
	
	                            <!-- 다음날짜 -->
	                            <button type="button" title="다음 날짜 보기" class="btn-next" disabled="true">
	                                <i class="iconset ico-cld-next"></i> <em>다음</em>
	                            </button>
	                            <!--// 다음날짜 -->
	
	                            <!-- 달력보기 -->
	                            <div class="bg-line">
	                                <input type="hidden" id="datePicker" value="2022.08.05" class="hasDatepicker">
	                                <button type="button" id="calendar" class="btn-calendar-large" title="달력보기"> 달력보기</button><!-- onclick="$('#datePicker').datepicker('show')" -->
	                            </div>
	                            <!--// 달력보기 -->
	                        </div>
	                    </div>
	                    <!--// time-schedule -->
	
	                    <!-- quick-reserve-area --> 
	                    <div class="quick-reserve-area">
	
	                        <!-- movie-choice : 영화 선택  -->
	                        <div class="movie-choice">
	                            <p class="tit">영화</p>
	
	                            <!-- list-area -->
	                            <div class="list-area">
	
	                                <!-- all : 전체 -->
	                                <div class="all-list">
	                                    <button type="button" class="btn-tab on" id="movieAll">전체</button>
	                                    <div class="list">
	                                        <div class="scroll m-scroll mCustomScrollbar _mCS_1" id="movieList">
	                                        	<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
	                                        		<div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
	                                        			<ul>
	                                        				<c:forEach items="${list}" var="list" varStatus="status">
	                                        					<li>
	                                        						<button type="button" id="choiceMovie" name="choiceMovie" class="btn" movie-nm="${list.tdmvMovieTitle}" onclick="goTheater('${list.tdmvSeq}')" movie-popup-at="N" movie-popup-no="0" form-at="Y">
			                                        					<span class="movie-grade 
			                                        						<c:choose>
			                                        							<c:when test="${list.tdmvAge eq 18}">small age-all</c:when>
			                                        							<c:when test="${list.tdmvAge eq 19}">small age-12</c:when>
			                                        							<c:when test="${list.tdmvAge eq 20}">small age-15</c:when>
			                                        							<c:when test="${list.tdmvAge eq 21}">small age-19</c:when>
			                                        						</c:choose>"></span>
			                                        					<i class="iconset ico-heart-small"></i>
			                                        					<span class="txt">${list.tdmvMovieTitle}</span>
	                                        						</button>
	                                       						</li>
	                                       					</c:forEach>	
	                                       				</ul>
	                                       			</div>
	                                       		</div>
	                                       	</div>			
	                                    </div>
	                                    <div class="other-list">
	                                    	<button type="button" class="btn-tab"></button>
	                                    </div>
	                                </div>
	                                <!--// all : 전체 -->
	                            </div>
	                            <!--// list-area -->
	                        </div>
	                        <!--// movie-choice : 영화 선택  -->
	
	                        <!-- theater-choice : 극장 선택  -->
	                        <div class="theater-choice">
	                            <div class="tit-area">
	                                <p class="tit">극장</p>
	                            </div>
	
	                            <!-- list-area -->
	                            <div class="list-area" id="brchTab">
	                            	<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('5')}"/>
	
	                                <!-- all-list : 전체 -->
	                                <div class="all-list">
	                                    <button type="button" class="btn-tab on">전체</button>
	                                    <div class="list">
	                                        <div class="scroll" id="brchList">
	                                       		<ul>
	                                       			<li>
														<c:forEach items="${listCodeRegion}" var="listRegion" varStatus="statusRegion">
		                                            		<button type="button" class="btn" id="10" >
	                                       						<span class="txt"><c:out value="${listRegion.cdName}"/></span>
		                                            		</button>
                                     					</c:forEach>
			                                            <div class="depth on">
				                                            <div class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4">
				                                            	<div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
				                                            		<div id="mCSB_4_container" class="mCSB_container" style="position: relative; top: 0; left: 0;" dir="ltr">
						                                            	
						                                            	<ul id="selectTheater"></ul>
						                                            	
							                                        </div>	
						                                         	<div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;">
						                                         		<div class="mCSB_draggerContainer">
						                                         			<div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px; height: 192px; max-height: 310px;">
						                                         				<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
						                                         			</div>
						                                         			<div class="mCSB_draggerRail"></div>
						                                         		</div>
						                                         	</div>
						                                         </div>
					                                        </div>
				                                        </div>
		                                        	</li>
	                                       		</ul> 	
	                                       	</div>
	                                   	</div>
	                               	</div>
	                                <!--// all-list : 전체 -->
	
	                                <!-- other-list : 특별관 -->
	                                <div class="other-list">
	                                    <button type="button" class="btn-tab"></button>
	                                </div>
	                               <!--// other-list : 특별관 -->
	                           	</div>
	                            <!--// list-area -->
	                       	</div>
	                        <!--// theater-choice : 영화관 선택  -->
	
	                        <!--// movie-schedule-area : 시간표 출력 영역-->
							<div class="time-choice">
	                       		<div class="tit-area">
	                             	<p class="tit">시간</p>
	
	                              	<div class="right legend">
	                                  <i class="iconset ico-sun" title="조조"></i> 조조
	                             	</div>
		                         </div>
	
	                            <!-- movie-schedule-area : 시간표 출력 영역-->
	                            <div class="movie-schedule-area">
	
	                                <!-- 영화, 영화관 선택 했을때 -->
	                            <!--// movie-schedule-area : 시간표 출력 영역-->
									<div class="result">
		                            	<div class="scroll m-scroll mCustomScrollbar _mCS_18 mCS_no_scrollbar" id="playScheduleList" style="">
		                            		<div id="mCSB_18" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
		                            			<div id="mCSB_18_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
		                            				<ul id="selectTime"></ul>
		          								</div>
		          								<div id="mCSB_18_scrollbar_vertical" class="mCSB_scrollTools mCSB_18_scrollbar mCS-light mCSB_scrollTools_vertical">
		          									<div class="mCSB_draggerContainer">
		          										<div id="mCSB_18_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; height: 1390px; max-height: 420px; top: 0px;">
		          											<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
		          										</div>
		          										<div class="mCSB_draggerRail"></div>
		          									</div>
		          								</div>
		      								</div>
		   								</div>
		                            </div>
	                        	</div>
	                        </div>
	                        <!--// time-choice : 상영시간표 선택 -->
	                    </div>
	                    <!--// quick-reserve-area -->
	                	</div>
	            	</div>
           		</div>
        	</form>
		</div>
		
	<!-- footer-s -->
	<%@include file="../../../common/user/includeV1/footer.jsp" %>
	<!-- footer-e -->

</div>
<!-- body wrap -->

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->
 
 <script>
	var selectTheater = $("#selectTheater");
	
	goTheater = function(tdmvSeq){
		var j =$("button[name='choiceMovie']").length;
		
		for(var k=0; k<j; k++){
			document.getElementsByName('choiceMovie')[k].classList.remove('on');
			
		}
		document.getElementsByName('choiceMovie')[tdmvSeq-1].classList.add('on');
		$("#tdmvSeq").attr("value", tdmvSeq);
		
		$.ajax({
			async: true
			,cach: false
			,type: "post"
			,url: "/timetable/selectTheater"
			,data: 	{"tdmvSeq" : tdmvSeq}
			,success: function(response) {
				if(response.rt=="success"){
					var txt="";
					for(var i=0; i<response.list.length; i++) {
						txt += '<li>';
						txt += '	<button type="button" id="btn'+response.list[i].tdthSeq+'" onclick="suntack('+response.list[i].tdthSeq+')" name="theaterBtn">'+response.list[i].tdthBranch+'</button>';
						txt += '</li>';
					}
					selectTheater.html(txt);
					$("#tdmvSeq").attr("value", tdmvSeq);
				} else {
					alert("list가 null 입니다.");
				}
			}
			,error : function(){
				alert("error");
			}
		});
		
	}

</script>


 <script>
	var selectTime = $("#selectTime");
	suntack = function(index){
		var j = $("button[name='theaterBtn']").length;
		
		for(var k=0; k<j; k++ ) {
			document.getElementsByName('theaterBtn')[k].classList.remove('on');
		}
		document.getElementById('btn'+index).classList.add('on');
		$("#tdthSeq").attr("value", index);
		
		$.ajax({
			async: true
			,cach: false
			,type: "post"
			,dataType: "json" 
			,url: "/timetable/selectTime"
			,data: 	{ tdmvSeq : $("#tdmvSeq").val(), tdthSeq : $("#tdthSeq").val() }
			,success: function(response) {
				if(response.rt=="success"){
					
					var txt="";
					
					for(var i=0; i<response.list.length; i++) {
						txt += '<li>';
						txt +=	'<button type="button" class="btn" id="btn'+i+'"onclick="goSeat('+response.list[i].tdttSeq+')">';
						txt +='<div class="legend"></div>';
						txt +=	'<span class="time">';
						txt +=		'<strong title="상영 시작">'+response.list[i].tdttShowTime.substring(10, 16)+'</strong>';
						txt +=		'<em title="상영 종료">~'+response.list[i].tdttEndTime.substring(10,16)+'</em>';
						txt +=	'</span>';
						txt +=	'<span class="title">';
						txt +=		'<strong title=>'+response.list[i].tdmvMovieTitle+'</strong>';
						txt +=		'<em>2D(자막)</em>';
						txt +=	'</span>';
						txt +=	'<div class="info">';
						txt +=		'<span class="theater" title="극장">'+response.list[i].tdthBranch+'<br>'+response.list[i].tdpxPlexName+'</span>';
						txt +=		'<span class="seat">';
						txt +=			'<strong class="now" title="잔여 좌석">'+response.list[i].tdpxTotalSeatNum+'</strong>';
						txt +=			'<span>/</span>';
						txt +=			'<em class="all" title="전체 좌석">'+response.list[i].tdpxTotalSeatNum+'</em>';
						txt +=		'</span>';
						txt +='</div>';
						txt +='</button>';
						txt +='</li>';
					}
					selectTime.html(txt);
					
				} else {
					alert("list가 null 입니다.");
				}
			}
			,error : function(){
				alert("error");
			}
		});
	} 

</script>

<script>
	var goUrlSeat = "/timetable/seatSelect";
	var seq = $("#tdttSeq");
	
	var form=$("form[name=formList]");
	
	goSeat=function(tdttSeq){
		seq.val(tdttSeq);
		form.attr("action", goUrlSeat).submit();
	}
</script>




</body>
</html>	
	