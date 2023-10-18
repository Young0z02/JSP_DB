<%@page import="todolist.todoDao"%>
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
    /* 추가한 스타일 */
    .completed {
        text-decoration: line-through;
        color: #888888;
    }
</style>
</head>
<body>
<%@ include file="nav.jsp" %>
<hr>
<a href="todoForm.jsp" class="btn btn-primary">TODOLIST 추가하기</a>
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
        ArrayList<todoDo> aList = adao.getAllAddr();
        for(int i = 0; i < aList.size(); i++) {
            todoDo ado = aList.get(i);
    %>
    <tr>
        <td><%= ado.getNum() %></td>
        <td>
            <%-- 완료된 할 일인 경우 클래스를 추가하여 스타일을 변경함 --%>
            <a href="todoInfo.jsp?num=<%=ado.getNum()%>" class="<%= ado.isCompleted() ? "completed" : "" %>">
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
            <form method="post" action="completeTodo.jsp">
                <input type="hidden" name="num" value="<%= ado.getNum() %>">
                <button type="submit" class="btn btn-primary">완료</button>
            </form>
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
	<%
	    // 완료된 할 일 처리
	    String numParam = request.getParameter("num");
	    todoDao dao = new todoDao(); 
	    
	    if (numParam != null && !numParam.isEmpty()) {
	        int num = Integer.parseInt(numParam);
	        dao.setCompleted(num, true);  
	    }
	
	%>
</body>
</html>
