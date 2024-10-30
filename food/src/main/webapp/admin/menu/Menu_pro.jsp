<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.DTO.Menu" %>
<%@ page import="food.Service.MenuService" %>
<%@ page import="food.Service.MenuServiceImpl" %>
<%@ include file="/layout/common.jsp" %>

<%
	// 인코딩
	request.setCharacterEncoding("UTF-8");	
	
    // POST 요청 시 폼 데이터 처리
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String comment = request.getParameter("comment");
        String brandId = request.getParameter("brandId");
        String fileId = request.getParameter("fileId");

        // Menu 객체 생성 및 초기화
        Menu menu = Menu.builder()
            .name(name)
            .price(price)
            .comment(comment)
            .brandId(brandId)
            .fileId(fileId)
            .build();

        // 서비스 객체를 통해 메뉴 저장
        MenuService menuService = new MenuServiceImpl();
        menuService.insert(menu);

        // 저장 후 목록 페이지로 리다이렉트
        response.sendRedirect("Menu.jsp");
        

    }
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>메뉴 등록</title>
    <link href="<%= root %>/admin/menu/css/admin2.css" rel="stylesheet" />
</head>
<body>
    <div class="sidebar">
        <div class="sidebar_logo">           
            <img class="logo" src="../menu/menu_img/logo.png" alt="Logo" style="width: 50px; height: 50px;">
        </div>
        <ul>
            <li class="user_nav" onclick="location.href='../user/delete.jsp'"><a href="#">User</a></li>
            <li class="user_nav" onclick="location.href='../.jsp'"><a href="#">Review</a></li>
            <li class="user_nav" onclick="location.href='../.jsp'"><a href="#">Restaurant</a></li>
            <li class="user_nav" onclick="location.href='../.jsp'"><a href="#">Reservation</a></li>
        </ul>
    </div>
    <div class="container">
        <h1>메뉴 등록</h1>
        <form method="post" action="Menu_pro.jsp">
            <div class="form-group">
                <label for="name">메뉴 이름:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="price">가격:</label>
                <input type="text" id="price" name="price" required>
            </div>
            <div class="form-group">
                <label for="comment">설명:</label>
                <textarea id="comment" name="comment" required></textarea>
            </div>
            <div class="form-group">
                <label for="brandId">식당 ID:</label>
                <% String id = request.getParameter("id"); %>
                <input type="hidden" id="brandId" name="brandId" value="<%= id %>" required>
                <p><%= id %></p>
            </div>
            <div class="form-group">
                <label for="fileId">파일 ID:</label>
                <input type="text" id="fileId" name="fileId" required>
            </div>
            <div style="text-align:center;">
                <button type="submit">등록</button>
            </div>
        </form>
    </div>
</body>
</html>
