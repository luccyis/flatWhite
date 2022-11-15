<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

	
			
				
				<c:choose>	
					<c:when test="${fn:length(list) eq 0}">
						<div class="movie-list-no-result" id="noDataDiv" style="">
							<p>현재 상영중인 영화가 없습니다.</p>
						</div>
					</c:when>
					<c:otherwise>	
						<c:forEach items="${list}" var="list" varStatus="status">
							<div class="movie-list">
								<ol class="list" id="movieList">
									<li tabindex="0" class="no-img" name="movieCard">
										<div class="movie-list-info">    
												<p class="rank" style=""><c:out value="${list.tdmvRank}"/><span class="ir">위</span></p>
											<a href="javascript: goView('${list.tdmvSeq}')">    
												<img src="${list.upPath}${list.uuIdName}" alt="${list.tdmvMovieTitle}" class="poster lozad">  
											</a>  
							  				<div class="movie-score" style="opacity: 0;">        
												<a class="wrap movieBtn" data-no="22023000" title="">            
													<div class="summary">
														<c:out value="${list.tdmvStory}"/>
													</div>            
													<div class="my-score big">                
														<div class="preview">                    
															<p class="tit">관람평</p>                   
															<p class="number"><c:out value="${list.tdmvAudienceScore}"/><span class="ir">점</span></p>                
														</div>            
													</div>        
												</a>    
											</div>
										</div>
										<div class="tit-area">    
											<p class="movie-grade
												<c:choose>
													<c:when test="${list.tdmvAge eq 18}">small age-all</c:when>
		                            				<c:when test="${list.tdmvAge eq 19}">small age-12</c:when>
		                            				<c:when test="${list.tdmvAge eq 20}">small age-15</c:when>
		                            				<c:when test="${list.tdmvAge eq 21}">small age-19</c:when>	
												</c:choose>
											">,</p>    
											<p title="${list.tdmvMovieTitle}" class="tit"><c:out value="${list.tdmvMovieTitle}"/></p>
										</div>
										<c:choose>
											<c:when test="${list.tdmvState eq 1}">
												<div class="rate-date">    
													<span class="rate">관람평 <c:out value="${list.tdmvAudienceScore}"/></span>    
													<span class="date">개봉일 <c:out value="${list.tdmvReleaseDate}"/></span>
												</div>
												<div class="btn-util">    
													<button type="button" class="button btn-like" data-no="22023000">
														<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> 
														<span><c:out value="${list.tdmvLiked}"/></span>
													</button>    
													<div class="case movieStat4" style="">        
														<a href="/timetable/choiceMovie" class="button purple bokdBtn" data-no="22022900" title="영화 예매하기">예매</a>  
										  			</div>
										  		</div>
											</c:when>
											<c:otherwise>
													<div class="rate-date">    
														<span class="rate">관람평 </span>    
														<span class="date">상영예정</span>
													</div>
													<div class="btn-util">    
														<button type="button" class="button btn-like" data-no="22023000">
															<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> 
															<span><c:out value="${list.tdmvLiked}"/></span>
														</button>  
														<p class="txt movieStat1" style="">상영예정</p>    
												    </div>
											</c:otherwise>
										</c:choose>
						  			</li>
								</ol>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>		

<script>
	var goUrlView = "/movie/view";
	var seq = $("input:hidden[name=tdmvSeq]");
	
	var form = $("form[name=formList]");
	
	goView = function(tdmvSeq){
		seq.val(tdmvSeq);
		form.attr("action",goUrlView).submit();
	}

</script>
	
</body>
</html>