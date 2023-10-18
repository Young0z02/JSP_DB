<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>include 액션태그(calc) </h2>
	<%
		String a = request.getParameter("a1");
		int a1 = Integer.parseInt(a);
		
		String b = request.getParameter("b1");
		int b1 = Integer.parseInt(b);
	%>
	
	<p> <%= a1 %> + <%= b1 %> = <%= a1+b1 %> </p>
	

</body>
</html>