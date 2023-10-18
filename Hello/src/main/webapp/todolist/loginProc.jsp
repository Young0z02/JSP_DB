<%@page import="login.loginDo"%>
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
   <%
      request.setCharacterEncoding("utf-8");
   %>
   
   <!--  -->
   <jsp:useBean id="ado" class="login.loginDo"/>
   <jsp:setProperty property="*" name="ado"/>
   
   <!-- dao 클래스를 이용해 입력값 저장(insert_todo()) -->
   <jsp:useBean id="adao" class="login.loginDao"/>
   
    <%
    //이 부분이 있어야 insert가 됨
      adao.insertlogin(ado);
   %>
   
    <table border="1">
         <tr height="60" align="center">
            <td width="100"> 닉네임 </td>
            <td width="300"> <%=ado.getUsername() %> </td>   
         </tr>

        <tr height="60" align="center">
           <td width="100"> 비밀번호 </td>
           <td width="300"> <%=ado.getPassword() %> </td>   
        </tr>
        
       <%
  	 	response.sendRedirect("main.jsp");
       %>
        
    </table>
</body>
</html>