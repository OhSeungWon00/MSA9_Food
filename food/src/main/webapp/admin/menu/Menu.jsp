<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="food.DTO.Menu" %>
<%@ page import="food.Service.MenuService" %>
<%@ page import="food.Service.MenuServiceImpl" %>
<%@ include file="/layout/common.jsp" %>
<%
	// 인코딩
	request.setCharacterEncoding("UTF-8");
	
    // 서비스 객체 생성 및 메뉴 목록 조회
    MenuService menuService = new MenuServiceImpl();
    List<Menu> menuList = menuService.list();
%>

<!DOCTYPE html>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Restaurant List</title>
    <link href="<%= root %>/admin/menu/css/admin.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
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
        <div class="content">
            <div class="content_header">
	        	<h1>RestaurantList</h1>
	        	<input type="text" class="search-box" placeholder="Search...">
	        	<span>Hi, 관리자님</span>
	    	</div>
            <h2>임가네 숯불구이</h2>
            <div class="table-container">
                <table>
                    <tr>
                        <th>메뉴명</th>
                        <th>가격</th>
                        <th>설명</th>
                        <th>파일ID</th>
                        <th>액션가면</th>
                    </tr>
                    <% for (Menu menu : menuList) { %>
                    <tr>
                        <td><%= menu.getName() %></td>
                        <td><%= menu.getPrice() %></td>
                        <td><%= menu.getComment() %></td>
                        <td><%= menu.getFileId() %></td>
                        <td>
                            <form action="Menu_update.jsp" method="get" style="display:inline;">
                                <input type="hidden" name="menu_id" value="<%= menu.getMenuId() %>">
                                <button type="submit" class="btn">수정</button>
                            </form>
                            <form action="Menu_delete.jsp" method="post" style="display:inline;">
                                <input type="hidden" name="menu_id" value="<%= menu.getMenuId() %>">
                                <button type="submit" class="btn delete">삭제</button>
                            </form>
                        </td>
                    </tr>
                    <% } %>
                </table>
            	<button class="register-button" onclick="location.href='Menu_pro.jsp'">등록</button>
            </div>
        </div>
    </div>
</body>
</html>
