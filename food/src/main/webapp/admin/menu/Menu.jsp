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
    <title>메뉴 목록</title>
    <style>
        table {
            width: 70%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1 style="text-align:center;">메뉴 목록</h1>
    <table>
        <tr>
            <th>메뉴 이름</th>
            <th>가격</th>
            <th>설명</th>
            <th>식당 ID</th>
            <th>파일 ID</th>
            <th>액션</th>
        </tr>
        <%
            for (Menu menu : menuList) {
        %>
        <tr>
            <td><%= menu.getName() %></td>
            <td><%= menu.getPrice() %></td>
            <td><%= menu.getComment() %></td>
            <td><%= menu.getBrandId() %></td>
            <td><%= menu.getFileId() %></td>
            
            <td>
           	    <form action="<%= root %>/admin/menu/Menu_update.jsp" method="get" style="display:inline;">
			        <input type="hidden" name="menu_id" value="<%= menu.getMenuId() %>">
			        <button type="submit">수정</button>
			    </form>
			    <form action="<%= root %>/admin/menu/Menu_delete.jsp" method="post" style="display:inline;">
			        <button type="submit">삭제</button>
			        <input type="hidden" name="menu_id" value="<%=menu.getMenuId()%>"/>
			    </form>
			</td>
			            
        </tr>
        <%
            }
        %>
    </table>

    <div style="text-align:center;">
    	<button type="button" onclick="location.href='Menu_pro.jsp'">등록</button>
    </div>
</body>
</html>
