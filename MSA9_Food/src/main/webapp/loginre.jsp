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
  <link rel="stylesheet" href="./css/login1.css">
  <link rel="stylesheet" href="./css/login2.css">
  
  
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
  <title>login</title>
</head>
<body>
  <div class="div">
    <div class="main">
      <img class="div2" src="./login_img/div0.png" />
      <div class="div3"></div>
      <div class="div4"></div>
      <img class="div5" src="./login_img/div3.svg" />
      <img class="div6" src="./login_img/div4.svg" />
      <img class="div7" src="./login_img/div5.svg" />
      <div class="div8">Login</div>
      <form action="login_pro.jsp" method="post">
	      <input class="div11" type="text" id="userId" name="userId" placeholder="아이디" required>
	      <input class="div10" type="password" id="password" name="password" placeholder="비밀번호" required>
	      
	      <div class="div17"></div>
	      <div class="div13">아이디 기억하기</div>
	      
	      <div class="div18"></div>
	      <div class="div12">자동로그인</div>
	      
	      <input class="div9" type="submit" value="Login"/>
      </form>
      
      <!-- div 17번 18번이 자동로그인,아이디기억 체크박스 css  -->
      
      
      <button class="div14" onclick="location.href='signup.jsp'">회원가입</button>
      <button class="div16" onclick="location.href='main.jsp'">비회원 로그인</button>
    </div>
  </div>
</body>
</html>