<%@page import="food.DTO.User"%>
<%@page import="java.util.List"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@ include file="/layout/jstl.jsp"%>
<%@ include file="/layout/common.jsp"%>
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
<link rel="stylesheet" href="./css/mypage1.css">
<link rel="stylesheet" href="./css/mypage2.css">
<%
UserService userService = new UserServiceImpl();
List<User> userList = userService.list();
User user = userService.select(loginId);
%>

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
		<div class="main">
			<div class="div2">마이페이지</div>
			<div class="div3">내 아이디</div>
			<div class="div4">비밀번호</div>
			<div class="div5">이름</div>
			<div class="div6">전화번호</div>
			<div class="div7">이메일</div>
			<div class="div8">생년월일</div>

			<!-- 프로필수정 -->
			<form action="./user/myPageupdate.jsp" method="post">
				<img class="frame3" src="./mypage_img/frame2.svg" /> <input
					class="div9" type="submit" value="프로필수정" />
			</form>


			<div class="bsy-7021">${user.getUserId() }</div>
			<div class="bsy-70212">안녕하세요. ${user.getUserId()} 입니다.</div>
			<img class="rectangle-32" src="./mypage_img/rectangle-320.svg" /> <img
				class="rectangle-33" src="./mypage_img/rectangle-330.svg" /> <img
				class="rectangle-34" src="./mypage_img/rectangle-340.svg" /> <img
				class="rectangle-35" src="./mypage_img/rectangle-350.svg" /> <img
				class="rectangle-36" src="./mypage_img/rectangle-360.svg" /> <img
				class="rectangle-37" src="./mypage_img/rectangle-370.svg" />
			<div class="rectangle-141"></div>
			<div class="div10">지점명</div>
			<div class="div11">인원수</div>
			<div class="div12">예약정보</div>
			<div class="div13">예약자</div>
			<div class="div14">예약날짜</div>
			<img class="vector-9" src="./mypage_img/vector-90.svg" /> <img
				class="vector-10" src="./mypage_img/vector-100.svg" /> <img
				class="vector-11" src="./mypage_img/vector-110.svg" /> <img
				class="vector-12" src="./mypage_img/vector-120.svg" />
			<div class="frame">
				<img class="vector" src="./mypage_img/vector0.svg" />
				<div class="div15">나의 예약정보</div>
				<img class="frame2" src="./mypage_img/frame1.svg" />
			</div>
			<img class="vector-13" src="./mypage_img/vector-130.svg" />
			<div class="bsy-70213">${ user.getUserId() }</div>
			<div class="div16">**********</div>
			<div class="div17">${user.getName() }</div>
			<div class="_010-5208-3996">${user.getPhone() }</div>
			<div class="bsy-7021-naver-com">${user.getEmail() }</div>
			<div class="_1994-07-21">${user.getBirth()}</div>
			<div class="div18"></div>
			<div class="_2024-10-22"></div>
			<div class="div19">매장명</div>
			<div class="_520">520명</div>
		</div>
		<img class="frame4" src="./mypage_img/frame3.svg" />
		<div class="header">
			<div class="container">
				<div class="container2">
					<div class="fieldset">
						<img class="image" src="./mypage_img/image0.png" />
					</div>
				</div>
				<div class="navigation">
					<div class="div21">
						<a href="login.jsp" class="logout">로그아웃</a>
					</div>

				</div>
				<img class="my-page" src="./mypage_img/my-page0.svg" /> <img
					class="_1" src="./mypage_img/_10.png" />
			</div>
		</div>
	</div>

</body>
</html>