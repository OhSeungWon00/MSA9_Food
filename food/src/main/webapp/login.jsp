<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login Page</title>
	<link rel="stylesheet" href="./css/login1.css">
	<link rel="stylesheet" href="./css/login2.css">
</head>
<body>
	<div class="login-container">
		<h1 class="title">Login</h1>
			<form action="login_pro.jsp" method="post" class="login-form">
			<label for="userId" class="label">
				<input type="text" id="userId" name="userId" placeholder="아이디" required>
			</label>
			<label for="password" class="label">
				<input type="password" id="password" name="password" placeholder="비밀번호" required>
			</label>
			<div class="options">
				<label><input type="checkbox" name="autoLogin"> 자동로그인</label>
				<label><input type="checkbox" name="rememberId"> 아이디 기억하기</label>
			</div>
				<button type="submit" class="login-button">Log In</button>
			</form>
		<div class="links">
			<a href="signup.jsp">회원가입</a>
			<a href="#">아이디/비밀번호 찾기</a>
			<a href="index.jsp?login=0">비회원 로그인</a>
		</div>
	</div>
</body>
</html>
