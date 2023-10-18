<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container" 
	style="max-width: 600px; 
	border: 1px solid #ccc; 
	border-reaius:5px; 
	margin-top:50px; 
	box-shadow: 0 10px 20px raba(0,0,0,0.3);
	padding:20px;
	">
		<p class="text-start fs-1 fw-bold">Registration Form</p>
		<form action="requestProcBoot.jsp" method="post">
		
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-4">Username</label>
				<input type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="username">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-4">Email</label>
				<input type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="email">

			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-4">Telephone</label>
				<input type="tel" class="form-control" id="exampleInputEmail1"
					aria-describedby="tel">
			</div>

			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-4">Hobby</label>
				<select class="form-select" aria-label="Default select example"
					name="hobby">
					<option value="Swimming">Swimming</option>
					<option value="Walking">Walking</option>
					<option value="Breathing">Breathing</option>
				</select>
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label fs-4">Jobs</label>
				<div class="form-check">
					<input class="form-check-input" type="checkbox"
						value="Sortware Engineer" id="flexCheckDefault" name=jobs>
					<label class="form-check-label" for="flexCheckDefault">
						Software Engineer </label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="AI Engineer"
						id="flexCheckChecked" name=jobs> <label
						class="form-check-label" for="flexCheckChecked"> AI
						Engineer </label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="checkbox"
						value="UI/UX Enginner" id="flexCheckChecked" name=jobs> <label
						class="form-check-label" for="flexCheckChecked"> UI/UX
						Engineer </label>
				</div>
			</div>
		
		<button type="submit" class="btn btn-primary">Submit</button>
		<button type="reset" class="btn btn-primary">reset</button>
</form>
	</div>
</body>
</html>