<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@page import="food.DTO.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <% 
    	String userId= request.getParameter("id");
    	String password = request.getParameter("password");
    	String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	//id -> userId -> ueser_id
    
    	User user = User.builder()
    							.user_id(userId)
    							.password(password)
    							.name(name)
    							.email(email)
    							.build();
    	
    	// 회원 가입 요청
    	UserService userService = new UserServiceImpl();
    	int result = userService.signup(user);
    	
    	// 회원가입 성공
    	if (result>0){
    		response.sendRedirect("index.jsp");		// 메인화면으로 이동
    	}
    	// 회원가입 실패
    	else {
    		response.sendRedirect("signup.jsp?error=0");	// 다시 회원가입페이지로(에러포함)
    	}
    %>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    