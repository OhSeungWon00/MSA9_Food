<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>project💻 - 미니 3조🌴</title>
	<jsp:include page="/layout/meta.jsp" />
	<jsp:include page="/layout/link.jsp" />
	<link href="<%= root %>/static/css/style.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/layout/header.jsp" />
	<%-- [Contents] ######################################################### --%>
	
	<div class="container">
		<div class="banner">
			 <div class="banner-img">
		         <img src="<%= root %>/img/banner1.png" width="600px" height="350"	/>
		     </div>
		     <div class="banner-img">
		         <img src="<%= root %>/img/banner2.png" width="600px" height="350"	/>
		     </div>
		     <div class="banner-img">
		         <img src="<%= root %>/img/banner3.png" width="600px" height="350"	/>
		     </div>
		     <div class="banner-img">
		         <img src="<%= root %>/img/banner4.png" width="600px" height="350"	/>
		     </div>			 
		</div>
	</div>
	
	<div class="content1">
	    <div class="section-title">Black and White Chef</div>
	    <div class="restaurant-bw">
	        <div class="restaurant-card1" onclick="window.location.href='<%= root %>/index_page.jsp'">
	            <img src="<%= root %>/img/restaurant1.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.9</div>
	                <div class="restaurant-name">디핀 deepin</div>
	                <div class="restaurant-location">흥인동</div>
	                <div class="restaurant-cuisine">코스요리</div>
	                <div class="restaurant-details">다이닝&amp;와인바를 지향하는 디핀입니다!</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 14339</span>
	                    <span>❤️ 13975</span>
	                </div>
	            </div>
	        </div>
	        <div class="restaurant-card2" onclick="window.location.href='<%= root %>/index_page2.jsp'">
	            <img src="<%= root %>/img/restaurant2.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.8</div>
	                <div class="restaurant-name">트리드</div>
	                <div class="restaurant-location">청담동</div>
	                <div class="restaurant-cuisine">코스요리</div>
	                <div class="restaurant-details">미쉐린 3스타 레스토랑 출신 흑백요리사!</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 14121</span>
	                    <span>❤️ 10137</span>
	                </div>
	            </div>
	        </div>
	        <div class="restaurant-card3"  onclick="window.location.href='<%= root %>/index_page3.jsp'">
	            <img src="<%= root %>/img/restaurant3.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.5</div>
	                <div class="restaurant-name">네기스키야키</div>
	                <div class="restaurant-location">압구정동</div>
	                <div class="restaurant-cuisine">일식</div>
	                <div class="restaurant-details">한우 1++ 등심으로 즐기는 정통 스키야키!</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 13487</span>
	                    <span>❤️ 9567</span>
	                </div>
	            </div>
	        </div>
	        <div class="restaurant-card4">
	            <img src="<%= root %>/img/restaurant4.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.9</div>
	                <div class="restaurant-name">도량</div>
	                <div class="restaurant-location">통의동</div>
	                <div class="restaurant-cuisine">중화 요리</div>
	                <div class="restaurant-details">한국인 입맛에 맞는 한국식 중식당!</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 13181</span>
	                    <span>❤️ 7837</span>
	                </div>
	            </div>
	        </div>
	        <div class="restaurant-card5">
	            <img src="<%= root %>/img/restaurant5.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.3</div>
	                <div class="restaurant-name">로컬릿x스텔라 고데메이</div>
	                <div class="restaurant-location">옥수동</div>
	                <div class="restaurant-cuisine">한국 음식</div>
	                <div class="restaurant-details">스텔라 스페셜 코스요리!</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 12483</span>
	                    <span>❤️ 6918</span>
	                </div>
	            </div>
	        </div>
	        <div class="restaurant-card6">
	            <img src="<%= root %>/img/restaurant6.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.8</div>
	                <div class="restaurant-name">비아 톨레도 파스타바</div>
	                <div class="restaurant-location">용산구</div>
	                <div class="restaurant-cuisine">이탈리아 음식</div>
	                <div class="restaurant-details">이탈리아 현지의 맛이 있는 파스타!</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 11487</span>
	                    <span>❤️ 6315</span>
	                </div>
	            </div>
	        </div>
	        <div class="restaurant-card7">
	            <img src="<%= root %>/img/restaurant7.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.5</div>
	                <div class="restaurant-name">초이닷</div>
	                <div class="restaurant-location">청담동</div>
	                <div class="restaurant-cuisine">이탈리아 음식</div>
	                <div class="restaurant-details">마늘빵은 필수메뉴! 가지와 미역국</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 10467</span>
	                    <span>❤️ 5984</span>
	                </div>
	            </div>
	        </div>
	        <div class="restaurant-card8">
	            <img src="<%= root %>/img/restaurant8.jpg" alt="레스토랑 이미지" class="restaurant-image">
	            <div class="restaurant-info">
	                <div class="restaurant-rating">★ 4.6</div>
	                <div class="restaurant-name">티엔미미 홍대</div>
	                <div class="restaurant-location">동교동</div>
	                <div class="restaurant-cuisine">중식</div>
	                <div class="restaurant-details">딤섬을 기반으로 광동식 중국요리!</div>
	                <div class="restaurant-stats">
	                    <span>👁️ 9317</span>
	                    <span>❤️ 4756</span>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	
	<div class="content2">
	    <div class="section-title">Best Restaurant</div>
	    <div class="best-restaurant-grid">
	        <div class="best-restaurant-card">
	            <img src="<%= root %>/img/best1.jpg" alt="베스트 레스토랑 이미지" class="best-restaurant-image">
	            <div class="restaurant-caption">한국 최초 여성 중식 스타 셰프...</div>
	        </div>
	        <div class="best-restaurant-card">
	            <img src="<%= root %>/img/best2.jpg" alt="베스트 레스토랑 이미지" class="best-restaurant-image">
	            <div class="restaurant-caption">미쉐린 3스타 레스토랑 출신...</div>
	        </div>
	        <div class="best-restaurant-card">
	            <img src="<%= root %>/img/best3.jpg" alt="베스트 레스토랑 이미지" class="best-restaurant-image">
	            <div class="restaurant-caption">만화책으로 요리를 시작한...</div>
	        </div>
	    </div>
	</div>
	<div class="underLine-up"></div>
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
	<script src="<%= root %>/static/js/index.js"></script>
</body>
</html>