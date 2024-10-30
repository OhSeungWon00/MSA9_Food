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
			<h1>비아 톨레도 파스타바</h1>
			<div class="subtitle">
				<ul>
					<li>매장정보</li>
					<li>메뉴</li>
					<li>리뷰</li>
				</ul>
			</div>
		</div>
		<div class="restaurant-info">
			<div class="content-img">
    <img src="<%= root %>/static/img/1.png" alt="map">
		</div>

			<div class="content-explain">
				<h2>매장소개</h2>
				<div class="explain-restaurant">이탈리 현지의 공기, 음악, 맛과 와인이 있는 파스타바입니다.</div>
			</div>
			<div class="restaurant-name">비아 톨레도 프사타바</div>
			<div class="review">
				<p>☆</p>
				<a>리뷰 496개</a>
			</div>
		</div>
		<div class="content-underLine"></div>
		<div class="restaurant-location">
			<h3>위치</h3>
			<img src="<%= root %>/static/img/map1.jpg" alt="지도 이미지" class="map-image">
			<br>
			<img class="map-icon" src="<%= root %>/static/img/map.png" />
			<a>서울 특별시 용산구 원효로 83길 7-2 1층</a>
		</div>
	</div>
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>