<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@page import="food.DTO.User"%>
<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String userId = request.getParameter("userId");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String birth = request.getParameter("birth");

	User user = User.builder()
				    .userId(request.getParameter("userId"))
				    .name(request.getParameter("name"))
				    .email(request.getParameter("email"))
				    .phone(request.getParameter("phone"))
				    .birth(request.getParameter("birth"))
				    .build();
	

	UserService userService = new UserServiceImpl();
	int result = userService.update(user);
	
	if( result > 0 ) {
		response.sendRedirect(root + "/myPage.jsp");
	}
	else {
		response.sendRedirect(root + "/user/myPageupdate.jsp?error");
	}
	
%>

















