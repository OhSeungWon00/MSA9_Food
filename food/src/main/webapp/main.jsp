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
  <link rel="stylesheet" href="./css/main.css">
  <link rel="stylesheet" href="./css/main2.css">
  	<jsp:include page="/layout/meta.jsp" />
	<jsp:include page="/layout/link.jsp" />
  
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
  <title>메인페이지</title>
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
  <div class="div">
    <div class="main">
      <div class="content-2">
        <div class="content-title">Best Restaurant</div>
        <div class="content-2-1">
          <img class="image-2" src="./img/image-20.png" />
          <div class="div2">한국 최초 여성 중식 스타 셰프...</div>
        </div>
        <div class="content-2-2">
          <img class="image-2" src="./img/image-21.png" />
          <div class="div2">한국 최초 여성 중식 스타 셰프...</div>
        </div>
        <div class="content-2-3">
          <img class="image-2" src="./img/image-22.png" />
          <div class="div2">한국 최초 여성 중식 스타 셰프...</div>
        </div>
        <img class="frame" src="frame0.svg" />
        <img class="frame2" src="frame1.svg" />
      </div>
      <div class="content">
        <div class="content-title2">Black and White Chef</div>
        <div class="content-1">
          <img  class="image-1"  src="./img/image-10.png"    />
          <div class="_1">
            <span>
              <span class="_1-span">
                4.5
                <br />
              </span>
              <span class="_1-span2"><a href="brand_info_review.jsp">초이닷</a></span>
            </span>
          </div>
          <img class="icon-star" src="icon-star0.svg" />
          <div class="div3">
            청담동
            <br />
            <br />
            이탈리아 음식
          </div>
          <div class="div4">
            마늘넣은 봉골레
            <br />
            가자미 미역국
          </div>
          <div class="eye">12487</div>
          <div class="like">9567</div>
          <img class="icon-like" src="icon-like0.svg" />
          <img class="icon-eye" src="icon-eye0.svg" />
        </div>
        <div class="content-22">
          <img class="image-1" src="./img/image-11.png" />
          <div class="_1">
            <span>
              <span class="_1-span3">
                4.5
                <br />
              </span>
                 <span class="_1-span2"><a href="brand_info_review.jsp">초이닷</a></span>
            </span>
          </div>
          <img class="icon-star2" src="icon-star1.svg" />
          <div class="div3">
            청담동
            <br />
            <br />
            이탈리아 음식
          </div>
          <div class="div4">
            마늘넣은 봉골레
            <br />
            가자미 미역국
          </div>
          <div class="eye">12487</div>
          <div class="like">9567</div>
          <img class="icon-like2" src="icon-like1.svg" />
          <img class="icon-eye2" src="icon-eye1.svg" />
        </div>
        <div class="content-3">
          <img class="image-1" src="./img/image-12.png"  />
          <div class="_1">
            <span>
              <span class="_1-span5">
                4.5
                <br />
              </span>
                <span class="_1-span2"><a href="brand_info_review.jsp">초이닷</a></span>
            </span>
          </div>
          <img class="icon-star3" src="icon-star2.svg" />
          <div class="div3">
            청담동
            <br />
            <br />
            이탈리아 음식
          </div>
          <div class="div4">
            마늘넣은 봉골레
            <br />
            가자미 미역국
          </div>
          <div class="eye">12487</div>
          <div class="like">9567</div>
          <img class="icon-like3" src="icon-like2.svg" />
          <img class="icon-eye3" src="icon-eye2.svg" />
        </div>
        <div class="content-4">
          <img class="image-1" src="./img/image-13.png" />
          <div class="_1">
            <span>
              <span class="_1-span7">
                4.5
                <br />
              </span>
                <span class="_1-span2"><a href="brand_info_review.jsp">초이닷</a></span>
            </span>
          </div>
          <img class="icon-star4" src="icon-star3.svg" />
          <div class="div3">
            청담동
            <br />
            <br />
            이탈리아 음식
          </div>
          <div class="div4">
            마늘넣은 봉골레
            <br />
            가자미 미역국
          </div>
          <div class="eye">12487</div>
          <div class="like">9567</div>
          <img class="icon-like4" src="icon-like3.svg" />
          <img class="icon-eye4" src="icon-eye3.svg" />
        </div>
        <div class="content-5">
          <img class="image-1" src="./img/image-14.png" />
          <div class="_1">
            <span>
              <span class="_1-span9">
                4.5
                <br />
              </span>
                <span class="_1-span2"><a href="brand_info_review.jsp">초이닷</a></span>
            </span>
          </div>
          <img class="icon-star5" src="icon-star4.svg" />
          <div class="div3">
            청담동
            <br />
            <br />
            이탈리아 음식
          </div>
          <div class="div4">
            마늘넣은 봉골레
            <br />
            가자미 미역국
          </div>
          <div class="eye">12487</div>
          <div class="like">9567</div>
          <img class="icon-like5" src="icon-like4.svg" />
          <img class="icon-eye5" src="icon-eye4.svg" />
        </div>
        <div class="content-6">
          <img class="image-1" src="./img/image-15.png" />
          <div class="_1">
            <span>
              <span class="_1-span11">
                4.5
                <br />
              </span>
                 <span class="_1-span2"><a href="brand_info_review.jsp">초이닷</a></span>
            </span>
          </div>
          <img class="icon-star6" src="icon-star5.svg" />
          <div class="div3">
            청담동
            <br />
            <br />
            이탈리아 음식
          </div>
          <div class="div4">
            마늘넣은 봉골레
            <br />
            가자미 미역국
          </div>
          <div class="eye">12487</div>
          <div class="like">9567</div>
          <img class="icon-like6" src="icon-like5.svg" />
          <img class="icon-eye6" src="icon-eye5.svg" />
        </div>
      </div>
      <div class="banner">
        <div class="banner-1">
          <img class="bannerimg-1" src="./img/bannerimg-10.png" />
          <img class="bannerimg-2" src="./img/bannerimg-20.png" />
        </div>
      </div>
    </div>
   
    <div class="header">
        <div class="container6">
          <div class="navigation-list">
          </div>
          <div class="fieldset">
            <img class="image" src="./img/image0.png" />
            <div class="input">
            </div>
          </div>
        </div>
        <div class="navigation">
          <div class="div29" >  <a href="login.jsp">로그인</a></div>
          <div class="div30"> <a href="signup.jsp">회원가입</a></div>
        </div>
        <div class="div31">흑대백(Logo)</div>
      </div>
    </div>
  
</body>
</html>