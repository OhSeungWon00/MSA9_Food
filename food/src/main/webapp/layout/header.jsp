<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String login = request.getParameter("login");
	System.out.println("login : " + login);
%>
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
	  <!-- 내비게이션 및 로그인/회원가입 -->
        <div class="navigation">
            <!-- login 값이 2일 때 myPage 이미지만 표시 -->
            <c:if test="${param.login == 2}">
            	<img class="mypage" src="<%= root %>/static/img/mypage.png" onclick="window.location.href='<%= root %>/myPage.jsp'"/>
            </c:if>

            <!-- login 값이 1일 때 별도의 이미지 표시 -->
            <c:if test="${param.login == 1}">
				<img class="mypage" src="<%= root %>/static/img/mypage.png" onclick="window.location.href='<%= root %>/myPage.jsp'"/>
            </c:if>

            <!-- login 값이 0일 때 로그인 및 회원가입 버튼 표시 -->
            <c:if test="${param.login == 0}">
                <div class="log-in"><a href="<%= root %>/login.jsp">로그인</a></div>
                <div class="join-bw"><a href="<%= root %>/signup.jsp">회원가입</a></div>
            </c:if>
        </div>
	  	
	</div>
</header>
