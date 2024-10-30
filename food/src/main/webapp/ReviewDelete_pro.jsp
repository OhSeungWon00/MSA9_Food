<%@page import="food.Service.ReviewServiceImpl"%>
<%@page import="food.DTO.Review"%>
<%@page import="food.Service.ReviewService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%	
	request.setCharacterEncoding("UTF-8");    
	response.setCharacterEncoding("UTF-8");
	String review_id = request.getParameter("review_id");
	
	Review review = Review.builder()
							.review_id(Long.parseLong(review_id))
							.build();
	
	ReviewService reviewService = new ReviewServiceImpl();
	int result = reviewService.delete(review);

	if(result > 0){
		response.sendRedirect("invenReview.jsp");
	} else{
		response.sendRedirect("invenReview.jsp?error");		
	}
%>