<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> out 객체연습 </h2>
	<%
		String subject ="jsp proframming";
	
		out.println("웹 서버 프로그래밍 언어 중에, 현재 " + subject + "을 공부하고 있습니다. <br>");
		out.write("웹 서버 프로그래밍 언어 중에, 현재 " + subject + "을 공부하고 있습니다. <br>");
	%>

</body>
</html>