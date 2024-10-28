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
        /* 회원관리 페이지 입니다 ( 회원 삭제 페이지) */

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0; /* 테이블의 여백 제거 */
        }
        table, th, td {
            border: none; /* 테이블과 셀의 경계선 삭제 */
            border-bottom: 1px solid lightgray; /* 가로선만 남김 */
            text-align: center;
        }
        th, td {
            padding: 10px;
        }
        th {
            font-weight: bold; /* 헤더 글씨 두껍게 */
        }
        .btn {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .btn-delete {
            background-color: #f44336;
            color: white;
            width: 120px; /* 삭제 버튼의 너비를 늘림 */
        }
        .container {
            border: 90px solid lavender; /* 두꺼운 라벤더 색 테두리 (너비 90px로 변경) */
            padding: 20px; /* 패딩 추가 */
            margin-top: 20px;
            position: relative; /* 자식 요소를 절대 위치로 설정할 수 있게 함 */
        }
        .header {
            color: black; /* 글씨 색상 검은색 */
            font-size: 20px; /* 글씨 크기 */
            margin-bottom: 10px; /* 아래 여백 */
        }
        .admin-greeting {
            position: absolute; /* 절대 위치로 설정 */
            right: 20px; /* 오른쪽으로 20px 떨어뜨림 */
            top: 20px; /* 위쪽으로 20px 떨어뜨림 */
            font-weight: bold; /* 글씨 두껍게 */
            color: black; /* 글씨 색상 검은색 */
        }
        .pagination {
            text-align: center; /* 페이지네이션 가운데 정렬 */
            margin: 20px 0;
        }
        .pagination a {
            color: black;
            padding: 8px 16px;
            text-decoration: none;
            border: none; /* 배경 색 없앰 */
            margin: 0 5px; /* 버튼 간격 추가 */
        }
        .delete-button {
            position: absolute; /* 오른쪽 하단에 배치 */
            bottom: 10px;
            right: 10px;
        }
        
    </style>
</head>
<body>

<form action="processUserAction.jsp" method="post">
    <div class="container">
        <div class="header">회원 관리</div> <!-- 라벤더 색 테두리 안에 회원 관리 텍스트 추가 -->
        <div class="admin-greeting">Hi, 관리자님</div> <!-- 우측 상단에 관리자님 텍스트 추가 -->
        <table>
            <thead>
                <tr>
                    <th>선택</th>
                    <th>번호</th>
                    <th>회원ID</th>
                    <th>회원이름</th>
                    <th>이메일</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="userList" value="<%= userList %>" />
                <c:forEach var="user" items="${userList}" varStatus="status">
                    <tr>
                        <td><input type="checkbox" name="userIds" value="${user.userId}"></td> <!-- 체크박스 추가 -->
                        <td>${status.index + 1}</td>
                        <td>${user.userId}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- 페이지네이션 -->
        <div class="pagination">
            <a href="?page=${pageInfo.page.prev}">&laquo;</a>
            <c:forEach var="page" begin="${pageInfo.page.start}" end="${pageInfo.page.end}">
                <a href="?page=${page}" class="<c:out value='${page == pageInfo.page.page ? "active" : ""}'/>">${page}</a>
            </c:forEach>
            <a href="?page=${pageInfo.page.next}">&raquo;</a>
        </div>

        <button type="button" class="btn btn-delete delete-button" onclick="deleteSelectedUsers()">삭제</button> <!-- 삭제 버튼 -->
    </div>
</form>

<script>
    function deleteSelectedUsers() {
        const checkboxes = document.querySelectorAll('input[name="userIds"]:checked'); // 체크된 체크박스 선택
        const userIds = Array.from(checkboxes).map(checkbox => checkbox.value); // 체크된 사용자 ID 추출

        if (userIds.length === 0) {
            alert('삭제할 회원을 선택하세요.'); // 선택된 회원이 없을 때 경고
            return;
        }

        if (confirm('정말로 선택한 회원 계정을 삭제하시겠습니까?')) {
            var form = document.createElement('form');
            form.method = 'POST';
            form.action = "<%= root %>/admin/user/deletePro.jsp";  // 삭제를 처리할 deletePro.jsp로 POST 요청

            userIds.forEach(userId => {
                var hiddenField = document.createElement('input');
                hiddenField.type = 'hidden';
                hiddenField.name = 'userIds'; // 배열 형태로 전송
                hiddenField.value = userId;
                form.appendChild(hiddenField);
            });

            document.body.appendChild(form);
            form.submit();  // 폼 제출
        }
    }
</script>

</body>
</html>
