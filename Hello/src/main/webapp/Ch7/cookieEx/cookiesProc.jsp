<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> cookiesProc.jsp </h2>
	<%
	String id = request.getParameter("id");
	String save = request.getParameter("save");
	if(save != null) {
		//쿠키정보 생성
		Cookie cookie = new Cookie("id", id);
		//2. 유효기간 설정
		cookie.setMaxAge(60);
		//3. 클라이언트에 전송
		response.addCookie(cookie);
		out.println("쿠키 생성 완료 !!");
	}
	%>
	
	<p> 현재 접속한 id는 <%= id %> 입니다. </p>
</body>
</html>