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
        }
        .container {
            display: flex;
            margin-top: 20px;
        }
        .sidebar {
            width: 15%;
            background-color: #eef1ff;
            padding: 20px;
            height: 100vh;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        .sidebar ul li {
            margin: 20px 0;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: #333;
            font-size: 18px;
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
            background-color: white;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
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
            flex-direction: row;
            justify-content: center;
            width: 100px;
            padding: 10px;
            background-color: #7070ff;
            color: white;
            text-align: center;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>RestaurantList</h1>
        <input type="text" class="search-box" placeholder="Search...">
        <span>Hi, 관리자님</span>
    </div>
    <div class="container">
        <div class="sidebar">
            <ul>
                <li><img src="logo.png" alt="Logo" style="width: 50px; height: 50px;"></li>
                <li><a href="#">User</a></li>
                <li><a href="#">Review</a></li>
                <li><a href="#">Restaurant</a></li>
                <li><a href="#">Reservation</a></li>
            </ul>
        </div>
        <div class="content">
            <h2>임가네 숯불구이</h2>
            <div class="table-container">
                <table>
                    <tr>
                        <th>메뉴명</th>
                        <th>가격</th>
                        <th>설명</th>
                        <th>파일ID</th>
                        <th>가격</th>
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
