<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todolist - 글 등록</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #F0F4F8;
    text-align: center;
  }
  
  h2 {
    margin-top: 30px;
    color: #333;
  }
  
  table {
    margin: 30px auto;
    background-color: #FFF;
    border-collapse: collapse;
    width: 600px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
  }
  
  table tr th,
  table tr td {
    padding: 20px;
  }
  
  table tr th {
    background-color: #F5F7FA;
    font-weight: bold;
    text-align: center;
    color: #333;
    border-bottom: 1px solid #E0E4E8;
  }
  
  table tr td input[type="text"] {
    width: 100%;
    padding: 5px;
    border: 1px solid #E0E4E8;
    border-radius: 4px;
  }
  
  table tr td input[type="submit"] {
    padding: 8px 20px;
    background-color: #4CAF50;
    color: #FFF;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
</style>
</head>
<body>
  <h2>TODOLIST 등록</h2>
  
  <form action="todoProc.jsp" method="get">
    <table>
      <tr>
        <th>닉네임</th>
        <td><input type="text" name="name"></td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td><input type="text" name="passwd"></td>
      </tr>
      <tr>
        <th>작성일</th>
        <td><input type="text" name="wdate"></td>
      </tr>
      <tr>
        <th>메모</th>
        <td><input type="text" name="memo"></td>
      </tr>
      <tr>
        <th>고정할 내용</th>
        <td><input type="text" name="check_w"></td>
      </tr>
      <tr>
        <th>공유할 내용</th>
        <td><input type="text" name="share"></td>
      </tr>
      <tr>
        <th>날짜 정하기</th>
        <td><input type="text" name="tdate"></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="등록하기"></td>
      </tr>
    </table>
  </form>
</body>
</html>
    