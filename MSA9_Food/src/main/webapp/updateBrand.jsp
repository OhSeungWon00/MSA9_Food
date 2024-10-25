<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/updateBrand1.css">
<link rel="stylesheet" href="./css/updateBrand2.css">
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

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  <form action="updateBrand_pro.jsp" method="post">
    	<input type="text" id= "searchname" name="searchname">
    	<input type="submit" value="검색">
    </form>  수동검색 -->

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
			<img class="frame5" src="./invenBrand_img/frame4.svg" />

			<form action="updateBrand_pro2.jsp" method="post" >

				<div class="div5">매장명</div>
				<input class="rectangle-44" type="text" id="name" name="name" value="${ name }">
				<div class="div6">주소</div>
				<input class="rectangle-45" type="text" id="location" name="location" value="${ location }">
				<div class="div7">전화번호</div>
				<input class="rectangle-46" type="text" id="phone" name="phone" value="${ phone }">
				<div class="div8">매장설명</div>
				<textarea class="rectangle-47" rows="5" cols="40" name="content" id="content" style="background-color: white;">${ content }</textarea>
				
				<input class="rectangle-50" type="submit" value="매장수정">
			</form>
			
			<form action="fileupload_pro.jsp" method="post" enctype="multipart/form-data">
				<p class="h"></p>			<!-- 데려가야됨 -->
				<input type="hidden" name="brandId" value="${ brandId }"/> 
				<input type="hidden" name="brandname" value="${ name }"/> 
				<div class="div3">파일선택</div>
				<input class="div3" type="file" name="file" multiple />
<!-- 				<div class="rectangle-48"></div> -->
				
				<div class="rectangle-43"></div>
				<div class="div4">첨부파일</div>
				<p><input type="submit" class="rectangle-49" value="사진등록" /></p>
			</form>
				
		</div>
		<div class="sidebar-title">
			<img class="frame6" src="./invenBrand_img/frame5.svg" />
			<div class="restaurant-list-modify">RestaurantList &gt; Modify</div>
			<div class="rectangle-35"></div>
			<img class="frame7" src="./invenBrand_img/frame6.svg" />
			<div class="hi">Hi, 관리자님</div>
		</div>
	</div>

</body>
</html>
