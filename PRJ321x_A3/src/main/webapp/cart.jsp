<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
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
	<c:import url="header.jsp" />
	<div class="row justify-content-center p-3 md-2">
		<table class="table table-bordered">
			<tr>
				<th>Products in cart: ${sessionScope.cart.items.size()}</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Amount</th>
				<th></th>
			</tr>
			<c:forEach var="product" items="${sessionScope.cart.items}">
				<tr>
					<td>${product.name}
					<p>ID: ${product.id}</p>
					</td>
					<td>($) ${product.price}</td>
					<td>1</td>
					<td>${product.price}</td>
					<td><a class="btn btn-danger"
						href="./AddToCartController?id=${product.id}&action=delete">Remove</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5" style="text-align: right;" colspan="S">Total: ($) <c:out
						value="${sessionScope.cart.amount}" /></td>			
				</tr>
		</table>
		<form class="cartform" name="form-group" action="PayController"
			onsubmit="return cartValidate()" method="post">
			<label class="col-3" for="name">Customer's name:</label> <input
				class="col-6" type="text" id="name" name="name"><br> <label
				class="col-3" for="address">Customer's address:</label> <input
				class="col-6" type="text" id="address" name="address"><br>
			<label class="col-3" for="discount">Discount code (if any):</label> <input
				class="col-6" type="text" id="discount" name="discount"><br>
			<input
				class="btn btn-outline-secondary bg-warning cartsubmit text-white"
				type="submit" value="Submit">
			<div class="error">
				<%
				String error = (String) session.getAttribute("error");
				if (error != null) {
					out.println(error);
					session.removeAttribute("error");
				}
				%>
			</div>
		</form>
	</div>
	<c:import url="footer.jsp" />
</body>
</html>