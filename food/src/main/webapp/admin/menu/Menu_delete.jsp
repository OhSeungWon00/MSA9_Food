<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.DTO.Menu" %>
<%@ page import="food.Service.MenuService" %>
<%@ page import="food.Service.MenuServiceImpl" %>
userId : 
<%
    // 인코딩 설정
    request.setCharacterEncoding("UTF-8");

    MenuService menuService = new MenuServiceImpl();
 	Long menuId = Long.parseLong(request.getParameter("menu_id"));
    

    // POST 요청 시 menu_id로 메뉴 삭제 처리
    if (request.getMethod().equalsIgnoreCase("POST")) {
       
        // 메뉴 삭제 시도
        int result = menuService.delete(menuId);
		
        if (result > 0) {
            response.sendRedirect("Menu.jsp");  // 성공 시 목록으로 이동
        } else {
            out.println("<script>alert('삭제에 실패했습니다.');</script>");
        }
    }
%>
