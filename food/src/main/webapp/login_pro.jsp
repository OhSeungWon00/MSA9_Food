<%@ include file="/layout/jstl.jsp" %>
<%@page import="food.DTO.User"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");

	User user = User.builder()
					.userId(userId)
					.password(password)
					.build();
	
	UserService userService = new UserServiceImpl();
	User loginUser = userService.login(user);
	
	// 로그인 실패
	if (loginUser == null) {
%>
		<script type="text/javascript">
			alert("로그인 실패!");
			history.back(); // 로그인 실패 시 이전 페이지로 이동
		</script>
<%
	}
	else{
	// 로그인 성공
	session.setAttribute("loginId", userId);
	session.setAttribute("user", loginUser);
	
	// 메인 화면으로 이동
		if(userId.equals("123")){
			response.sendRedirect("index.jsp?login=2");
		}
		else{
			response.sendRedirect("index.jsp?login=1");		
		}
	}
	
	
    	
	
%>
