<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/signup1.css">
<link rel="stylesheet" href="./css/signup2.css">


<style>
a, button, input, select, h1, h2, h3, h4, h5, * {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	border: none;
	text-decoration: none;
	background: none;
	-webkit-font-smoothing: antialiased;
}

menu, ol, ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}
</style>
<title>회원가입</title>
</head>
<body>
	<div class="div">
		<div class="main">
			<img class="rectangle-31" src="./signup_svg/signup.svg" />
			<div class="div2">회원가입</div>
			<form action="signup_pro.jsp" method="post">
				<div class="div3">아이디</div>
				<input class="rectangle-159" type="text" id="id" name="id" required><br>
				<br>
				<c:if test="${param.error == 1 }">
					<p style="color: red;">중복되는 아이디가 존재합니다.</p>
				</c:if>
				<c:if test="${param.error == 2 }">
					<p style="color: red;">중복되는 아이디가 존재합니다.</p>
				</c:if>
				<div class="div4">비밀번호</div>
				<input class="rectangle-1592" type="password" id="password"
					name="password" required><br> <br>
				<div class="c">
					<div class="div5">비밀번호 확인</div>
					<input class="rectangle-1593" type="password" id="password2"
						name="password2" required>
					<c:if test="${param.error == 0 }">
						<p class="rectangle-1593" style="color: red;">비밀번호가 다릅니다</p>
					</c:if>
				</div>
				<br> <br>
				<div class="div6">이름</div>
				<input class="rectangle-1594" type="text" id="name" name="name"
					required><br> <br>
				<div class="div7">이메일</div>
				<input class="rectangle-1596" type="text" id="email" name="email"
					required><br> <br>
				<div class="div8">전화번호</div>
				<input class="rectangle-1595" type="tel" id="phone" name="phone"
					required><br> <br>
				<div class="div9">생년월일</div>
				<input class="rectangle-1597" type="date" id="birth" name="birth"
					required><br> <br> <input class="div10"
					type="submit" value="회원가입">
			</form>
			<div class="header">
				<div class="container">
					<div class="navigation">
						<div class="div20">로그인</div>
					</div>
					<img class="my-page" src="./signup_svg/myPage.svg" /> <img
						class="_1" src="./signup_svg/logo.png" />
				</div>
			</div>
			<img class="_2" src="./signup_svg/logo.png" />
		</div>
	</div>
</body>
</html>