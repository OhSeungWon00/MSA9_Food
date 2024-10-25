<%@ include file="/layout/jstl.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인화면</title>
</head>
<body>

<form action="./user/myPage.jsp" method="post">

 <label for="name">아이디</label><br>
        <input type="text" id="userId" name="userId" required><br><br>

  <label for="password">비밀번호:</label><br>
        <input type="password" id="password" name="password" required><br><br>


 		<div>
			<input type="submit" value="로그인" />
		</div>
</form>
</body>
</html>