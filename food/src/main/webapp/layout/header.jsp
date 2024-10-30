<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
	<div class="header">
<!-- 	  <img class="logo" src="../static/img/logo.png" /> -->
	  <img class="logo" src="<%= root %>/static/img/logo.png" onclick="window.location.href='<%= root %>/index.jsp'" style="cursor: pointer;">
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
	  <div class="navigation">
	    <div class="log-in"><a href="<%= root %>/login.jsp">로그인</a></div>
	    <div class="join-bw"><a href="<%= root %>/signup.jsp">회원가입</a></div>
	  </div>
	  	<img class="mypage" src="<%= root %>/static/img/mypage.png" onclick="window.location.href='<%= root %>/myPage.jsp'"/>
	</div>
</header>