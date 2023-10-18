<%@page import="register.registerDo"%>
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
   <h2> registerProc2.jsp </h2>
   <!--  여기서는 Do, Dao 이용하여 어플 구현  -->
   <jsp:useBean id= "rdo" class = "register.registerDo">
      <jsp:setProperty name="rdo" property="*" />
   </jsp:useBean>
   
   <p> name : <jsp:getProperty property="name" name="rdo"/> </p>
   <p> email : <jsp:getProperty property="email" name="rdo"/> </p>
   
   <jsp:useBean id ="rdao" class="register.registerDao" />
   <%
      //입력된 데이터 (Do) 디비에 저장!!
      out.println(rdo.getName());
      rdao.insertRegister(rdo);
   %>
   <h2> 등록된 이벤트 전체 목록</h2>
   <hr>
   <%
      ArrayList<registerDo> aList = rdao.getAllRegister();
      for (int i = 0; i <aList.size(); i++) {
         registerDo temp = aList.get(i);
            out.println((i+1) + ": name -> " + temp.getName() +
                  ", email -> " + temp.getEmail() + "<br>");
         }
      
   
   %>
   
</body>
</html>