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
					<li onclick="location.href='index_page.jsp?id=1'">매장정보</li>
					<li onclick="location.href='detail_menu.jsp?id=1'">메뉴</li>
					<li onclick="location.href='inforeview.jsp?id=1'">리뷰</li>
				</ul>
			</div>
		</div>
		<div class="restaurant-info">
			<div class="content-img">
    			<img src="<%= root %>/static/img/detail_page1.jpg" alt="map" class="image-size">
			</div>
			<div class="content-explain">
				<div class="restaurant-name">매장소개</div>
				<div class="explain-restaurant">분위기가 좋은 공간과 다이닝&amp;와인바를 지향하는 디핀입니다.</div>
			</div>
			<br>
			<h2>디핀 deepin</h2>
			<div class="review">
				<p>★ 4.9</p>
				<a>리뷰 1,068개</a>
			</div>
		</div>
		<div class="content-underLine"></div>
		<div class="restaurant-location">
			<h3>위치</h3>
				<img src="<%= root %>/static/img/map1.jpg" alt="지도 이미지" class="map-image">
			<br>
			<img class="map-icon" src="<%= root %>/static/img/map.png" />
			<a>서울특별시 중구 퇴계로 411 1층</a>
		</div>
	</div>
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>