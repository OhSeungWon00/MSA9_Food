<%@page import="food.DTO.User"%>
<%@page import="java.util.List"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
    UserService userService =  new UserServiceImpl();
    List<User> userList = userService.list();
    User user = userService.select(loginId);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/newinforeview1.css">
  <link rel="stylesheet" href="./css/newinforeview2.css">
  
  
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
    <div class="main">
      <div class="header">
        <div class="container">
          <div class="container2">
            <div class="fieldset">
              <img class="image" src="./newinforeview_img/image0.png" />
              <div class="input">
                <div class="container3">
                  <div class="div2">검색어를 입력하세요.</div>
                </div>
              </div>
            </div>
          </div>
          <div class="navigation">
            <div class="div3">로그아웃</div>
          </div>
          <img class="my-page" src="./newinforeview_img/my-page0.svg" />
          <img class="_1" src="./newinforeview_img/_10.png" />
        </div>
      </div>
      <div class="div4">비아 톨레도 파스타바</div>
      <div class="div5">매장정보</div>
      <div class="div6">메뉴</div>
      <div class="div7">리뷰</div>
      <div class="div8">예약하기</div>
      <img class="vector-16" src="./newinforeview_img/vector-160.svg" />
      <img class="vector-13" src="./newinforeview_img/vector-130.svg" />
      <img class="frame" src="./newinforeview_img/frame0.svg" />
      <div class="frame2"></div>
      <div class="frame-22">
            <!-- 작성칸 -->
        <form action="newinforeview_pro.jsp" method="post">
        <div class="group-20">
          <img class="vector-14" src="./newinforeview_img/vector-140.svg" />
          <div class="group-19">
            <img class="vector" src="./newinforeview_img/vector0.svg" />
            <!-- 브랜드이름정보 -->
            <input type="hidden" name="name" id="name" value="브랜드이름"></div>
            <!-- 작성자 -->
            <div class="bsy-7021">user.getUserId()</div>
            <input type="hidden" name="userId" id="userId" value="${user.getUserId()}"/>
            <!-- 평점 -->
            <input class="_5-0" type="number" name="rating" id="rating" value="5"/>
            <!-- 내용 -->
        	<textarea class="rectangle-157" name="content" id="content" placeholder="리뷰 내용 작성"></textarea>
            
          </div>
        	<!-- <img class="div11" src="./newinforeview_img/div9.svg" /> -->
        	<input class="div11" type="submit" value="작성하기">
        </form>
      </div>
    </div>
  </div>
  
</body>
</html>