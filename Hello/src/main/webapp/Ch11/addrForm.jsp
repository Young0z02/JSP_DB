<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 새로운 주소정보 입력폼(addrForm.jsp) </h2>
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
				<td width="100"> 취미 </td>
				<td width="300">
					<!-- <input type="text" name="hobby"> -->
					
					<select name="hobby">
					<option value="tennis"> 테니스 </option>
					<option value="run"> 달리기 </option>
					<option value="eat"> 먹기 </option>
					</select>
			 </td>
			 </tr>
			  	<tr height="50" align="center">
				<td width="100"> 직업 </td>
				<td width="300">
					<!-- <input type="text" name="job"> -->
					<input type="checkbox" name="job" value="웹백엔드"> 웹백엔드
					<input type="checkbox" name="job" value="웹프론트"> 웹프론트
					<input type="checkbox" name="job" value="UI/UX"> UI/UX
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