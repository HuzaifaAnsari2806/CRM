<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%-- <%@include file="./home.jsp" %> --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
</head>
<body>
	<h1>CRM - Customer relationship Manager</h1>
	<div class="container">
	<form action="" method="post">
		<div class="row mb-3">
			<label for="firstName" class="col-sm-2 col-form-label">First
				Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="fname">
			</div>
		</div>
		<div class="row mb-3">
			<label for="lastName" class="col-sm-2 col-form-label">Last
				Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="lname">
			</div>
		</div>
		<div class="row mb-3">
			<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="inputEmail">
			</div>
		</div>
		<div class="container">
				<button type="submit" class="btn btn-primary">Save</button>
				<a href="${pageContext.request.contextPath }" class="btn btn-outline-danger">Back</a>
		</div>
	</form>
	</div>
</body>
</html>