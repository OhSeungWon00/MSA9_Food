<%@page import="java.util.List"%>
<%@page import="food.DTO.Menu"%>
<%@page import="food.Service.MenuServiceImpl"%>
<%@page import="food.Service.MenuService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	MenuService menuService = new MenuServiceImpl();
	
	//임시값
	String name = "41414";
	Menu menu = Menu.builder().brandId(name).build();
	List<Menu> menuList = menuService.list2(menu);
	System.out.println(menuList);
%>
<!DOCTYPE html>
<html>
<head>
	<title>project💻 - 미니 3조 상세 페이지🌴</title>
	<jsp:include page="/layout/meta.jsp" />
	<jsp:include page="/layout/link.jsp" />
	<link href="<%= root %>/static/css/index_page.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
	<%-- [Contents] ######################################################### --%>
	<div class="container">
		<div class="content-title">
			<h1>디핀 deepin</h1>
			<div class="subtitle">
				<ul>
					<li onclick="location.href='index_page.jsp'">매장정보</li>
					<li onclick="location.href='detail_menu.jsp'">메뉴</li>
					<li onclick="location.href='inforeview.jsp'">리뷰</li>
				</ul>
			</div>
		</div>
		<!-- 메뉴 목록 -->
		<c:set var="menuList" value="<%= menuList %>"></c:set>
		<c:forEach var="menu" items="${menuList }" varStatus="status">
			<div class="menu_container">
				<div class="menu_name">
					<a>${menu.name} </a>
				</div>
				<div class="menu_explain">
					<a>${menu.comment}</a>
				</div>
				<div class="menu_price">
					<a>${menu.price}</a>
			</div>
		</div>
		</c:forEach>
		<!-- 메뉴 생성 끝 -->
	</div>
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>
