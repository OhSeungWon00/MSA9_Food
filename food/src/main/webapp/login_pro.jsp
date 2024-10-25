<%@ include file="/layout/jstl.jsp" %>
<%@page import="food.DTO.User"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");

	User user = User.builder()
					.userId(userId)
					.password(password)
					.build();
	
	UserService userService = new UserServiceImpl();
	User loginUser = userService.login(user);
	
	// 로그인 실패
	if( loginUser == null ) {
		   out.println("로그인 실패 ㅋ ㅋ");
	}
	else{
	// 로그인 성공
	session.setAttribute("loginId", userId);
	session.setAttribute("user", loginUser);
	// 메인 화면으로 이동
	response.sendRedirect("main.jsp");
	}
	
	
    	
	
%>