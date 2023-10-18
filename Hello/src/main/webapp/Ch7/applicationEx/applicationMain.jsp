<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> applicationMain.jsp</h2>
	<h3> 서버 정보</h3>
	<p> 서버 정도 : <%= application.getServerInfo() %></p>
	<hr>
	<%
		application.setAttribute("username", "hong");
		application.setAttribute("count", 1);
	%>
	<a href="applicationProc.jsp"> applicationProc.jsp 페이지 방문 </a>
</body>
</html>