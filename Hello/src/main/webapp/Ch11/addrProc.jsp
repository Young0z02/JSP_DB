<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2> addrBookProc.jsp </h2>
   <%
      request.setCharacterEncoding("utf-8");
   %>
   
   <!--  -->
   <jsp:useBean id="ado" class="addrBook.addressDo"/>
   <jsp:setProperty property="*" name="ado"/>
   
   <!-- dao 클래스를 이용해 입력값 저장(insertAddr()) -->
   <jsp:useBean id="adao" class="addrBook.addressDao"/>
   
   <%
      
      String[] job = request.getParameterValues("job");
      String jobText = "";
      for(int i =0 ; i<job.length; i++){
         jobText += job[i] + " ";
      }
      //out.print("jobText : "+ jobText);
      ado.setJob(jobText);
      adao.insertAddr(ado);
   
   %>
   <a href="addrList.jsp"> 전체 주소록 보기 </a>
    <table border="1">
         <tr height="60" align="center">
            <td width="100"> 이름 </td>
            <td width="300"> 
              <!-- <input type="text" name="name"> -->
              <%=ado.getName() %>
            </td>   
         </tr>
         <tr height="60" align="center">
            <td width="100"> 전화번호 </td>
            <td width="300">
               <!-- <input type="text" name="tel"> -->
               <%=ado.getTel() %>
            </td>   
         </tr>
         <tr height="60" align="center">
            <td width="100"> 이메일 </td>
            <td width="300">
               <!-- <input type="text" name="email"> -->
               <%=ado.getEmail() %>
            </td>   
         </tr>
         <tr height="60" align="center">
            <td width="100"> 취미 </td>
            <td width="300">
               <!-- <select name = "hobby">
                     <option name="tennis">테니스</option>
                     <option name="run">달리기</option>
                     <option name="eat">먹기</option>
               </select> -->
               <%=ado.getHobby() %>
            </td>   
         </tr>
         <tr height="60" align="center">
            <td width="100"> 직업 </td>
            <td width="300">
               <!-- <input type="checkbox" name="job" value="웹벡엔드">웹벡엔드
               <input type="checkbox" name="job" value="웹프론트">웹프론트
               <input type="checkbox" name="job" value="UI/UX"> UI/UX -->
               <%=ado.getJob() %>
            </td>   
         </tr>
    </table>

</body>
</html>