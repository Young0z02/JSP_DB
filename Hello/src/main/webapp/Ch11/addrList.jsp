<%@page import="addrBook.addressDo" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 새로운 주소정보 입력폼(addrList.jsp) </h2>
		<hr>
		<a href="addrForm.jsp"> 새로운 주소록 추가하기 </a>
		<table width="1200" border="1">
			<tr height="40"> 
				<td width="150" align="center"> 번호 </td>
				<td width="150" align="center"> 이름 </td>
				<td width="150" align="center"> 전화번호 </td>
				<td width="150" align="center"> 이메일 </td>
				<td width="150" align="center"> 취미 </td>
				<td width="150" align="center"> 직업 </td>
		</tr>
		
		<jsp:useBean id="adao" class="addrBook.addressDao" />
		
		<%
			ArrayList<addressDo> aList = adao.getAllAddr();
			for(int i =0; i <aList.size(); i++) {
				addressDo ado = aList.get(i);
		%>
			<tr height="40">
			<td width="150" align="center"> <%= ado.getNum() %> </td>
			<td width="150" align="center"> 
			<a href="addrInfo.jsp?num=<%=ado.getNum()%>">
			<%= ado.getName() %>
			</a>
			</td>
			<td width="150" align="center"> <%= ado.getTel()%> </td>
			<td width="150" align="center"> <%= ado.getEmail() %> </td>
			<td width="150" align="center"> <%= ado.getHobby() %> </td>
			<td width="150" align="center"> <%= ado.getJob() %> </td>
			</tr>
		<%	
			}
		%>
		
		
		</table>
</body>
</html>