<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.DTO.Menu" %>
<%@ page import="food.Service.MenuService" %>
<%@ page import="food.Service.MenuServiceImpl" %>


<%
	// 인코딩
	request.setCharacterEncoding("UTF-8");
	Long menuId = Long.parseLong(request.getParameter("menu_id"));
	MenuService menuService = new MenuServiceImpl();
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
            .menuId(menuId)
            .build();

        // 서비스 객체를 통해 메뉴 저장
        
        menuService.update(menu);

        // 저장 후 목록 페이지로 리다이렉트
        response.sendRedirect("Menu.jsp");
    }
   	Menu getMenu = menuService.select(menuId);
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>메뉴 등록</title>
</head>
<body>
    <h1 style="text-align:center;">메뉴 등록</h1>
    <form method="post" action="Menu_pro.jsp" style="width: 50%; margin: 0 auto;">
    	<input type="hidden" value="<%=getMenu.getMenuId() %>"/>
        <label>메뉴 이름: <input type="text" name="name" value="<%= getMenu.getName() %>" required></label><br><br>
        <label>가격: <input type="text" name="price" value="<%= getMenu.getPrice() %>" required></label><br><br>
        <label>설명: <textarea name="comment" required><%= getMenu.getComment() %></textarea></label><br><br>
        <label>식당 ID: <input type="text" name="brandId" value="<%= getMenu.getBrandId() %>" required></label><br><br>
        <label>파일 ID: <input type="text" name="fileId" value="<%= getMenu.getFileId() %>" required></label><br><br>
        <div style="text-align:center;">
            <button type="submit">등록</button>
        </div>
    </form>
</body>
</html>
