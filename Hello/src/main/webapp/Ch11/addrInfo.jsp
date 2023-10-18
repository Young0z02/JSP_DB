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
	<h2> 수정할 주소록 보기 (addrInfo.jsp) </h2>
	<hr>
	
	<jsp:useBean id="adao" class="addrBook.addressDao"/>
	
	<%
		//어떤 주소 데이터를 수정할지 데이터 가져오기
		int num = Integer.parseInt(request.getParameter("num"));
	
		//dao에서 getOneAddr() 이용하여 num에 해당되는 데이터 가져오기
		addressDo ado = adao.getOneAddr(num);

	%>
	 <table border="1">
      <tr height="50" align="center">
         <td width="100"> 이름 </td>
            <td width="300"> 
               <!-- <input type="text" name="name"> -->
               <%= ado.getName() %>
            </td>
         </tr>
         <tr height="50" align="center">
         <td width="100"> 전화번호 </td>
            <td width="300"> 
               <!--  <input type="text" name="tel"> -->
               <%= ado.getTel() %>
            </td>
         </tr>
      <tr height="50" align="center">
         <td width="100"> 이메일 </td>
            <td width="300"> 
               <!-- <input type="text" name="email"> -->
               <%= ado.getEmail() %>
            </td>
         </tr>   
      <tr height="50" align="center">
         <td width="100"> 취미 </td>
            <td width="300"> 
               <!--input type="text" name="hobby"> -->
               <%= ado.getHobby() %>
               <!-- <select name="hobby">
                  <option value = "tennis"> 테니스 </option>
                  <option value = "run"> 달리기 </option>
                  <option value = "breath"> 숨쉬기 </option>
               </select> -->
            
            </td>
         </tr>
      <tr height="50" align="center">
         <td width="100"> 직업 </td>
            <td width="300"> 
               <!-- input type="text" name="job"> 
               <input type = "checkbox" name="job" value="웹백엔드"> 웹백엔드
               <input type = "checkbox" name="job" value="웹프론트"> 웹프론트
               <input type = "checkbox" name="job" value="UI/UX"> UI/UX -->
               <%= ado.getJob() %>
            </td>
         </tr>    
         
      <tr height="50" align="center">
         <td colspan="2" align="center">
            <input type="button" value="수정하기"
            onclick="location.href='addrModify.jsp?num=<%= ado.getNum() %>'">
            <input type="button" value="삭제하기"
            onclick="location.href='addrDelete.jsp?num=<%= ado.getNum() %>'">
            <input type="button" value="목록보기"
            onclick="location.href='addrList.jsp?'">
         </td>
      </tr>   
	</table>
</body>
</html>