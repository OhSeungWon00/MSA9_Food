<%@page import="food.DTO.newBrand"%>
<%@page import="food.Service.newBrandServiceImpl"%>
<%@page import="food.Service.newBrandService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

    String searchname = request.getParameter("searchname");

    // newBrand 객체 생성
    newBrand newbrand = newBrand.builder()
    						.name(searchname)
    						.build();
    
    // newBrandServiceImpl 객체 생성
    newBrandService newBrandService = new newBrandServiceImpl();
    
    // search 메서드 호출
    newbrand = newBrandService.search(newbrand);
    
	try{
    request.setAttribute("name", newbrand.getName() );
    request.setAttribute("location", newbrand.getLocation() );
    request.setAttribute("phone", newbrand.getPhone() );
    request.setAttribute("content", newbrand.getContent() );		
	request.getRequestDispatcher("updateBrand.jsp").forward(request, response);
	} catch(Exception e){
		System.out.println("오류");
		response.sendRedirect("updateBrand.jsp?error=0");
	}
%>