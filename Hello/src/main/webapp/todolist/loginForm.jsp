<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 로그인 </h2>
	
<form action="loginProc.jsp" method="get">
<table border="1">
	<tr height="50">
		<td align="center" width="150"> 닉네임 </td>
		<td align="center" width="250"> <input type="text" name="username"> </td>
	</tr>
	
	<tr height="50">
		<td align="center" width="150"> 비밀번호 </td>
		<td align="center" width="250"> <input type="text" name="password"> </td>
	</tr>
	
	<tr height="50">
		<td align="center" colspan="2">
			<input type="submit" value="로그인">
	
</table>
</form>
</body>
</html>