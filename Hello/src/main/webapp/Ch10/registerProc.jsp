<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> registerProc.jsp (등록자 확인 화면)</h2>
	<hr>
	
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		out.println("name : " + name);
		out.println("email : " + email);
	
		//MySql 디비 연동 시작 !!
		String id = "root";
		String password = "1111";
		String url ="jdbc:mysql://localhost:3307/jspdb_e?characterEnconding=utf-8";
		
		//디비 연동에 필요한 JDBC 클래스 선언
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
	%>
		<h2> 이벤트 전체 목록 </h2>
		<hr>
		<%		
		//sql : select * from register
		try {
			conn = DriverManager.getConnection(url, id, password);
			String sql = "select * from register";
			pstmt = conn.prepareStatement(sql);
			//SQL 문을 실행후에 결과를 rs에 저장함
			rs = pstmt.executeQuery();
			int i = 1;
			while(rs.next()){
				out.println(i + ": name ->" + rs.getString(1) +
				", email -> : " + rs.getString(2) + "<br>");
				i ++;
			}
			conn.close();
			out.println("select문 처리 완료 !!");
			
		}
		catch(SQLException e) {
			out.println(e);
		}
	
	%>

</body>
</html>