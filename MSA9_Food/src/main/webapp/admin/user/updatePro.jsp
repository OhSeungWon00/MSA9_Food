<%@page import="food.DTO.User"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String userId= request.getParameter("userId");

	UserService userService =  new UserServiceImpl();
	User user = User.builder()
					.userId(userId)
					.build();
	int result = userService.update(user);
	
	String root = request.getContextPath();
	if( result > 0 ) {
		response.sendRedirect(root + "/admin/user/main.jsp");
	}
	else {
		response.sendRedirect(root + "/admin/user/index.jsp?error=edit");
	}
	
	
	
	
	
	



%>