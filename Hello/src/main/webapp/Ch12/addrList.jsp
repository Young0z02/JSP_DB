<%@page import="addrBook.addressDo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css 라이브러리 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- js 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="adao" class="addrBook.addressDao" />

<%
	//주소록 전체 데이터 가져오기
	ArrayList<addressDo> aList = adao.getAllAddr();

%>


<div class="container">
	<div class="service-header text-center mb-5">
	<h1 class="display-4">
		Our Main Address Book
		</h1>
		<div class="Lead text-secondary">
		Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique optio saepe aperiam eum, unde tem
		</div>
	</div> 
  <div class="row">
  	<%
  		for (int i =0; i < aList.size(); i ++){
  			//aList 부터 하나씩 데이터 가져와서 ado에 저장...
  			addressDo ado = aList.get(i);
  	%>
  	    <div class="col">
      <div class="card" style="width: 18rem; margin: auto;">
  <img src="./assets/cat1.jpg" class="card-img-top" alt="..." style="height: 10rem;">
	  <div class="card-body">
	    <h5 class="card-title">Card title</h5>
	    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
	    <a href="#" class="btn btn-primary">Go somewhere</a>
		  </div>
	</div>
</div>
  	
  	
  	<%
  		}
  	%>
 </div>
 </div> 
</body>
</html>