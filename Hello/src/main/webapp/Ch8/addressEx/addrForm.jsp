<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> addrForm.jsp </h2>
		<form action="addrProc.jsp" method="get">
			<table border="1">
				<tr height="50" align="center">
					<td width="100"> 이름 </td>
					<td width="300">
						<input type="text" name="name">
				</td>
			</tr>
			<tr height="50" align="center">
				<td width="100"> 전화번호 </td>
				<td width="300">
					<input type="text" name="tel">
			 </td>
			 </tr>
			 	<tr height="50" align="center">
				<td width="100"> 이메일 </td>
				<td width="300">
					<input type="text" name="email">
			 </td>
			 </tr>
			 <tr height="50" align="center">
				<td width="100"> 직업 </td>
				<td width="300">
					<input type="text" name="job">
			 </td>
			 
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