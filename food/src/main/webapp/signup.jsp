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
<!-- <link rel="stylesheet" href="./css/signup1.css"> -->
<!-- <link rel="stylesheet" href="./css/signup2.css"> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />

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

.bts:hover {
	background: #7070FF;
	color: white !important;
}

a:hover{
	background: #7070FF;
	color: white;
}
</style>
<title>회원가입</title>
</head>
<body>
	<div class="container">
		<%-- 		<jsp:include page="/layout/header.jsp" /> --%>
		<%-- 헤더 --%>
		<div class="d-flex justify-content-between align-items-center">
			<div>
				<img class="_2" src="./signup_svg/logo.png" />
			</div>



			<div>
				<img class="my-page" src="./signup_svg/myPage.svg" /> <a
					href="login.jsp">로그인</a> <a href="signup.jsp">회원가입</a>
			</div>
		</div>


		<%-- 회원가입 폼 --%>
		<div class="card mt-5 p-5 m-auto" style="width: 750px;">
			<form action="signup_pro.jsp" method="post" class="p-4">

				<%-- 아이디 --%>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="id" class="form-label">아이디</label>
					</div>
					<div class="col-md-8">
						<input type="text" class="form-control" id="id" name="id"
							placeholder="아이디" required>
					</div>
				</div>

				<%-- 비밀번호 --%>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="password" class="form-label">비밀번호</label>
					</div>
					<div class="col-md-8">
						<input type="password" class="form-control" id="password"
							name="password" placeholder="비밀번호" required>
					</div>
				</div>

				<%-- 비밀번호 확인 --%>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="password2" class="form-label">비밀번호 확인</label>
					</div>
					<div class="col-md-8">
						<input type="password" class="form-control" id="password2"
							name="password2" placeholder="비밀번호 확인" required>
					</div>
				</div>

				<%-- 이름 --%>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="name" class="form-label">이름</label>
					</div>
					<div class="col-md-8">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="이름" required>
					</div>
				</div>

				<%-- 이메일 --%>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="email" class="form-label">이메일</label>
					</div>
					<div class="col-md-8">
						<input type="email" class="form-control" id="email" name="email"
							placeholder="이메일" required>
					</div>
				</div>

				<%-- 전화번호 --%>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="phone" class="form-label">전화번호</label>
					</div>
					<div class="col-md-8">
						<input type="tel" class="form-control" id="phone" name="phone"
							placeholder="전화번호" required>
					</div>
				</div>

				<%-- 생년월일 --%>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="birth" class="form-label">생년월일</label>
					</div>
					<div class="col-md-8">
						<input type="date" class="form-control" id="birth" name="birth"
							required>
					</div>
				</div>

				<%-- 오류 메시지 표시 --%>
				<c:if test="${param.error == 1}">
					<script>
						alert("아이디가 중복되었습니다.");
					</script>
				</c:if>
				<c:if test="${param.error == 2}">
					<script>
						alert("비밀번호가 일치하지 않습니다.");
					</script>
				</c:if>

				<%-- 회원가입 버튼 --%>
				<div class="text-center mt-4">
					<input type="submit" class="bts bts-primary"
						style="width: 300px; height: 50px; color: black; border: 1px solid black; border-radius: 10px;"
						value="회원가입">
				</div>
			</form>
		</div>
	</div>
</body>
</html>