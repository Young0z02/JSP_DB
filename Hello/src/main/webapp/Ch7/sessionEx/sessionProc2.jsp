<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> sessionProc2.jsp </h2>
	<%
		//String id = request.getParameter("id");
		String id = (String) session.getAttribute("id");
		String password = (String) session.getAttribute("password");
	%>
	
	<p> id : <%= id %> </p>
	<p> password : <%= password %> </p>

	
</body>
</html>