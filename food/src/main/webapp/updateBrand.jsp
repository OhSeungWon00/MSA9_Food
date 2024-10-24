<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>


    <h2>매장수정</h2>
    
    <form action="updateBrand_pro.jsp" method="post">
    	<input type="text" id= "searchname" name="searchname">
    	<input type="submit" value="검색">
    </form>
    
    
    <form action="updateBrand_pro2.jsp" method="post">
        <label for="name">매장명</label><br>
        <input type="text" id="name" name="name" value="${ name }" ><br><br>
        <label for="id">주소</label><br>
        <input type="text" id="location" name="location" value="${ location }"><br><br>
        <label for="id">전화번호</label><br>
        <input type="text" id="phone" name="phone" value="${phone}"><br><br>
        <label for="id">상세설명</label><br>
        <textarea class="_3" rows="5" cols="40" name = "content" id="content" style="background-color: white;" >${ content }</textarea>
		
        <input type="submit" value="수정">
    </form>
    <form action="index.jsp" method="post">
        <input type="submit" value="취소">
    </form>
    
</body>
</html>