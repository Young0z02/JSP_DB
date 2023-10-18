<%@page import="todolist.todoDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2> todo </h2>
   <%
      request.setCharacterEncoding("utf-8");
   %>
   
   <!--  -->
   <jsp:useBean id="ado" class="todolist.todoDo"/>
   <jsp:setProperty property="*" name="ado"/>
   
   <!-- dao 클래스를 이용해 입력값 저장(insert_todo()) -->
   <jsp:useBean id="adao" class="todolist.todoDao"/>
   
    <%
    //이 부분이 있어야 insert가 됨
      adao.insertAddr(ado);
   %>
   
   <a href="todolist.jsp"> 전체 주소록 보기 </a>
    <table border="1">
         <tr height="60" align="center">
            <td width="100"> 닉네임 </td>
            <td width="300"> <%=ado.getName() %> </td>   
         </tr>

        <tr height="60" align="center">
           <td width="100"> 비밀번호 </td>
           <td width="300"> <%=ado.getPasswd() %> </td>   
        </tr>
        
        <tr height="60" align="center">
           <td width="100"> 작성일 </td>
           <td width="300"> <%=ado.getWdate() %> </td>   
        </tr>
       
        <tr height="60" align="center">
           <td width="100"> 메모 </td>
           <td width="300"> <%=ado.getMemo()%> </td>   
        </tr>
        
        <tr height="60" align="center">
           <td width="100"> 고정하기 </td>
           <td width="300"> <%=ado.getCheck_w()%> </td>   
        </tr>
        
        <tr height="60" align="center">
           <td width="100"> 공유하기 </td>
           <td width="300"> <%=ado.getShare()%> </td>   
        </tr>
        
        <tr height="60" align="center">
           <td width="100"> 날짜 </td>
           <td width="300"> <%=ado.getTdate() %> </td>   
        </tr>
        
           <%
  	 	response.sendRedirect("todolist.jsp");
       %>
       
       
        
    </table>
</body>
</html>