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
	//클라이언트에 있는 모든 쿠키 읽어오기
	Cookie[] cookies = request.getCookies();
	String id = "";
	if(cookies != null) {
		for(int i =0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("id")){
				id = cookies[i].getValue();
				//원하는 id 값을 가져와서, break함
				break;
			}
		}
	}
	%>
	
	<h2> cookiesMain.jsp</h2>
	<form action="cookiesProc.jsp" method="post"> 
	<table border="1">
		<tr height="50" align="center">
			<td width="100"> 아이디 </td>
			<td width="300"> <input type="text" name="id" value=""> </td>
		</tr>
		<tr height="50" align="center">
			<td width="100"> 비밀번호 </td>
			<td width="300"> <input type="text" name="password"> </td>
		</tr>
		<tr height="50" align="center">
			<td colspan="2"> 
			아이디 저장 <input type="checkbox" name="save" value="1">
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