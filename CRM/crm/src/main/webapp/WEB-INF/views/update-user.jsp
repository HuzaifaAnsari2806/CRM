<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><c:out value="${ title }">CRM</c:out></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../crm/home.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">

				<h1 class="text-center mb-3">Welcome to CRM</h1>
				<h5 class="text-center mb-3">Update Credentials</h5>

				<div class="container">
					<form action="${ pageContext.request.contextPath }/handler-user" method="post">
					<div class="row mb-3">
							<label for="uId" class="col-sm-2 col-form-label">Id</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="Id" value="${ data.id }">
							</div>
						</div>
						<div class="row mb-3">
							<label for="firstName" class="col-sm-2 col-form-label">First
								Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="fname" value="${ data.fname }">
							</div>
						</div>
						<div class="row mb-3">
							<label for="lastName" class="col-sm-2 col-form-label">Last
								Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="lname" value="${ data.lname }">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" name="email" value="${ data.email }">
							</div>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Save</button>
							<a href="${pageContext.request.contextPath }"
								class="btn btn-outline-dark">Back</a>
						</div>
					</form>
				</div>
			</div>


		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>