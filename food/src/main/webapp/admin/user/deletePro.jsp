<%@page import="food.DTO.User"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");    
    response.setCharacterEncoding("UTF-8");    

    String[] userIds = request.getParameterValues("userIds"); // 사용자 ID 배열 가져오기

    UserService userService = new UserServiceImpl();
    int deleteCount = 0; // 삭제된 회원 수 카운트

    if (userIds != null) {
        for (String userId : userIds) {
            User user = User.builder()
                            .userId(userId)
                            .build();
            int result = userService.delete(user); // 각 회원 삭제
            deleteCount += result; // 삭제된 회원 수 증가
        }
    }

    String root = request.getContextPath();
    if (deleteCount > 0) {
        response.sendRedirect(root + "/admin/user/delete.jsp?success=1"); // 성공 메시지 추가
    } else {
        response.sendRedirect(root + "/admin/user/delete.jsp?error=delete");
    }
%>
