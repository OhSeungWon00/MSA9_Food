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
                <th><input type="checkbox" onclick="selectAll(this)"></th>
                <th>회원ID</th>
                <th>회원이름</th>
                <th>이메일</th>
                <th>액션</th>
            </tr>
        </thead>
        <tbody>
            <!-- 여기서부터 회원 목록 반복 -->
            <c:set var="userList" value="<%= userList %>" />
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td><input type="checkbox" name="selectedUsers" value="${user.userId}"></td>
                    <td>${user.userId}</td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                    <td>
                    	<button type="button">수정</button>
                    	<button type="button" onclick="deleteUser('${user.userId}')">삭제</button>
                    </td>
                </tr>
            </c:forEach>
            <!-- 여기까지 회원 목록 반복 -->
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

    <!-- 수정 및 삭제 버튼 -->
    <div style="margin-top: 20px; text-align: center;">
        <button type="submit" class="btn btn-delete" name="action" value="delete">선택 삭제</button>
    </div>
</form>

<script>
    function selectAll(checkbox) {
        var checkboxes = document.getElementsByName('selectedUsers');
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = checkbox.checked;
        }
    }
    
    function deleteUser(userId) {
    	location.href = "<%= root %>/admin/user/delete.jsp?userId=" + userId
    }
</script>

</body>
</html>
