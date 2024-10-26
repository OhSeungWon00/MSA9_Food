<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="food.DTO.Menu" %>
<%@ page import="food.Service.MenuService" %>
<%@ page import="food.Service.MenuServiceImpl" %>


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
    <style>
    body {
            background-color: #E1E1FF;
            font-family: Arial, sans-serif;
            margin:0;
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
	    <h1 style="text-align:center;">메뉴 등록</h1>
	    <form method="post" action="Menu_pro.jsp" style="width: 50%; margin: 0 auto;">
	        <label>메뉴 이름: <input type="text" name="name" required></label><br><br>
	        <label>가격: <input type="text" name="price" required></label><br><br>
	        <label>설명: <textarea name="comment" required></textarea></label><br><br>
	        <label>식당 ID: <input type="text" name="brandId" required></label><br><br>
	        <label>파일 ID: <input type="text" name="fileId" required></label><br><br>
	        <div style="text-align:center;">
	            <button type="submit">등록</button>
	        </div>
	    </form>
	</div>
</body>
</html>
