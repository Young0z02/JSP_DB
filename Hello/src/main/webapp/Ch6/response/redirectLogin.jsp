<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> res</h2>
		<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	%>
	<p> id : <%= id%> </p>
	<p> password : <%= password %> </p>
	
</body>
</html>