<%@page import="food.DAO.UserDAO"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@page import="food.DTO.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <% 
<<<<<<< HEAD
    	String userId= request.getParameter("id");
    	String password = request.getParameter("password");
    	String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	//id -> userId -> user_id
=======
    	request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
>>>>>>> refs/heads/main
    
    	String name = request.getParameter("name");
    	String userId= request.getParameter("id");
    	String email = request.getParameter("email");
    	String password = request.getParameter("password");
    	String password2 = request.getParameter("password2");
    	String phone= request.getParameter("phone");
    	//id -> userId -> ueser_id
    	
    

     	User user = User.builder()
    							.userId(userId)
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
    		response.sendRedirect("login.jsp");		// 로그인페이지로 이동
    	}
    
    	// 회원가입 실패
    	else {
    		response.sendRedirect("signup.jsp?error=0");	// 다시 회원가입페이지로(에러포함)
    	}  
    %>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    