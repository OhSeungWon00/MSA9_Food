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
  <link rel="stylesheet" href="./css/newBrand1.css">
  <link rel="stylesheet" href="./css/newbrand2.css">
  
  
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

</head>

<body>
  <div class="div">
    <div class="sidebar">
      <div class="user">
        <div class="user2">User</div>
        <img class="frame" src="./newbrand_img/frame0.svg" />
      </div>
      <div class="review">
        <div class="review2">Review</div>
        <img class="frame2" src="./newbrand_img/frame1.svg" />
      </div>
      <div class="restaurant">
        <div class="restaurant2">Restaurant</div>
        <img class="frame3" src="./newbrand_img/frame2.svg" />
      </div>
      <div class="restaurant3">
        <div class="reservation">Reservation</div>
        <img class="frame4" src="./newbrand_img/frame3.svg" />
      </div>
      <div class="div2">사이트명</div>
      <img class="_1" src="./newbrand_img/_10.png" />
    </div>
    <div class="review-list">
    
      <form action="newBrand_pro.jsp" method="post" >
	      <div class="div3">매장명</div>
	      <input class="rectangle-44" type="text" name="name" id="name"/>
	      <div class="div4">주소</div>
	      <input class="rectangle-45" type="text" name="location" id="location"/>
	      <div class="div5">전화번호</div>
	      <input class="rectangle-46" type="text" name="phone" id="phone">
	      <div class="div6">매장설명</div>
	      <textarea class="rectangle-47" rows="5" cols="40" name = "content" id="content" style="background-color: white;"></textarea>
      <input class="rectangle-50" type="submit" value="매장등록"/>
      </form>
    </div>
    <div class="sidebar-title">
      <img class="frame5" src="./newbrand_img/frame4.svg" />
      <div class="restaurant-list-upload">RestaurantList &gt; Upload</div>
      <div class="rectangle-35"></div>
      <img class="frame6" src="./newbrand_img/frame5.svg" />
      <div class="hi">Hi, 관리자님</div>
    </div>
  </div>
</body>

</html>
</html>
