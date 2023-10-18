<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  빈즈 객체 생성 -->
	<jsp:useBean id="login" class="model.loginBean">
	
	<%-- <jsp:setProperty name="login" property="userid"/>
		<jsp:setProperty name="login" property="userpassword"/> --%>
		
		<jsp:setProperty name="login" property="*" />
	</jsp:useBean>
	
	<%
		if(login.checkUser()) {
			out.print("로그인 성공 !! ");
		}
		else {
			out.print("로그인 실패 !!");
		}
	
	%>
	
	<h2> loginPric.jsp</h2>
	<p> id : <jsp:getProperty property="userid" name="login"/>
	<p> password : <jsp:getProperty property="userpassword" name="login"/>
	<p> email : <jsp:getProperty property="useremail" name="login"/>


	<%-- 처음 주석 처리 -->
	<p> id : <%= request.getParameter("userid") %> </p>
	<p> password : <%= request.getParameter("userpassword") %> </p> -->
	 --%>
	<%-- <%
			//DatabaseProc(id, password, ....)
		%> 
	 --%>
 	
</body>
</html>