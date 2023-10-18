<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<h2> requestProc.jsp</h2>
	<p> 이름 : <%= request.getParameter("name") %></p>
	<p> 직업 : <%= request.getParameter("job") %></p>
	<p> 취미 :
	<%
		String hobbies[] = request.getParameterValues("hobby");
		for(int i=0; i<hobbies.length; i++){
	%>
		<%=hobbies[i] %> &nbsp
	<% 
		}
	%>		
</p>
</body>
</html>