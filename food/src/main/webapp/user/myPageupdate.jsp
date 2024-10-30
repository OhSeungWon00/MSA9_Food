<%@page import="food.DTO.User"%>
<%@page import="java.util.List"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@ include file="/layout/jstl.jsp"%>
<%@ include file="/layout/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserService userService = new UserServiceImpl();
List<User> userList = userService.list();
User user = userService.select(loginId);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=root%>/static/css/myPage1.css">
<link rel="stylesheet" href="<%=root%>/static/css/myPage1.css">
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
<title>Document</title>
</head>
<body>
	<div class="div">

		<form action="<%=root%>/user/update_pro.jsp" method="post">
			<div class="main">
				<input class="rectangle-142" type="text" value="<%=loginId%>"
					readonly> <img class="frame"
					src="<%=root%>/static/svg/frame0.svg" /> <img
					class="rectangle-145" src="<%=root%>/static/svg/rectangle-1450.svg" />
				<div class="rectangle-144"></div>
				<div class="rectangle-143"></div>
				<!-- 안녕하세요. bsy7021입니다. -->
				<img class="frame2" src="<%=root%>/static/svg/frame1.svg" />
				<div class="div2">회원정보변경</div>
				<div class="_2-4">*2~4자 이내, 공백불가능, 한글가능</div>
				<div class="_100">*100자 입력가능</div>
			</div>
			<img class="vector-13" src="<%=root%>/static/svg/vector-130.svg" />
			<div class="div3">내 아이디</div>
			<div class="div4">비밀번호</div>
			<div class="div5">이름</div>
			<div class="div6">전화번호</div>
			<div class="div7">이메일</div>
			<div class="div8">생년월일</div>
			<img class="div9" src="<%=root%>/static/svg/div7.svg" /> <img
				class="div10" src="<%=root%>/static/svg/div8.svg" />
			<div class="header">
				<div class="container">
					<div class="container2">
						<img class="image" src="<%=root%>/static/svg/image0.png" />
						<div class="input">
							<div class="container3"></div>
						</div>
					</div>
					<div class="navigation">
						<div class="div12">
							<a href="/food/index.jsp" class="homebtn">홈으로</a>
						</div>

					</div>
					<img class="my-page" src="<%=root%>/static/svg/my-page0.svg" /> <img
						class="_1" src="<%=root%>/static/svg/_10.png" />
				</div>
			</div>
			<input class="rectangle-32" type="hidden" name="userId"
				value="<%=user.getUserId()%>" />
			<p class="rectangle-32"><%=user.getUserId()%></p>
			<input class="rectangle-33" type="text" name="" /> <input
				class="rectangle-34" type="text" name="name"
				value="<%=user.getName()%>" /> <input class="rectangle-35"
				type="text" name="email" value="<%=user.getEmail()%>" /> <input
				class="rectangle-36" type="text" name="phone"
				value="<%=user.getPhone()%>" /> <input class="rectangle-37"
				type="date" name="birth" value="<%=user.getBirth()%>" />
			<button type="submit" class="div13">수정</button>
		</form>

		<form action="../myPage.jsp">
			<input class="div14" type="submit" value="취소">
		</form>
	</div>

	<script>
		
	</script>
</body>
</html>
