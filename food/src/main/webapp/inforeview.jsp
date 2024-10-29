<%@page import="food.DTO.Review"%>
<%@page import="java.util.List"%>
<%@page import="food.Service.ReviewServiceImpl"%>
<%@page import="food.Service.ReviewService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String root = request.getContextPath();
	ReviewService reviewService = new ReviewServiceImpl();
	List<Review> reviewList = reviewService.list();
	System.out.println(reviewList);
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/inforeview1.css">
  <link rel="stylesheet" href="./css/inforeview2.css">
  
  
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
              <img class="image" src="./inforeview_img/image0.png" />
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
          <img class="my-page" src="./inforeview_img/my-page0.svg" />
          <img class="_1" src="./inforeview_img/_10.png" />
        </div>
      </div>
      <div class="div4">비아 톨레도 파스타바</div>
      <div class="div5">매장정보</div>
      <div class="div6">메뉴</div>
      <div class="div7">리뷰</div>
      <div class="div8">예약하기</div>
      <img class="vector-16" src="./inforeview_img/vector-160.svg" />
      <img class="vector-13" src="./inforeview_img/vector-130.svg" />
      <img class="frame" src="./inforeview_img/frame0.svg" />
      <div class="_496">496개 리뷰 평균 평점</div>
      <img class="vector" src="./inforeview_img/vector0.svg" />
      <div class="_5">5점</div>
      <div class="_4">4점</div>
      <div class="_3">3점</div>
      <div class="_2">2점</div>
      <div class="_12">1점</div>
      <div class="_4-8">4.8</div>
      <div class="rectangle-147"></div>
      <div class="rectangle-149"></div>
      <div class="rectangle-151"></div>
      <div class="rectangle-153"></div>
      <div class="rectangle-155"></div>
      <div class="rectangle-148"></div>
      <div class="rectangle-150"></div>
      <div class="rectangle-152"></div>
      <div class="rectangle-154"></div>
      <div class="rectangle-156"></div>
      <div class="_388">388</div>
      <div class="_84">84</div>
      <div class="_21">21</div>
      <div class="_13">1</div>
      <div class="_22">2</div>
      <div class="frame2"></div>
      <div class="frame-22">
      
      <!-- 리뷰생성 -->
      <c:set var="reviewList" value="<%= reviewList %>"></c:set>
      <c:forEach var="review" items="${reviewList}" varStatus="status">
        <div class="group-20">
          <div class="group-19">
            <img class="vector2" src="./inforeview_img/vector1.svg" />
            <div class="bsy-7021">${review.userId }</div>
            <div class="_5-0">${review.rating}</div>
            <div class="_2024-10-22">${review.regdate }</div>
            <img class="rectangle-157" src="./inforeview_img/rectangle-1570.svg" />
            <div class="div9">${review.content}</div>
          </div>
        </div>
      </c:forEach>
       <!-- 리뷰생성 끝 -->
      </div>
      <button class="div11" onclick="location.href='newinforeview.jsp'">리뷰쓰기</button>
    </div>
  </div>
  
</body>
</html>
