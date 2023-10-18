<%@page import="todolist.todoDo" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todolist</title>
<style>
    body {
        background-color: #ffffff;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #dddddd;
    }
    th {
        background-color: #f5f5f5;
    }
    .btn {
        padding: 6px 12px;
        margin-bottom: 0;
        font-size: 14px;
        font-weight: normal;
        line-height: 1.42857143;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        cursor: pointer;
        border: 1px solid transparent;
        border-radius: 4px;
    }
    .btn-primary {
        color: #ffffff;
        background-color: #007bff;
        border-color: #007bff;
    }
    .btn-primary:hover {
        background-color: #0069d9;
        border-color: #0062cc;
    }
    .btn-danger {
        color: #ffffff;
        background-color: #dc3545;
        border-color: #dc3545;
    }
    .btn-danger:hover {
        background-color: #c82333;
        border-color: #bd2130;
    }
    .list-divider {
        border-top: 1px solid #dddddd;
        margin-top: 10px;
    }
</style>
</head>
<body>
<%@ include file="nav.jsp" %>
<hr>
<form action="todolists.jsp" method="GET">
    <input type="text" name="keyword" placeholder="검색어를 입력하세요">
    <select name="sortOption">
        <option value="name_asc">이름 (오름차순)</option>
        <option value="name_desc">이름 (내림차순)</option>
        <option value="date_asc">작성일 (오름차순)</option>
        <option value="date_desc">작성일 (내림차순)</option>
    </select>
    <input type="submit" value="검색 및 정렬" class="btn btn-primary">
</form>
<table>
    <tr>
        <th>번호</th>
        <th>닉네임</th>
        <th>비밀번호</th>
        <th>작성일</th>
        <th>메모</th>
        <th>고정 체크리스트</th>
        <th>공유하기</th>
        <th>날짜</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <jsp:useBean id="adao" class="todolist.todoDao" />
    <%
        String keyword = request.getParameter("keyword");
        String sortOption = request.getParameter("sortOption");
        ArrayList<todoDo> aList = adao.searchAndSortAddr(keyword, sortOption);
        for(int i = 0; i < aList.size(); i++) {
            todoDo ado = aList.get(i);
    %>
    <tr>
        <td><%= ado.getNum() %></td>
        <td>
            <a href="todoInfo.jsp?num=<%=ado.getNum()%>">
                <%= ado.getName() %>
            </a>
        </td>
        <td><%= ado.getPasswd() %></td>
        <td><%= ado.getWdate() %></td>
        <td><%= ado.getMemo() %></td>
        <td><%= ado.getCheck_w() %></td>
        <td><%= ado.getShare() %></td>
        <td><%= ado.getTdate() %></td>
        <td>
            <a href="todoModify.jsp?num=<%=ado.getNum()%>" class="btn btn-primary">수정</a>
        </td>
        <td>
            <a href="todoDelete.jsp?num=<%=ado.getNum()%>" class="btn btn-danger">삭제</a>
        </td>
    </tr>
    <tr class="list-divider">
        <td colspan="10"></td>
    </tr>
    <%  
        }
    %>
</table>
</body>
</html>
