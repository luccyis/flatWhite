<%@ page language="java" pageEncoding="UTF-8"%> 

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shDelNy" value="<c:out value="${vo.shDelNy}"/>"/>
<input type="hidden" name="shOptionDate" value="<c:out value="${vo.shOptionDate}"/>"/>

<input type="hidden" name="shDateStart" value="<c:out value="${vo.shDateStart}"/>"/>
<input type="hidden" name="shDateEnd" value="<c:out value="${vo.shDateEnd}"/>"/>

<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>

<input type="hidden" name="tdbkSeq" value="<c:out value="${vo.tdbkSeq}"/>"/>
<input type="hidden" name="tdbsSeq" value="<c:out value="${vo.tdbsSeq}"/>"/>
<input type="hidden" name="tdmvSeq" value="<c:out value="${vo.tdmvSeq}"/>"/>
<input type="hidden" name="ifmmSeq" value="<c:out value="${vo.ifmmSeq}"/>"/>
<input type="hidden" name="tdttSeq" value="<c:out value="${vo.tdttSeq}"/>"/>
<input type="hidden" name="tdthSeq" value="<c:out value="${vo.tdthSeq}"/>"/>
<input type="hidden" name="tdpxSeq" value="<c:out value="${vo.tdpxSeq}"/>"/>
