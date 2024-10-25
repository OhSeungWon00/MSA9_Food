<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="food.DAO.UserDAO"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@page import="food.DTO.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <% 
    	UserService userService =  new UserServiceImpl();
    	List<User> userList = userService.list();
    	
    
    	request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
    	
    	
    	String name = request.getParameter("name");
    	String userId= request.getParameter("id");
    	String email = request.getParameter("email");
    	String password = request.getParameter("password");
    	String password2 = request.getParameter("password2");
    	String phone= request.getParameter("phone");
    	String birth = request.getParameter("birth");
    	//id -> userId -> ueser_id
    	
    	
    	int result1 = 0;
    	int result2 = 0;
    	for(User user : userList){
    		if(userId.equals(user.getUserId())){
    			result1 = 1;
    		}
    	}
    	

     	User user = User.builder()
    							.userId(userId)
    							.password(password)
    							.name(name)
    							.email(email)
    							.phone(phone)
    							.birth(birth)
    							.build();
    	
    	int result = 0;
    	// 회원 가입 요청 (비밀번호가 같고, ID가 중복되지 않은 경우)
    	if( !(password.equals(password2)) ){
    		result2 = 1;
    	}
    	
    	// 회원가입 성공
    	if ( result2 == 0 && result1 == 0){
    		result = userService.signup(user);    		
    		response.sendRedirect("login.jsp");		// 로그인페이지로 이동
    	}
    	else if( result2 == 0 && result1 == 1){
    		response.sendRedirect("signup.jsp?error=1");	// 아이디 중복
    	}
    	else if( result2 == 1 && result1 == 0){
    		response.sendRedirect("signup.jsp?error=0");	// 비번 중복    		
    	}
    	// 회원가입 실패
    	else {
    		response.sendRedirect("signup.jsp?error=2");	// 아이디,비번 중복
    	} 
  	
    %>
    
    
    
    
    
    
    
    
    
    
    
    
    
    