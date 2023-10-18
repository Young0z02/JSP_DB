<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> addrModifyProc.jsp (수정된 주소록 데이터 저장 부분)</h2>
	<hr>
	
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:useBean id="ado" class="addrBook.addressDo" />
	<jsp:setProperty property="*" name="ado" />
	
	<jsp:useBean id="adao" class='addrBook.addressDao' />
	
	<%
		//입력된 수정 데이터 확인
		out.println("name:" + ado.getName());
		adao.modifyAddr(ado);
		//업데이트 처리가 완료되면, 바로 전체 리스트 보기로 이동
		response.sendRedirect("addrList.jsp");
	
	%>
</body>
</html>