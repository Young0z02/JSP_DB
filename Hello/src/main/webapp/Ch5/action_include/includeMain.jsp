<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> action include 연습(main)</h2>
	<hr>
	<jsp:include page="includeFooter.jsp">
		<jsp:param value="test@test.com" name="email"/>
		<jsp:param value="111-1111-1111" name="tel"/>
	</jsp:include>

</body>
</html>