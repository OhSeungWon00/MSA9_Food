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
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="testt.jsp" method="post">
        <label for="name">이름:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">이메일:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="password">비밀번호:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <label for="phone">전화번호:</label><br>
        <input type="tel" id="phone" name="phone" required><br><br>

        <input type="submit" value="회원가입">
    </form>
</body>
</html>
