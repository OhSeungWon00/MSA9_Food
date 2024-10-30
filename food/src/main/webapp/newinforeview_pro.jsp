<%@page import="food.DTO.Review"%>
<%@page import="food.Service.ReviewServiceImpl"%>
<%@page import="food.Service.ReviewService"%>
<%@page import="java.util.Date"%>
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
		String userId = request.getParameter("userId");
		String rating = request.getParameter("rating"); // 정수변환해야함
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		Date regdate = new Date();
		
		Review review = Review.builder()
							.name(name)
							.userId(userId)
							.rating(Integer.parseInt(rating))
							.content(content)
							.regdate(regdate)
							.build();
							
		System.out.println("review : " + review);
		// 리뷰 작성 요청
		ReviewService reviewService = new ReviewServiceImpl();
		int result = reviewService.newreview(review);
		
		// 리뷰 작성 성공
		if(result > 0){
    	response.sendRedirect("inforeview.jsp?id="+id);
    	}
    	// 리뷰 작성 실패
    	else{
    		response.sendRedirect("newinforeview.jsp?error=0");
    	}
%>