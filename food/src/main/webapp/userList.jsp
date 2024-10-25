<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>
<%@ page import="food.Service.UserService" %>
<%@ page import="food.Service.UserServiceImpl" %>
<%@ page import="food.DTO.User" %>
<%@ page import="com.alohaclass.jdbc.dto.PageInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // 페이지 번호 설정
    String pageStr = request.getParameter("page");
    int pageNo = 1;
    if (pageStr != null) pageNo = Integer.parseInt(pageStr);
    
    // 서비스 호출
    UserService userService = new UserServiceImpl();
    PageInfo<User> pageInfo = userService.page(pageNo); // PageInfo 객체 가져오기
    List<User> userList = pageInfo.getList();           // PageInfo에서 사용자 리스트 가져오기
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>회원 관리</title>
  <link rel="stylesheet" href="./css/userList1.css">
  <link rel="stylesheet" href="./css/userList2.css">
</head>
<body>
  <div class="div">
    <div class="sidebar">
      <!-- 사이드바와 페이지 제목 -->
    </div>
    
    <div class="user-list">
      <!-- 회원 목록 헤더 -->
      <div class="div3">
        <div class="div4">번호</div>
        <div class="div5">회원이름</div>
        <div class="id">회원ID</div>
      </div>

      <!-- 회원 목록 반복 출력 -->
      <c:forEach var="user" items="${userList}" varStatus="status">
        <div class="frame-32">
          <div class="group-58">
            <div class="_13">${status.index + 1}</div> <!-- 순번 -->
            <div class="div6">${user.name}</div>       <!-- 회원 이름 -->
            <div class="bsy-7021">${user.userId}</div> <!-- 회원 ID -->
            
            <!-- 삭제 버튼 -->
            <button onclick="deleteUser('${user.userId}')" class="btn-delete">삭제</button>
          </div>
        </div>
      </c:forEach>
      <!-- 회원 목록 반복 끝 -->
    </div>

    <!-- 페이지네이션 -->
    <div class="pagenumber">
      <a href="?page=${pageInfo.page.prev}">&laquo;</a>
      <c:forEach var="page" begin="${pageInfo.page.start}" end="${pageInfo.page.end}">
        <a href="?page=${page}" class="${page == pageInfo.page.page ? 'active' : ''}">${page}</a>
      </c:forEach>
      <a href="?page=${pageInfo.page.next}">&raquo;</a>
    </div>
  </div>

  <!-- 삭제 기능 스크립트 -->
  <script>
    function deleteUser(userId) {
      if (confirm("정말로 회원 계정을 삭제하시겠습니까?")) {
        const form = document.createElement("form");
        form.method = "POST";
        form.action = "deleteUser.jsp"; // 실제 삭제 처리를 위한 JSP 경로
        
        const hiddenField = document.createElement("input");
        hiddenField.type = "hidden";
        hiddenField.name = "userId";
        hiddenField.value = userId;
        
        form.appendChild(hiddenField);
        document.body.appendChild(form);
        form.submit();
      }
    }
  </script>
</body>
</html>
