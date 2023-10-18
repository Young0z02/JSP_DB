<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> sessionProc1.jsp </h2>
	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		//세션 id이름으로 id 값 저장..
		session.setAttribute("id", id);
		session.setAttribute("password", password);

	%>
	
	<p> id : <%= id %> </p>
	<p> password : <%= password %> </p>
	
	<%
		response.sendRedirect("sessionProc2.jsp");
	%>
	
</body>
</html>