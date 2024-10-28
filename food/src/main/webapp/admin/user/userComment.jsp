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

<form action="login_pro.jsp" method="post">






 		<label for="name">댓글창</label><br>
        <input type="text" id="userId" name="userId" required><br><br>


 		<div>
			<input type="submit" value="댓글 등록" />
		</div>
		
		
		 <label for="name"></label><br>
        <input type="text" id="userId" name="userId"><br><br>
		
		
</form>
</body>
</html>