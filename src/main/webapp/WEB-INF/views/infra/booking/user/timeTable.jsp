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
                	<a href="/booking/timeTable" title="예매 페이지로 이동">예매</a>
                	<a href="/booking/timeTable" title="빠른예매 페이지로 이동">빠른예매</a>
				</div>
			</div>
		</div>	
		
		<form method="post" name="formList" id="formList">
        <input type="hidden" name="tdmvSeq">
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
		                                	<em style="pointer-events:none;">4<span style="pointer-events:none;" class="ir">일</span></em>
		                                	<span class="day-kr" style="pointer-events:none;display:inline-block">목</span>
		                                	<span class="day-en" style="pointer-events:none;display:none">Thu</span>
	                                	</button>
	                                	<button class="on" type="button" date-data="2022.08.05" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">5<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">오늘</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Fri</span>
	                                	</button>
	                                	<button class="sat" type="button" date-data="2022.08.06" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">6<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">내일</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Sat</span>
	                                	</button>
	                                		<button class="holi" type="button" date-data="2022.08.07" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">7<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">일</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Sun</span>
	                                	</button>
	                                	<button class="" type="button" date-data="2022.08.08" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">8<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">월</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Mon</span>
	                                	</button>
	                                	<button class="" type="button" date-data="2022.08.09" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">9<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">화</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Tue</span>
	                                	</button>
	                                		<button class="disabled" type="button" date-data="2022.08.10" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">10<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">수</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Wed</span>
	                                	</button>
	                                		<button class="disabled" type="button" date-data="2022.08.11" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">11<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">목</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Thu</span>
	                                	</button>
	                                	<button class="disabled" type="button" date-data="2022.08.12" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">12<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">금</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Fri</span>
	                                	</button>
	                                	<button class="sat" type="button" date-data="2022.08.13" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">13<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">토</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Sat</span>
	                                	</button>
	                                	<button class="disabled holi" type="button" date-data="2022.08.14" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">14<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">일</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Sun</span>
	                                	</button>
	                                	<button class="disabled" type="button" date-data="2022.08.15" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">15<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">월</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Mon</span>
	                                	</button>
	                                	<button class="disabled" type="button" date-data="2022.08.16" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">16<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">화</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Tue</span>
	                                	</button>
	                                	<button class="disabled" type="button" date-data="2022.08.17" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">17<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">수</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Wed</span>
	                                	</button>
	                                	<button class="disabled" type="button" date-data="2022.08.18" month="7">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">18<span style="pointer-events:none;" class="ir">일</span></em>
	                                		<span class="day-kr" style="pointer-events:none;display:inline-block">목</span>
	                                		<span class="day-en" style="pointer-events:none;display:none">Thu</span>
	                                	</button>
	                                	<button class="disabled" type="button" date-data="2022.08.19" month="7" tabindex="-1">
	                                		<span class="ir">2022년 8월</span>
	                                		<em style="pointer-events:none;">19<span style="pointer-events:none;" class="ir">일</span></em>
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
                                <button type="button" id="calendar" onclick="$('#datePicker').datepicker('show')" class="btn-calendar-large" title="달력보기"> 달력보기</button>

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
                                        						<button type="button" class="btn on" movie-nm="${list.tdmvMovieTitle}"  img-path="" movie-popup-at="N" movie-popup-no="0" form-at="Y">
	                                        					<span class="movie-grade small age-12">${list.tdmvAge}</span>
	                                        					<i class="iconset ico-heart-small">보고싶어 설정안함</i>
	                                        					<span class="txt">${list.tdmvMovieTitle}</span>
                                        					</button>
                                       						</li>
                                       					</c:forEach>	
                                       					<li>
                                        					<button type="button" class="btn" movie-nm="헤어질 결심" movie-no="22022900" img-path="" movie-popup-at="N" movie-popup-no="0" form-at="Y">
	                                        					<span class="movie-grade small age-15">15세이상관람가</span>
	                                        					<i class="iconset ico-heart-small">보고싶어 설정안함</i>
	                                        					<span class="txt">헤어질 결심</span>
                                        					</button>
                                       					</li>
                                       					<li>
                                        					<button type="button" class="btn" movie-nm="토르: 러브 앤 썬더" movie-no="22028200" img-path="" movie-popup-at="N" movie-popup-no="0" form-at="Y">
	                                        					<span class="movie-grade small age-12">12세이상관람가</span>
	                                        					<i class="iconset ico-heart-small">보고싶어 설정안함</i>
	                                        					<span class="txt">토르: 러브 앤 썬더</span>
                                        					</button>
                                       					</li>
                                       					<li>
	                                       					<button type="button" class="btn" movie-nm="에프터 양" movie-no="21020400" img-path="" movie-popup-at="N" movie-popup-no="0" form-at="Y">
		                                       					<span class="movie-grade small age-all">전체관람가</span>
		                                       					<i class="iconset ico-heart-small">보고싶어 설정안함</i>
		                                       					<span class="txt">애프터 양</span>
	                                       					</button>
                                       					</li>
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
                            <!-- view-area -->
                            <div class="view-area">

                                <!-- 영화 선택 하지 않았을 때 -->
                                <div class="choice-all" id="choiceMovieNone" style="display: none;">
                                    <strong>모든영화</strong>
                                    <span>목록에서 영화를 선택하세요.</span>
                                </div>

                                <!-- 영화를 한개라도 선택했을 때 -->
                                <div class="choice-list" id="choiceMovieList" style="display: block;">
                                    <!-- 비어있는 영역 -->
                                    <div class="bg">
	                                    <div class="wrap">    
	                                    	<div class="img">
	                                    		<img src="/resources/images/poster-topgun.jpg" alt="탑건: 매버릭" movie-no="22018400" onerror="noImg(this);">
	                                   		</div>    
	                                   		<button type="button" class="del" onclick="fn_deleteMovieChoice('22018400')">삭제</button>
	                               		</div>
                               		</div>
                                    <div class="bg">
                                    </div>
                                    <div class="bg">
                                    </div>
                                </div>
                            </div>
                            <!--// view-area -->
                        </div>
                        <!--// movie-choice : 영화 선택  -->

                        <!-- theater-choice : 극장 선택  -->
                        <div class="theater-choice">
                            <div class="tit-area">
                                <p class="tit">극장</p>
                            </div>

                            <!-- list-area -->
                            <div class="list-area" id="brchTab">

                                <!-- all-list : 전체 -->
                                <div class="all-list">
                                    <button type="button" class="btn-tab on">전체</button>
                                    <div class="list">
                                        <div class="scroll" id="brchList">
                                        	<ul>
                                        		<li>
		                                            <button type="button" class="btn on" id="10">
			                                            <span calss="txt">서울(3)</span>
		                                            </button>
		                                            <div class="depth on">
			                                            <div class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4">
			                                            	<div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
			                                            		<div id="mCSB_4_container" class="mCSB_container" style="position: relative; top: 0; left: 0;" dir="ltr">
					                                            	<ul>
							                                            <li>
							                                            	<button id="btn" type="button" brch-no="1003" brch-nm="동대문" brch-eng-nm="Dong Dae Moon" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="962" class="on">동대문</button>
							                                           	</li>
							                                            <li>
							                                            	<button id="btn" type="button" brch-no="1331" brch-nm="성수" brch-eng-nm="SEOUNGSU" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="1006">성수</button>
							                                            </li>
							                                            <li>
							                                            	<button id="btn" type="button" brch-no="1351" brch-nm="코엑스" brch-eng-nm="COEX" form-at="Y" area-cd="10" area-cd-nm="서울" spclb-yn="N" brch-bokd-unable-at="N" brch-popup-at="Y" brch-popup-no="954">코엑스</button>
							                                           	</li>
						                                         	</ul>
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

                            <!-- view-area -->
                            <div class="view-area">

                                <!-- 영화관 선택 하지 않았을 때 -->
                                <div class="choice-all" id="choiceBrchNone" style="display: none;">
                                    <strong>전체극장</strong>
                                    <span>목록에서 극장을 선택하세요.</span>
                                </div>

                                <!-- 영화관을 한개라도 선택 했을때 -->
                                <div class="choice-list" id="choiceBrchList" style="display: block;">
                                    <div class="bg">
	                                    <div class="wrap">
	                                    	<p class="txt">동대문
	                                    		<button type="button" class="del" onclick="fn_deleteBrchChoice('1351', '10')" brch-no="1351" area-cd="10" spclb-yn="N" theab-kind-cd="10">삭제</button>
	                                    	</p>
	                                   	</div>
                                   	</div>
                                    <div class="bg"></div>
                                    <div class="bg"></div>
                                </div>
                            </div>
                            <!--// view-area -->


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

                            <!-- hour-schedule : 시간 선택  : 00~30 시-->
                            <div class="hour-schedule">
                                <button type="button" class="btn-prev-time">이전 시간 보기</button>

                                <div class="wrap">
                                    <div class="view" style="position: absolute; width: 1015px; transition: none 0s ease 0s; left: -490px;">
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">00</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">01</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">02</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">03</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">04</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">05</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">06</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">07</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">08</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">09</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">10</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">11</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">12</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">13</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">14</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">15</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">16</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">17</button>
                                        <button type="button" class="hour on" style="opacity: 1;">18</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">19</button>
                                        <button type="button" class="hour" style="opacity: 1;">20</button>
                                        <button type="button" class="hour" style="opacity: 0.5" disabled="disabled">21</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">22</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">23</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">24</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">25</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">26</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">27</button>
                                        <button type="button" class="hour" disabled="disabled" style="opacity: 0.5">28</button>
                                        
                                    </div>
                                </div>

                                <button type="button" class="btn-next-time">다음 시간 보기</button>
                            </div>
                            <!--// hour-schedule : 시간 선택  : 00~30 시-->

                            <!-- movie-schedule-area : 시간표 출력 영역-->
                            <div class="movie-schedule-area">

                                <!-- 영화, 영화관 선택 안했을때 -->
                                <!---->
                                <div class="no-result" id="playScheduleNonList" style="display: none;">
                                    <i class="iconset ico-movie-time"></i>

                                    <p class="txt">
                                        영화와 극장을 선택하시면<br>
                                        상영시간표를 비교하여 볼 수 있습니다.
                                    </p>
                                </div>


                                <!-- 영화, 영화관 선택 했을때 -->
                            <!--// movie-schedule-area : 시간표 출력 영역-->
								<div class="result">
	                            	<div class="scroll m-scroll mCustomScrollbar _mCS_18 mCS_no_scrollbar" id="playScheduleList" style="">
	                            		<div id="mCSB_18" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
	                            			<div id="mCSB_18_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
	                            				<ul>
	                            					<li>
	                            						<button type="button" class="btn" id="2208051003055" onclick="location.href='/booking/seatSelect'"
	                            							play-start-time="1815" play-de="20220805" play-seq="4" rpst-movie-no="22018401" brch-no="1003" theab-no="03" play-schdl-no="2208051003055" rest-seat-cnt="201" ctts-ty-div-cd="MVCT01" theab-popup-at="Y" theab-popup-no="1290">
		                            						<div class="legend"></div>
		                            							<span class="time">
			                            							<strong title="상영 시작">18:15</strong>
			                            							<em title="상영 종료">~20:35</em>
		                            							</span>
								                            	<span class="title">
								                            		<strong title="탑건: 매버릭">탑건: 매버릭</strong>
								                            		<em>2D(자막)</em>
								                            	</span>
		                            							<div class="info">
		                            								<span class="theater" title="극장">동대문<br>3관</span>
		                            								<span class="seat">
			                            								<strong class="now" title="잔여 좌석">201</strong>
			                            								<span>/</span>
			                            								<em class="all" title="전체 좌석">240</em>
		                            								</span>
		                            							</div>
	                            						</button>
	                            					</li>
	                            					<li>
	                            						<button type="button" class="btn" id="2208051003054" play-start-time="2055" play-de="20220805" play-seq="5" rpst-movie-no="22018401" brch-no="1003" theab-no="03" play-schdl-no="2208051003054" rest-seat-cnt="224" ctts-ty-div-cd="MVCT01" theab-popup-at="Y" theab-popup-no="1290">
		                         							<div class="legend"></div>
		                         							<span class="time">
			                         							<strong title="상영 시작">20:55</strong>
			                         							<em title="상영 종료">~23:15</em>
		                         							</span>
		                         							<span class="title">
			                         							<strong title="탑건: 매버릭">탑건: 매버릭</strong>
			                         							<em>2D(자막)</em>
		                         							</span>
		                         							<div class="info">
		                         								<span class="theater" title="극장">동대문<br>3관</span>
		                         								<span class="seat">
			                         								<strong class="now" title="잔여 좌석">224</strong>
			                         								<span>/</span>
			                         								<em class="all" title="전체 좌석">240</em>
		                         								</span>
		                       								</div>
	                       								</button>
	                   								</li>
	               								</ul>
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

<form id="mainForm"></form>
<div class="normalStyle" style="display:none;position:fixed;top:0;left:0;background:#000;opacity:0.7;text-indent:-9999px;width:100%;height:100%;z-index:100;">닫기</div>
<div class="alertStyle" style="display:none;position:fixed;top:0px;left:0px;background:#000;opacity:0.7;width:100%;height:100%;z-index:5005;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- script-s -->
<%@include file="../../../common/user/includeV1/script.jsp" %>
<!-- scripte-e -->

</body>
</html>	
	