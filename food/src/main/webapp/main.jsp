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
	<%-- [Contents] ######################################################### --%>
	<jsp:include page="/layout/footer.jsp" />
	<jsp:include page="/layout/script.jsp" />
	<script src="<%= root %>/static/js/index.js"></script>
</body>
</html>