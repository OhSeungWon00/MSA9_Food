<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/common.jsp" %>

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
	  <div class="navigation">
	    <div class="log-in">로그인</div>
	    <div class="join-bw">회원가입</div>
	  </div>
	  	<img class="mypage" src="<%= root %>/static/img/mypage.png" />
	</div>

	
</header>