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
    <style>
        body {
            background-color: #E1E1FF;
            font-family: Arial, sans-serif;
            margin:0;
        }
        .container {
            display: flex;
        }
        .container ul{
        	
        }
        .container ul li{
        
        }
        .sidebar {
        	background-color: white;
            width: 15%;
            padding: 20px;
            height: 100vh;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar ul {
            list-style-type: none;
            padding: 10px;
        }
        .sidebar ul li {
        	width: 80%;
            margin: 20px 0;
            padding: 20px;
            border-radius: 5px;
        }
        .sidebar ul li:hover{
        	background-color: #7070ff;
        	cursor: pointer;
        }
        .sidebar ul li:hover a {
        	color:white;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: #333;
            font-size: 90%;
        }
        .content {
            width: 85%;
            padding: 20px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #eef1ff;
            padding: 10px 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .header h1 {
            margin: 0;
        }
        .search-box {
            background-color: white;
            padding: 5px 10px;
            border: 1px solid #ccc;
            border-radius: 20px;
        }
        .table-container {
        	width: 98%;
            background-color: white;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            display:flex;
            flex-direction : column;
            justify-content: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn {
            background-color: #7070ff;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }
        .btn.delete {
            background-color: #ff7070;
        }
        .register-button {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            width: 100px;
            padding: 10px;
            background-color: #7070ff;
            color: white;
            text-align: center;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
            margin:20px auto;
        }
        .content_header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #E1E1FF;
            padding: 10px 20px;
        }
    </style>
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
