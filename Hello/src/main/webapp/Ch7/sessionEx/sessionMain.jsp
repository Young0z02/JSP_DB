<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> sessionMain.jsp</h2>

<form action="sessionProc1.jsp" method="post"> 
	<table border="1">
		<tr height="50" align="center">
			<td width="100"> 아이디 </td>
			<td width="300"> <input type="text" name="id"> </td>
		</tr>
		
		<tr height="50" align="center">
			<td width="100"> 비밀번호 </td>
			<td width="300"> <input type="text" name="password"> </td>
		</tr>
		
		<tr height="50" align="center">
			<td colspan="2">
				<input type="submit" value="확인">
				<input type="reset" value="취소">
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>