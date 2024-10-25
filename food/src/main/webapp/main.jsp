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
      <div class="content-2">
        <div class="content-title">Best Restaurant</div>
        <div class="content-2-1">
          <img class="image-2" src="./main_img/image-20.png" />
          <div class="div2">한국 최초 여성 중식 스타 셰프...</div>
        </div>
        <div class="content-2-2">
          <img class="image-2" src="./main_img/image-21.png" />
          <div class="div2">한국 최초 여성 중식 스타 셰프...</div>
        </div>
        <div class="content-2-3">
          <img class="image-2" src="./main_img/image-22.png" />
          <div class="div2">한국 최초 여성 중식 스타 셰프...</div>
        </div>
        <img class="frame" src="./main_img/frame0.svg" />
        <img class="frame2" src="./main_img/frame1.svg" />
      </div>
      <div class="content">
        <div class="content-title2">Black and White Chef</div>
        <div class="content-1">
          <img class="image-1" src="./main_img/image-10.png" />
          <div class="_1">
            <span>
              <span class="_1-span">
                4.5
                <br />
              </span>
              <span class="_1-span2">초이닷</span>
            </span>
          </div>
          <img class="icon-star" src="./main_img/icon-star0.svg" />
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
          <img class="icon-like" src="./main_img/icon-like0.svg" />
          <img class="icon-eye" src="./main_img/icon-eye0.svg" />
        </div>
        <div class="content-22">
          <img class="image-1" src="./main_img/image-11.png" />
          <div class="_1">
            <span>
              <span class="_1-span3">
                4.5
                <br />
              </span>
              <span class="_1-span4">초이닷</span>
            </span>
          </div>
          <img class="icon-star2" src="./main_img/icon-star1.svg" />
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
          <img class="icon-like2" src="./main_img/icon-like1.svg" />
          <img class="icon-eye2" src="./main_img/icon-eye1.svg" />
        </div>
        <div class="content-3">
          <img class="image-1" src="./main_img/image-12.png" />
          <div class="_1">
            <span>
              <span class="_1-span5">
                4.5
                <br />
              </span>
              <span class="_1-span6">초이닷</span>
            </span>
          </div>
          <img class="icon-star3" src="./main_img/./main_img/icon-star2.svg" />
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
          <img class="icon-like3" src="./main_img/icon-like2.svg" />
          <img class="icon-eye3" src="./main_img/icon-eye2.svg" />
        </div>
        <div class="content-4">
          <img class="image-1" src="./main_img/image-13.png" />
          <div class="_1">
            <span>
              <span class="_1-span7">
                4.5
                <br />
              </span>
              <span class="_1-span8">초이닷</span>
            </span>
          </div>
          <img class="icon-star4" src="./main_img/icon-star3.svg" />
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
          <img class="icon-like4" src="./main_img/icon-like3.svg" />
          <img class="icon-eye4" src="./main_img/icon-eye3.svg" />
        </div>
        <div class="content-5">
          <img class="image-1" src="./main_img/image-14.png" />
          <div class="_1">
            <span>
              <span class="_1-span9">
                4.5
                <br />
              </span>
              <span class="_1-span10">초이닷</span>
            </span>
          </div>
          <img class="icon-star5" src="./main_img/icon-star4.svg" />
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
          <img class="icon-like5" src="./main_img/icon-like4.svg" />
          <img class="icon-eye5" src="./main_img/icon-eye4.svg" />
        </div>
        <div class="content-6">
          <img class="image-1" src="./main_img/image-15.png" />
          <div class="_1">
            <span>
              <span class="_1-span11">
                4.5
                <br />
              </span>
              <span class="_1-span12">초이닷</span>
            </span>
          </div>
          <img class="icon-star6" src="./main_img/icon-star5.svg" />
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
          <img class="icon-like6" src="./main_img/icon-like5.svg" />
          <img class="icon-eye6" src="./main_img/icon-eye5.svg" />
        </div>
      </div>
      <div class="banner">
        <div class="banner-1">
          <img class="bannerimg-1" src="./main_img/bannerimg-10.png" />
          <img class="bannerimg-2" src="./main_img/bannerimg-20.png" />
        </div>
      </div>
    </div>
    <div class="footer">
      <div class="list">
        <img class="item-link" src="./main_img/item-link0.png" />
        <img class="item-link2" src="./main_img/item-link1.png" />
        <img class="item-link3" src="./main_img/item-link2.png" />
      </div>
      <div class="container">
        <div class="container2">
          <div class="list2">
            <div class="item-link4">
              <div class="div5">고객센터</div>
            </div>
            <div class="item-link5">
              <div class="div5">공지사항</div>
            </div>
          </div>
          <div class="list3">
            <div class="div6">
              <ul class="div-6-span">
                <li>기업 서비스</li>
              </ul>
            </div>
            <div class="div7">
              <div class="div8">서비스 소개</div>
            </div>
            <div class="div9">
              <div class="div10">사업 개요</div>
            </div>
            <div class="div11">
              <div class="div12">흑대백 스튜디오</div>
            </div>
          </div>
          <div class="list4">
            <div class="item">
              <ul class="item-span">
                <li>기업 정보</li>
              </ul>
            </div>
            <div class="div13">
              <div class="div14">회사소개</div>
            </div>
            <div class="div15">
              <div class="div16">인재 채용</div>
            </div>
          </div>
          <div class="list5">
            <div class="div17">
              <ul class="div-17-span">
                <li>문의</li>
              </ul>
            </div>
            <div class="div18">
              <div class="div19">마케팅・광고・제휴 문의</div>
              <div class="svg">
                <img class="vector" src="./main_img/vector0.svg" />
                <img class="mask-group" src="./main_img/mask-group0.svg" />
              </div>
            </div>
            <div class="div20">
              <div class="div21">서비스 이용 문의</div>
              <div class="svg2">
                <img class="vector2" src="./main_img/vector1.svg" />
                <img class="mask-group2" src="./main_img/mask-group1.svg" />
              </div>
            </div>
          </div>
        </div>
        <div class="list6">
          <div class="item-link6">
            <div class="div22">이용약관</div>
          </div>
          <div class="item2">
            <div class="link">
              <div class="emphasis">
                <div class="div23">개인정보 처리방침</div>
              </div>
            </div>
            <div class="vertical-divider"></div>
          </div>
          <div class="item3">
            <div class="link2">
              <div class="div24">청소년 보호정책</div>
            </div>
            <div class="vertical-divider"></div>
          </div>
          <div class="item4">
            <div class="link2">
              <div class="div24">사업자정보 확인</div>
            </div>
            <div class="vertical-divider"></div>
          </div>
        </div>
        <div class="address">
          <div class="container3">
            <div class="div25">대표이사 : 오승원</div>
            <div class="vertical-divider2"></div>
            <div class="_123-45-67891">사업자 등록번호 : 123-45-67891</div>
            <div class="vertical-divider3"></div>
            <div class="_2024-10-21">통신판매업 신고번호 : 2024-10-21 부평구</div>
          </div>
          <div class="container4">
            <div class="_385">인천 광역시 부평구 부흥로 385번길</div>
            <div class="vertical-divider4"></div>
            <div class="_1588-8282">1588-8282</div>
            <div class="vertical-divider5"></div>
            <div class="bsy-7021-naver-com">bsy7021@naver.com</div>
          </div>
        </div>
        <div class="div26">(주)흑대백컴퍼니</div>
        <div class="all-rights-reserved">ALL RIGHTS RESERVED</div>
        <div class="chrome-microsoft-edge">
          본 사이트는 Chrome 및 Microsoft Edge 브라우저에서 사용 가능합니다.
        </div>
      </div>
      <div class="dialog">
        <div class="background"></div>
      </div>
    </div>
    <div class="header">
      <div class="container5">
        <div class="container6">
          <div class="navigation-list">
            <div class="item-link7">둘러보기</div>
            <div class="item-link8">보관함</div>
            <div class="item-link9">이용권</div>
          </div>
          <div class="fieldset">
            <img class="image" src="./main_img/image0.png" />
            <div class="input">
              <div class="container7">
                <div class="div27">검색어를 입력하세요.</div>
              </div>
            </div>
          </div>
        </div>
        <div class="navigation">
          <div class="div28">식당 찾기</div>
          <div class="div29">로그인</div>
          <div class="div30">회원가입</div>
        </div>
        <img class="my-page" src="./main_img/my-page0.svg" />
        <div class="div31">흑대백(Logo)</div>
      </div>
    </div>
    <div class="header2">
      <div class="container5">
        <div class="container8">
          <div class="fieldset2">
            <img class="image" src="./main_img/image1.png" />
            <div class="input">
              <div class="container7">
                <div class="div27">검색어를 입력하세요.</div>
              </div>
            </div>
          </div>
        </div>
        <div class="navigation2">
          <div class="div29">로그인</div>
          <div class="div32">회원가입</div>
        </div>
        <img class="my-page2" src="my-page1.svg" />
        <img class="_12" src="./main_img/_16.png" />
      </div>
    </div>
  </div>
  
</body>
</html>