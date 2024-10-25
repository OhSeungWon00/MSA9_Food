<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

<!-- 
  <style>
   a,
   button,
   input,
   select,
   h1,
   h2,
   h3,
   h4,
   h5,
   * {
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
  <div class="div">
  
  
    <form class="frame-20" action="newBrand_pro.jsp" method="post" >
    
      <div class="rectangle-14"></div>
      <div class="rectangle-15"></div>
      <div class="rectangle-11"></div>
      
      <div class="rectangle-5" >
      	<input class="new_btn" type="submit" value="매장등록"/>
      </div>
      	
      <div class="div3">사진등록</div>
      
      
      <div class="div4">매장명</div>
      <div class="div5"><input type="text" name="name" id="name"/></div>
      
      
      <div class="div6">주소</div>
      <div class="group-37">
        <div class="rectangle-12"></div>
        <div class="_177-27"><input type="text" name="location" id="location"/></div>
      </div>
      
      <div class="rectangle-13"></div>
      <div class="div8">전화번호</div>
      <div class="_032-5656-5656"><input type="text" name="phone" id="phone"></div>
      <div class="div7">매장설명</div>
      
        <textarea class="_3" rows="5" cols="40" name = "content" id="content" style="background-color: white;"></textarea>
      
    </form>
    
 
    <div class="frame-18">
      <div class="rectangle-1"></div>
      <div class="div9">회원관리</div>
      <div class="rectangle-17"></div>
      <div class="div10">리뷰관리</div>
      <div class="rectangle-18"></div>
      <div class="div11">매장관리</div>
      <div class="rectangle-19"></div>
      <div class="div12">예약관리</div>
    </div>
  </div>  -->
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
			<form action="newBrand_pro.jsp" method="post">

				<div class="div5">매장명</div>
				<input class="rectangle-44" type="text" id="name" name="name"/>
				<div class="div6">주소</div>
				<input class="rectangle-45" type="text" id="location" name="location"/>
				<div class="div7">전화번호</div>
				<input class="rectangle-46" type="text" id="phone" name="phone"/>
					
				<div class="div8">매장설명</div>
				<textarea class="rectangle-47" rows="5" cols="40" name="content"
					id="content" style="background-color: white;"></textarea>

				<input class="rectangle-50" type="submit" value="매장등록"/>
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
</html>
