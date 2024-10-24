<%@page import="food.DAO.UserDAO"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@page import="food.DTO.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <% 
    	String name = request.getParameter("name");
    	String userId= request.getParameter("id");
    	String email = request.getParameter("email");
    	String password = request.getParameter("password");
    	String password2 = request.getParameter("password2");
    	String phone= request.getParameter("phone");
    	//id -> userId -> ueser_id

     	User user = User.builder()
    							.user_id(userId)
    							.password(password)
    							.name(name)
    							.email(email)
    							.phone(phone)
    							.build();
    	
    	int result = 0;
    	
    	
    	// 회원 가입 요청 (비밀번호가 같고, ID가 중복되지 않은 경우)
    	if(password.equals(password2) ){
    	UserService userService = new UserServiceImpl();
    	result = userService.signup(user);    		
    	}
    	
    	
    	// 회원가입 성공
    	if (result>0){
    		response.sendRedirect("index.jsp");		// 메인화면으로 이동
    	}
    
    	// 회원가입 실패
    	else {
    		response.sendRedirect("index.jsp?error=0");	// 다시 회원가입페이지로(에러포함)
    	} 
    %>