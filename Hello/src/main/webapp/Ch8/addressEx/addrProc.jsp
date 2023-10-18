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
<jsp:useBean id="aBean" class="address.addrDo">
		<jsp:setProperty name="aBean" property="*" />
	</jsp:useBean>
	
	<!--  DAO 객체를 이용하여 입력된 ArrayList에 저장 -->
	<jsp:useBean id ="aDao" class="address.addrDao" scope="application" />
	<%
		aDao.insertAddr(aBean);	
	%>
	
	
			<table border="1">
				<tr height="50" align="center">
					<td width="100"> 이름 </td>
					<td width="300">
					<%= aBean.getName() %>
				</td>
			</tr>
			<tr height="50" align="center">
				<td width="100"> 전화번호 </td>
				<td width="300">
					<%= aBean.getTel() %>
			 </td>
			 </tr>
			 	<tr height="50" align="center">
				<td width="100"> 이메일 </td>
				<td width="300">
					<%= aBean.getEmail() %>
			 </td>
			 </tr>
			 <tr height="50" align="center">
				<td width="100"> 직업 </td>
				<td width="300">
					<%= aBean.getJob() %>
			 </td>
			 </tr>
		</table>
		
		<a href="addrList.jsp"> 전체 주소록 보기 </a>
		
</body>
</html>