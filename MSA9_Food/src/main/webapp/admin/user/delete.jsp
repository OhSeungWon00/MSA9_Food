<%@page import="com.alohaclass.jdbc.dto.PageInfo"%>
<%@ include file="/layout/jstl.jsp" %>
<%@ include file="/layout/common.jsp" %>
<%@page import="food.DTO.User"%>
<%@page import="java.util.List"%>
<%@page import="food.Service.UserServiceImpl"%>
<%@page import="food.Service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 페이지 번호
	String pageStr = request.getParameter("page");
	int pageNo = 1;
	if( pageStr != null )
		pageNo = Integer.parseInt( pageStr );
	
    UserService userService = new UserServiceImpl();
    PageInfo<User> pageInfo = userService.page(pageNo);
    List<User> userList = pageInfo.getList();
%>
<c:set var="pageInfo" value="<%= pageInfo %>" />
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
        <a href="?page=${pageInfo.page.prev}">&laquo;</a>
    	<c:forEach var="page" begin="${pageInfo.page.start}" end="${pageInfo.page.end}">
    		
		    <a href="?page=${page}" class="<c:out value='${page == pageInfo.page.page ? "active" : ""}'/>">${page}</a>
		</c:forEach>
        <a href="?page=${pageInfo.page.next}">&raquo;</a>
		    	
<!--         <a href="#" class="active">1</a> -->
<!--         <a href="#">2</a> -->
<!--         <a href="#">3</a> -->
<!--         <a href="#">4</a> -->
<!--         <a href="#">5</a> -->
    </div>

</form>

<script>
    function deleteUser(userId) {
        if (confirm('정말로 회원 계정을 삭제하시겠습니까?')) {
            var form = document.createElement('form');
            form.method = 'POST';
            form.action = "<%= root %>/admin/user/deletePro.jsp";  // 삭제를 처리할 deletePro.jsp로 POST 요청

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
