<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="menu_container">
			<div class="menu_name">
				<a>비아톨레도 파스타 가을 7코스 메뉴</a>
			</div>
			<div class="menu_explain">
				<a>가을코스</a>
			</div>
			<div class="menu_price">
				<a>89,000 - 11,9000 원</a>
			</div>
		</div>
	</div>
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>