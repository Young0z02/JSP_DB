<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> calcMain.jsp </h2>
	<form action="calcProc.jsp" method="post">
	<input type="text" name="num1">
	<select name="operator">
		<option selected> + </option>
		<option> - </option>
		<option> * </option>
		<option> / </option>
		</select>
		<input type="text" name="num2" width=200 size=10>
		&nbsp &nbsp
		<input type="submit" value="계산">
		<input type="reset" value="다시입력">
	</form>
</body>
</html>