<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><c:out value="${ title }">CRM</c:out></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="home.css" rel="stylesheet" type="text/css">
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
				<h5 class="text-center mb-3">Customer Relationship Management</h5>

				<table class="table table-light table-striped table-hover">
					<thead>
						<tr>
							<th scope="col">Sr.no</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Email</th>
							<th scope="col">Action</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${ data }" var="d">
							<tr>
								<th scope="row">${ d.id }</th>
								<td>${ d.fname }</td>
								<td>${ d.lname }</td>
								<td>${ d.email }</td>
								<td>
								    <a href="delete/${ d.id }" ><i class="fa-solid fa-trash-can"></i></a>
								    <a href="update/${ d.id }" ><i class="fa-regular fa-pen-to-square"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<div class="container text-center">

					<a href="AddCustomer" class="btn btn-outline-success">Add User</a>

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