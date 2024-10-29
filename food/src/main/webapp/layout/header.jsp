<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
	
	<div class="header">
<!-- 	  <img class="logo" src="../static/img/logo.png" /> -->
	  <img class="logo" src="<%= root %>/static/img/logo.png"  >
	  <div class="search">
	    <div class="fieldset">
	      <img class="search-img" src="<%= root %>/static/img/search_bar.png" />
	      <div class="input">
	        <div class="search-box">
	          <input type="text" placeholder="검색어를 입력하세요." class="search-text">
	        </div>
	      </div>
	    </div>
	  </div>
	  	<c:if test="${param.login == 0 }">
			<div class="navigation">
				<div class="log-in"><a href="<%=root%>/login.jsp">로그인</a></div>
				<div class="join-bw"><a href="<%=root%>/signup.jsp">회원가입</a></div>
			</div>
		</c:if>
		<c:if test = "${param.login == 1 }">
	  		<a href="<%= root %>/myPage.jsp"><img class="mypage" src="<%= root %>/static/img/mypage.png" /></a>
		</c:if>	
		<c:if test = "${param.login == 2 }">
	  		<a href="<%= root %>/invenBrand.jsp"><img class="mypage" src="<%= root %>/static/img/mypage.png" /></a>
		</c:if>	
	</div>

	
</header>