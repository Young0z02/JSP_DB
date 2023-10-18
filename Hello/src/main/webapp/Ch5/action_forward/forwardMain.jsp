<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> forwardMain.jap</h2>
	<jsp:forward page ="forwardFooter.jsp">
		<jsp:param value ="test@test.net" name="email"/>
		<jsp:param value ="111-1111-1111" name="tel"/>
	</jsp:forward>
</body>
</html>