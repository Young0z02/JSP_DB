<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> action include 연습(footer)</h2>
	<h5>파라메터 출력 페이지</h5>
	<p> 이메일 : <%= request.getParameter("email") %> </p>
	<p> 전화번호 : <%= request.getParameter("tel") %> </p>

</body>
</html>