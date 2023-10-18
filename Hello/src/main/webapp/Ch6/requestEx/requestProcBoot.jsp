<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% request.setCharacterEncoding("utf-8"); %>
	<h2> requestProcBoot.jsp </h2>
	
	<p> username : <%=request.getParameter("username") %> </p>
	<p> email : <%=request.getParameter("email") %> </p>
	<p> tel : <%=request.getParameter("tel") %> </p>
	<p> hobby : <%=request.getParameter("hobby") %> </p>
	<p> job :
	
	<%
		String jobs[] = request.getParameterValues("jobs");
		for(int i =0; i < jobs.length; i++) {
		%>
			<%=jobs[i]%> &nbsp
			<%
			}
			%>
	</p>
</body>
</html>