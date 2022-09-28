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
		
			<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
            <div class="quick-reserve">
            	<div class="tit-util">
            		<h2 class="tit">빠른예매</h2>
            		<div id="btnLangChg" class="right btn-ticket" style="display:none">
                        <button type="button" class="button gray-line" onclick="parent.setLangChg()">English</button>
                    </div>
            	</div>
            
                <div class="seat-select-section">
                    <div class="seat-section">
                        <div class="tit-util">
                            <h3 class="tit small"> 관람인원선택</h3>
                            <div class="right">
                                <button type="button" class="button gray-line small" id="seatMemberCntInit"> <i class="iconset ico-reset-small"></i>초기화</button>
                            </div>
                        </div>
                        <div class="seat-area">
                            <div class="seat-count" style="min-height: 52px">
                            	<div class="cell">
                            		<p class="txt">성인</p>
                            		<div class="count">
                            			<button type="button" class="down" title="성인 좌석 선택 감소">-</button>
                            			<div class="number">
                            				<button type="button" class="now" title="성인 현재 좌석 선택 수" ticketgrpcd="TKA">2</button>
                            				<ul class="num-choice">
                            					<li>
                            						<button type="button" class="btn">0</button>
                            					</li>
                            				</ul>
                           				</div>
                            			<button type="button" class="up" title="성인 좌석 선택 증가">+</button>
                            		</div>
                            	</div>
                            	<div class="cell">
                            		<p class="txt">청소년</p>
                            		<div class="count">
                            			<button type="button" class="down" title="청소년 좌석 선택 감소">-</button>
                            			<div class="number">
                            				<button type="button" class="now" title="청소년 현재 좌석 선택 수" ticketgrpcd="TKY">0</button>
                            				<ul class="num-choice">
                            					<li>
                            						<button type="button" class="btn on">0</button>
                            					</li>
                            				</ul>
                            			</div>
                            			<button type="button" class="up" title="청소년 좌석 선택 증가">+</button>
                            		</div>
                            	</div>
                            </div>
                            <div class="seat-layout">
                                <div class="alert" style="display: none;"></div>
                                <div class="seat-count-before off" style="top: 0px">관람인원을 선택하십시요</div>
                                <div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
                                	<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0">
                                		<div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position: relative; top: 0px; left: 0px; height: 270px;" dir="ltr">
                                    		<div id="seatLayout" style="width: 100%; height: 270px;">
                                        		<img src="/resources/images/theaterScreen.png" alt="screen" style="position: absolute; left: 62px; top: 10px;" class="mCS_img_loaded">
                                        			<div class'row'="">  
                                        				<button type="button" class="btn-seat-row" title="A 행" style="position:absolute; left:330px; top:50px;">A</button>
		                                        		<button type="button" title="A3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:351px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100401" rownm="A" seatno="3" seatchoidircval="0" seatchoigrpno="2" seatchoigrpnm="A2" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="A4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:371px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100501" rownm="A" seatno="4" seatchoidircval="0" seatchoigrpno="2" seatchoigrpnm="A2" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        			<button type="button" title="A5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:391px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100601" rownm="A" seatno="5" seatchoidircval="0" seatchoigrpno="2" seatchoigrpnm="A2" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="A6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:411px; top:50px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00100701" rownm="A" seatno="6" seatchoidircval="0" seatchoigrpno="2" seatchoigrpnm="A2" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" class="btn-seat-row" title="B 행" style="position:absolute; left:330px; top:72px;">B</button>
		                                        		<button type="button" title="B3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:351px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200401" rownm="B" seatno="3" seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="B4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:371px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200501" rownm="B" seatno="4" seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="B5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:391px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200601" rownm="B" seatno="5" seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="B6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:411px; top:70px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00200701" rownm="B" seatno="6" seatchoidircval="0" seatchoigrpno="5" seatchoigrpnm="B5" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
                                        				<button type="button" class="btn-seat-row" title="C 행" style="position:absolute; left:330px; top:92px;">C</button>
		                                        		<button type="button" title="C3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:351px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300401" rownm="C" seatno="3" seatchoidircval="0" seatchoigrpno="8" seatchoigrpnm="C8" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
	                                        			<button type="button" title="C4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:371px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300501" rownm="C" seatno="4" seatchoidircval="0" seatchoigrpno="8" seatchoigrpnm="C8" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
	                                        			<button type="button" title="C5 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:391px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300601" rownm="C" seatno="5" seatchoidircval="0" seatchoigrpno="8" seatchoigrpnm="C8" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="C6 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:411px; top:90px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00300701" rownm="C" seatno="6" seatchoidircval="0" seatchoigrpno="8" seatchoigrpnm="C8" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" class="btn-seat-row" title="D 행" style="position:absolute; left:330px; top:112px;">D</button>
	                                        			<button type="button" title="D3 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:351px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400401" rownm="D" seatno="3" seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="D11" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="D4 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:371px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400501" rownm="D" seatno="4" seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="D11" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="D5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:391px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400601" rownm="D" seatno="5" seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="D11" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="D6 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:411px; top:110px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00400701" rownm="D" seatno="6" seatchoidircval="0" seatchoigrpno="11" seatchoigrpnm="D11" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" class="btn-seat-row" title="E 행" style="position:absolute; left:330px; top:132px;">E</button>
		                                        		<button type="button" title="E3 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:351px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500401" rownm="E" seatno="3" seatchoidircval="0" seatchoigrpno="14" seatchoigrpnm="E14" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="E4 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:371px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500501" rownm="E" seatno="4" seatchoidircval="0" seatchoigrpno="14" seatchoigrpnm="E14" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="E5 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:391px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500601" rownm="E" seatno="5" seatchoidircval="0" seatchoigrpno="14" seatchoigrpnm="E14" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="E6 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:411px; top:130px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00500701" rownm="E" seatno="6" seatchoidircval="0" seatchoigrpno="14" seatchoigrpnm="E14" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
	                                        			<button type="button" class="btn-seat-row" title="F 행" style="position:absolute; left:330px; top:152px;">F</button>
		                                        		<button type="button" title="F3 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:351px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600401" rownm="F" seatno="3" seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="F17" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="F4 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:371px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600501" rownm="F" seatno="4" seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="F17" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="F5 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:391px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600601" rownm="F" seatno="5" seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="F17" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="F6 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:411px; top:150px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00600701" rownm="F" seatno="6" seatchoidircval="0" seatchoigrpno="17" seatchoigrpnm="F17" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" class="btn-seat-row" title="G 행" style="position:absolute; left:330px; top:172px;">G</button>
		                                        		<button type="button" title="G3(스탠다드/선택됨)" class="jq-tooltip seat-condition standard common on choice" style="position:absolute; left:351px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700401" rownm="G" seatno="3" seatchoidircval="0" seatchoigrpno="20" seatchoigrpnm="G20" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1" seatnextuniqno="00700501" selected="selected">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">선택됨</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="G4(스탠다드/선택됨)" class="jq-tooltip seat-condition standard common on choice" style="position:absolute; left:371px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700501" rownm="G" seatno="4" seatchoidircval="0" seatchoigrpno="20" seatchoigrpnm="G20" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1" seatnextuniqno="00700401" selected="selected">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">선택됨</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
	                                        			<button type="button" title="G5 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:391px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700601" rownm="G" seatno="5" seatchoidircval="0" seatchoigrpno="20" seatchoigrpnm="G20" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="G6 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:411px; top:170px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00700701" rownm="G" seatno="6" seatchoidircval="0" seatchoigrpno="20" seatchoigrpnm="G20" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" class="btn-seat-row" title="H 행" style="position:absolute; left:330px; top:190px;">H</button>
		                                        		<button type="button" title="H3 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:351px; top:190px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800401" rownm="H" seatno="3" seatchoidircval="0" seatchoigrpno="23" seatchoigrpnm="H23" seatchoirowcnt="4" seatchoigrpseq="1" seattocnt="1">
		                                        			<span class="num">1</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="H4 (스탠다드/일반)" class="jq-tooltip seat-condition standard common view" style="position:absolute; left:371px; top:190px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800501" rownm="H" seatno="4" seatchoidircval="0" seatchoigrpno="23" seatchoigrpnm="H23" seatchoirowcnt="4" seatchoigrpseq="2" seattocnt="1">
		                                        			<span class="num">2</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="H5 (스탠다드/일반)" class="jq-tooltip seat-condition standard common" style="position:absolute; left:391px; top:190px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800601" rownm="H" seatno="5" seatchoidircval="0" seatchoigrpno="23" seatchoigrpnm="H23" seatchoirowcnt="4" seatchoigrpseq="3" seattocnt="1">
		                                        			<span class="num">3</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
		                                        		<button type="button" title="H6 (스탠다드/일반)" class="jq-tooltip seat-condition standard finish" style="position:absolute; left:411px; top:190px; width:20px;" seatclasscd="GERN_CLS" seatzonecd="GERN_ZONE" seatuniqno="00800701" rownm="H" seatno="6" seatchoidircval="0" seatchoigrpno="23" seatchoigrpnm="H23" seatchoirowcnt="4" seatchoigrpseq="4" seattocnt="1">
		                                        			<span class="num">4</span>
		                                        			<span class="kind">스탠다드</span>
		                                        			<span class="condition">판매가능</span>
		                                        			<span class="rank">일반</span>
		                                        		</button>
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
                                <span class="movie-grade small age-all age-12">12세이상관람가</span>
                                <p class="tit">탑건: 매버릭</p>
                                <p class="cate">2D(자막)</p>
                            </div>
                            <div class="info-area">
                                <p class="theater">코엑스</p>
                                <p class="special">더부티크 105호</p>
                                <p class="date"><span>2022.08.02</span><em>(수)</em></p>
                                <div class="other-time">
                                    <button type="button" class="now">12:00~14:20<i class="arr"></i></button>
                                </div>
                                <p class="poster">
                                    <img src="/resources/images/poster1.jpg" onerror="noImg(this);" alt="탑건: 매버릭">
                                </p>
                            </div>
                            <div class="choice-seat-area">
                                <div class="legend">
                                    <ul class="list"> <li><div class="seat-condition choice" title="선택한 좌석"></div>
                                    <em>선택</em></li> <li><div class="seat-condition finish" title="예매 완료"></div> <em>예매완료</em></li> <li><div class="seat-condition impossible" title="선택 불가"></div> <em>선택불가</em></li> <li><div class="seat-condition common" title="일반"></div> <em> 일반</em></li></ul>
                                </div>
                                <div class="seat-num">
                                    <p class="tit">선택좌석</p>
                                    <div class="my-seat">
                                        <div class="seat choice" title="선택한 좌석">G1</div>
                                        <div class="seat choice" title="선택한 좌석">G2</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                        <div class="seat all" title="구매가능 좌석">-</div>
                                    </div>
                                </div>
                            </div>
                            <div class="pay-area">
                                <p class="count"><span>성인 <em>2</em></span></p>
                                <div class="pay">
                                    <p class="tit">최종결제금액</p>
                                    <div class="money">
                                        <em>30,000</em> <span>원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group">
                                <a href="/booking/timeTable" class="button" id="pagePrevious" title="이전">이전</a>
                                <a href="/booking/bookingPay" class="button active" id="pageNext" title="다음">다음</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
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