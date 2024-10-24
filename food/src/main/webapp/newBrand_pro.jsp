<<<<<<< HEAD
<%@page import="food.Service.newBrandServiceImpl"%>
<%@page import="food.Service.newBrandService"%>
<%@page import="food.DTO.newBrand"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    
    String name = request.getParameter("name");
    String location = request.getParameter("location");
    String phone = request.getParameter("phone");
    String content = request.getParameter("content");
    
    newBrand newbrand = newBrand.builder()
    					.name(name)
    					.location(location)
    					.phone(phone)
    					.content(content)
    					.build();
    
    // 매장 등록 요청
    newBrandService newBrandService = new newBrandServiceImpl();
    int result = newBrandService.newbrand(newbrand);
    
    // 매장등록 성공
    if(result > 0){
    	response.sendRedirect("index.jsp");
    }
    // 매장등록 실패
    else{
    	response.sendRedirect("newBrand.jsp?error=0");
    }
    
    %>
    
=======
<%@page import="food.Service.newBrandServiceImpl"%>
<%@page import="food.Service.newBrandService"%>
<%@page import="food.DTO.newBrand"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    
    String name = request.getParameter("name");
    String location = request.getParameter("location");
    String phone = request.getParameter("phone");
    String content = request.getParameter("content");
    
    
	out.println(name);
	out.println(location);
	out.println(phone);
	out.println(content);
    
    newBrand newbrand = newBrand.builder()
    					.name(name)
    					.location(location)
    					.phone(phone)
    					.content(content)
    					.build();
    
    // 매장 등록 요청
    newBrandService newBrandService = new newBrandServiceImpl();
    int result = newBrandService.newbrand(newbrand);
    
    // 매장등록 성공
    if(result > 0){
    	response.sendRedirect("index.jsp");
    }
    // 매장등록 실패
    else{
    	response.sendRedirect("newBrand.jsp?error=0");
    }
    
>>>>>>> refs/heads/main
    %>
