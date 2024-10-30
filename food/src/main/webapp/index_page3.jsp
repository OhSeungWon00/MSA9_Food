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
			<h1>네기스키야키</h1>
			<div class="subtitle">
				<ul>
					<li onclick="location.href='index_page.jsp?id=3'">매장정보</li>
					<li onclick="location.href='detail_menu.jsp?id=3'">메뉴</li>
					<li onclick="location.href='inforeview.jsp?id=3'">리뷰</li>
				</ul>
			</div>
		</div>
		<div class="restaurant-info">
			<div class="content-img">
	    		<img src="<%= root %>/static/img/detail_page3.jpg" alt="map">
			</div>
			<div class="content-explain">
				<div class="restaurant-name">매장소개</div>
				<div class="explain-restaurant">미쉐린 3스타 레스토랑 출신 흑백요리사 트리플스타 강승원 셰프가 <br>풀어내는 다국적 감성의 컨템포러리 다이닝</div>
			</div>
			<br>
			<h2>네기스키야키</h2>
			<div class="review">
				<p>★ 4.5</p>
				<a>리뷰 741개</a>
			</div>
		</div>
		<div class="content-underLine"></div>
		<div class="restaurant-location">
			<h3>위치</h3>
			<img src="<%= root %>/static/img/map3.jpg" alt="지도 이미지" class="map-image">
			<br>
			<img class="map-icon" src="<%= root %>/static/img/map.png" />
			<a>서울특별시 강남구 논현로 854 지하1층 네기스키야키</a>
		</div>
	</div>
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
</body>
</html>