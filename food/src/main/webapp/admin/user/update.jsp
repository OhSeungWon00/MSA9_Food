<%-- JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="food.DTO.User"%>
<%@page import="java.util.List"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String root = request.getContextPath();
    UserService userService =  new UserServiceImpl();
    List<User> userList = userService.list();
    request.setCharacterEncoding("UTF-8");	
	response.setCharacterEncoding("UTF-8");	
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 관리</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
            text-align: center;
        }
        th, td {
            padding: 10px;
        }
        .btn {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .btn-edit {
            background-color: #4CAF50;
            color: white;
        }
        .btn-delete {
            background-color: #f44336;
            color: white;
        }
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .pagination a {
            color: black;
            padding: 8px 16px;
            text-decoration: none;
            border: 1px solid #ddd;
        }
        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border: 1px solid #4CAF50;
        }
    </style>
</head>
<body>

<h2>회원 관리</h2>

<form action="processUserAction.jsp" method="post">
    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>회원ID</th>
                <th>회원이름</th>
                <th>이메일</th>
                <th>관리</th>
            </tr>
        </thead>
        <tbody>
            <!-- 회원 목록 반복 -->
            <c:set var="userList" value="<%= userList %>" />
            <c:forEach var="user" items="${userList}" varStatus="status">
                <tr>
                    <!-- 번호를 status.index로 출력 -->
                    <td>${status.index + 1}</td>
                    <td>${user.userId}</td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td>
                        <button type="button" onclick="deleteUser('${user.userId}')">회원 삭제</button>
                    </td>
                </tr>
            </c:forEach>
            <!-- 회원 목록 반복 끝 -->
        </tbody>
    </table>

    <!-- 페이지네이션 -->
    <div class="pagination">
        <a href="#">&laquo;</a>
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
        <a href="#">&raquo;</a>
    </div>

</form>

<script>
    function updateUser(userId) {
        if (confirm('정말로 회원 수정을 하시겠습니까?')) {
            var form = document.createElement('form');
            form.method = 'POST';
            form.action = "<%= root %>/admin/user/updatePro.jsp"; 
            var hiddenField = document.createElement('input');
            hiddenField.type = 'hidden';
            hiddenField.name = 'userId';
            hiddenField.value = userId;

            form.appendChild(hiddenField);
            document.body.appendChild(form);
            form.submit();  // 폼 제출
        }
    }
</script>

</body>
</html>
