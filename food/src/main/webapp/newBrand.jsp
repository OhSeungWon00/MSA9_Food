<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/newBrand1.css">
  <link rel="stylesheet" href="./css/newBrand2.css">
  
  
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
<body>
  <div class="div">
  	
  	<form action="<%= request.getContextPath() %>/fileupload/commons" method="post" enctype="multipart/form-data">
	    <div class="rectangle-14"></div>
	    <div class="rectangle-15"></div>
	    <div class="div2">
	    	<input type="file" name="file" multiple />
	    	<input type="submit" value="사진등록" />
	    </div>    
    </form>
  
    <form class="frame-20" action="newBrand_pro.jsp" method="post" >
    
      <div class="rectangle-11"></div>
      
      <div class="rectangle-5" >
      	<input class="new_btn" type="submit" value="매장등록"/>
      </div>
      	
      
      
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
    
    
    
    <!--  서브메뉴 -->
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
  </div>
  
</body>
</html>
