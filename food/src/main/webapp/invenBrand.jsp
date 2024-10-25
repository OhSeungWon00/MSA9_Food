<%@page import="food.Service.newBrandServiceImpl"%>
<%@page import="food.DTO.newBrand"%>
<%@page import="java.util.List"%>
<%@page import="food.Service.newBrandService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
	newBrandService newBrandService = new newBrandServiceImpl();
	List<newBrand> brandList = newBrandService.list();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/invenBrand1.css">
<link rel="stylesheet" href="./css/invenBrand2.css">


<style>
a, button, input, select, h1, h2, h3, h4, h5, * {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	border: none;
	text-decoration: none;
	background: none;
	-webkit-font-smoothing: antialiased;
}

menu, ol, ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}
</style>
<title>Document</title>
</head>
<body>
	<div class="div">
		<div class="sidebar">
			<div class="user">
				<div class="user2">User</div>
				<img class="frame" src="./invenBrand_img/frame0.svg" />
			</div>
			<div class="review">
				<div class="review2">Review</div>
				<img class="frame2" src="./invenBrand_img/frame1.svg" />
			</div>
			<div class="restaurant">
				<div class="restaurant2">Restaurant</div>
				<img class="frame3" src="./invenBrand_img/frame2.svg" />
			</div>
			<div class="restaurant3">
				<div class="reservation">Reservation</div>
				<img class="frame4" src="./invenBrand_img/frame3.svg" />
			</div>
			<div class="div2">사이트명</div>
			<img class="_1" src="./invenBrand_img/_10.png" />
		</div>
		<div class="review-list">
			<div class="pagenumber">
				<img class="frame5" src="./invenBrand_img/frame4.svg" /> <img
					class="frame6" src="./invenBrand_img/frame5.svg" />
				<div class="_12">1</div>
				<div class="_2">2</div>
				<div class="_3">3</div>
				<div class="_4">4</div>
				<div class="_5">5</div>
			</div>
			<div class="div3">
				<div class="div4">번호</div>
				<div class="div5">매장명</div>
				<div class="div6">주소</div>
				<div class="div7">전화번호</div>
				<div class="div8">매장수정</div>
				<div class="div9">메뉴수정</div>
				<img class="vector-1" src="./invenBrand_img/vector-10.svg" />

				<!-- 리스트 생성 -->
				<c:set var="brandList" value="<%=brandList%>" />

				<div class="frame-31">

					<c:forEach var="brand" items="${brandList}" varStatus="status">
						<form action="updateBrand_pro.jsp" method="post">
							<div class="group-55">
								<input type="hidden" name="brandId" value="${brand.brandId}" /> 
								<input class="h" type="text" name="searchname" value="${brand.name}" />
								<div class="_13">${status.index + 1 }</div>
								<div class="div12">${brand.name}</div>
								<div class="_010-1111-1234">${brand.phone}</div>
								<div class="_123-123">${brand.location}</div>
								<button class="rectangle-40" type="button"
									onclick="location.href='nextPage.jsp'">수정</button>
								<!-- 메뉴 -->
								<input class="rectangle-39" type="submit" value="수정" />
								<!-- 매장	 -->
							</div>
						</form>

					</c:forEach>
				</div>
			</div>
			<form action="newBrand.jsp" method="post">
				<input class="rectangle-41" type="submit" value="매장등록" />

			</form>
		</div>
		<div class="sidebar-title">
			<img class="frame7" src="./invenBrand_img/frame6.svg" />
			<div class="restaurant-list">RestaurantList</div>
			<div class="rectangle-35"></div>
			<img class="frame8" src="./invenBrand_img/frame7.svg" />
			<div class="hi">Hi, 관리자님</div>
		</div>
	</div>

</body>
</html>