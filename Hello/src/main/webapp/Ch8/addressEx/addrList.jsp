<%@page import="address.addrDo"%>
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
	<h2> 모든 주소록 보기 (addrList.jsp) </h2>
	<a href="addrForm.jsp"> 주소록 추가</a>
		<table border="1">
				<tr height="50">
					<td width="100"> 이름 </td>
					<td width="100"> 전화번호 </td>
					<td width="100"> 이메일 </td>
					<td width="100"> 직업 </td>
					
			</tr>
			<jsp:useBean id="aDao" class="address.addrDao" scope="application"/>
			<%
				//저장되어 있는 모든 주소록 데이터 가져오기 (Dao 객체활용) ...
				ArrayList<addrDo> v = aDao.getAddr();
				
				for(int i=0; i < v.size(); i++) {
					addrDo ado = v.get(i);
			%>
				<tr height="50" align="center">
						<td width="100"> <%=ado.getName() %> </td>
						<td width="100"> <%=ado.getTel() %> </td>
						<td width="100"> <%=ado.getEmail() %> </td>
						<td width="100"> <%=ado.getJob() %> </td>
			<%
				}
			%>
		</table>
</body>
</html>