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
		<hr>
		<jsp:include page="adder.jsp">
			<jsp:param value="3" name="a1"/>
			<jsp:param value="5" name="b1"/>
		</jsp:include>
</body>
</html>