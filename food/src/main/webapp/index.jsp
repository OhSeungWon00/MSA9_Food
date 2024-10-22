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

	UserService userService = new UserServiceImpl();
	User user = User.builder()
					.user_id("joeun")
					.password("123456")
					.name("김조은")
					.email("joeun@naver.com")
					.phone("010-1234-1234")
					.build();
	userService.signup(user);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>1</title>
</head>
<body>


<h1>3조성공</h1>

</body>
</html>