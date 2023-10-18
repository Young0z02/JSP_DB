<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> forwardLogin.jsp</h2>
	<form action ="responseLogin.jsp" method="post">
	
	<p> id: <input type="text" name="id"></p>
	<p> password : <input type="text" name="password"> </p>
	
	<p><input type="submit" value="확인"> </p>
	</form>
</body>
</html>