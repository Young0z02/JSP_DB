<%@page import="todolist.todoDo" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todolist</title>
<!-- 부트스트랩 CDN 링크 추가 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #ffffff;
        padding: 20px;
    }
    .card {
        margin-bottom: 20px;
    }
    .card-header {
        background-color: #f5f5f5;
        font-weight: bold;
    }
    .card-body {
        padding: 10px;
    }
    .card-footer {
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
</style>
</head>
<body>
<%@ include file="nav.jsp" %>
<hr>
<a href="todoForm.jsp" class="btn btn-primary">TODOLIST 추가하기</a>

 <jsp:useBean id="adao" class="todolist.todoDao" />
<!-- 카드 형식으로 변경된 목록 -->
<% 
    ArrayList<todoDo> aList = adao.getAllAddr();
    for(int i = 0; i < aList.size(); i++) {
        todoDo ado = aList.get(i);
%>
<div class="card">
    <div class="card-header">
        번호: <%= ado.getNum() %>
    </div>
    <div class="card-body">
        <h5 class="card-title">닉네임: <%= ado.getName() %></h5>
        <p class="card-text">
            비밀번호: <%= ado.getPasswd() %><br>
            작성일: <%= ado.getWdate() %><br>
            메모: <%= ado.getMemo() %><br>
            고정 체크리스트: <%= ado.getCheck_w() %><br>
            공유하기: <%= ado.getShare() %><br>
            날짜: <%= ado.getTdate() %>
        </p>
    </div>
    <div class="card-footer text-center">
        <a href="todoModify.jsp?num=<%=ado.getNum()%>" class="btn btn-primary">수정</a>
        <a href="todoDelete.jsp?num=<%=ado.getNum()%>" class="btn btn-danger">삭제</a>
    </div>
</div>
<%  
    }
%>
<!-- 부트스트랩 CDN 스크립트 추가 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
