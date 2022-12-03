<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
<link rel="stylesheet" href="css/Assignment.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<p class="productN">${product.name}</p>
	<hr>
	<div class="row justify-content-center">
		<div class="p-5 col-xl-3 col-lg-4 col-md-6 col-12">
			<img class="img-fluid" alt="${product.name}" src="${product.src}">
			<p class="p-3 mb-2 text-uppercase text-center">${product.type}</p>
		</div>
		<div
			class="p-5 col-xl-3 col-lg-4 col-md-6 col-12 align-content-center">
			<p class="productP">$
				${product.price}</p>
			<p>${product.description}</p>
			<a class="btn btn-success bg-warning"
				href="./AddToCartController?id=${product.id}&action=add">Add to
				cart</a>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>
</html>