<%@page import="addrBook.addressDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> addrModify.jsp (주소록 수정하기)</h2>

	<jsp:useBean id="adao" class="addrBook.addressDao"/>
	
	<%
		//어떤 주소 데이터를 수정할지 데이터 가져오기
		int num = Integer.parseInt(request.getParameter("num"));
	
		//dao에서 getOneAddr() 이용하여 num에 해당되는 데이터 가져오기
		addressDo ado = adao.getOneAddr(num);

	%>
	
	<form action="addrModifyProc.jsp" method="get">
	
	 <table border="1">
      <tr height="50" align="center">
         <td width="100"> 이름 </td>
            <td width="300"> 
               <input type="text" value=" <%= ado.getName() %>" name="name">
            </td>
         </tr>
         <tr height="50" align="center"> 
         <td width="100"> 전화번호 </td>
            <td width="300"> 
                 <input type="text" value=" <%= ado.getTel() %> " name="tel">
            </td>
         </tr>
      <tr height="50" align="center">
         <td width="100"> 이메일 </td>
            <td width="300"> 
  				<input type="text" value="  <%= ado.getEmail() %> " name="email">     
            </td>
         </tr>   
      <tr height="50" align="center">
         <td width="100"> 취미 </td>
            <td width="300"> 
             <input type="text" value="<%= ado.getHobby() %>" name="hobby">   
            </td>
         </tr>
      <tr height="50" align="center">
         <td width="100"> 직업 </td>
            <td width="300"> 
                <input type="text" value="  <%= ado.getJob() %>" name="hobby">   
            </td>
         </tr>    
         
         <tr height="50" align="center">
         <td colspan="2" align="center">
            <input type="hidden" name="num" value="<%= ado.getNum() %>" >
            <input type="submit" value="수정하기">
            <input type="button" value="목록보기"
            onclick="location.href='addrList.jsp'">
         </td>
      </tr>
	
	</table>
</form>
</body>
</html>