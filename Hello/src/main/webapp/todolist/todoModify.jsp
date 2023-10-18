 <%@page import="todolist.todoDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        background-color: #ffffff;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #dddddd;
    }
    th {
        background-color: #f5f5f5;
    }
    .btn {
        padding: 6px 12px;
        margin-bottom: 0;
        font-size: 14px;
        font-weight: normal;
        line-height: 1.42857143;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        cursor: pointer;
        border: 1px solid transparent;
        border-radius: 4px;
    }
    .btn-primary {
        color: #ffffff;
        background-color: #007bff;
        border-color: #007bff;
    }
    .btn-primary:hover {
        background-color: #0069d9;
        border-color: #0062cc;
    }
    .btn-danger {
        color: #ffffff;
        background-color: #dc3545;
        border-color: #dc3545;
    }
    .btn-danger:hover {
        background-color: #c82333;
        border-color: #bd2130;
    }
    .list-divider {
        border-top: 1px solid #dddddd;
        margin-top: 10px;
    }
</style>
</head>
<body>
    <h2> todo 수정할 내용 </h2>

    <jsp:useBean id="adao" class="todolist.todoDao"/>
    
    <%
    //어떤 주소 데이터를 수정할지 데이터 가져오기
    int num = Integer.parseInt(request.getParameter("num"));
    
    //dao에서 getOneAddr() 이용하여 num에 해당되는 데이터 가져오기
    todoDo ado = adao.getOneAddr(num);

    %>
    
    <form action="todoModifyProc.jsp" method="get">
    
     <table border="1">
          <tr height="50" align="center">
             <td width="100"> 이름 </td>
                <td width="300"> 
                   <input type="text" value=" <%= ado.getName() %>" name="name">
                </td>
             </tr>
             <tr height="50" align="center"> 
             <td width="100"> 비밀번호 </td>
                <td width="300"> 
                    <input type="text" value=" <%= ado.getPasswd() %> " name="passwd">
                </td>
             </tr>
          <tr height="50" align="center">
             <td width="100"> 작성일 </td>
                <td width="300"> 
                    <input type="text" value="  <%= ado.getWdate() %> " name="wdate">     
                </td>
             </tr>   
          <tr height="50" align="center">
             <td width="100"> 메모 </td>
                <td width="300"> 
                 <input type="text" value="<%= ado.getMemo() %>" name="memo">   
                </td>
             </tr>
          <tr height="50" align="center">
             <td width="100"> 고정할 내용 </td>
                <td width="300"> 
                    <input type="text" value="  <%= ado.getCheck_w() %>" name="check_w">   
                </td>
             </tr>    
             
           <tr height="50" align="center">
            <td width="100"> 공유하기 </td>
               <td width="300"> 
                   <input type="text" value="  <%= ado.getShare() %>" name="share">   
               </td>
            </tr>    
            
             <tr height="50" align="center">
            <td width="100"> 날짜 </td>
               <td width="300"> 
                   <input type="text" value="  <%= ado.getTdate() %>" name="tdate">   
               </td>
            </tr>    
             
             <tr height="50" align="center">
             <td colspan="2" align="center">
                <input type="hidden" name="num" value="<%= ado.getNum() %>" >
                <input type="submit" value="수정하기">
                <input type="button" value="목록보기" onclick="location.href='.jsp'">
             </td>
          </tr>
        
    </table>
</form>
</body>
</html>
