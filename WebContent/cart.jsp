
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Ajio</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
table, th, td {
	border: 2px solid black;
}
</style>

</head>
<body style="background-color: white;">
	<nav class="navbar" style="background-color: #962a31">


		<div class="container">
			<div class="navbar-header">
				<a><image src="Images/logo.png" style="width:60%"></image></a>

			</div>

			<ul class="nav navbar-nav navbar-right">
				<br>

				<button type="button" class="btn btn-primary">
					<b>Welcome ${uname}</b>
				</button>
				<a href="logout.jsp"><button type="button"
						class="btn btn-primary">Logout</button></a>

			</ul>
			<br> <br>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<center>
		<h1>Items in Cart are :</h1>

		<br> <br>
		<form action="show" method ="post">
		<table class="table table-hover" border='4px' width=100>
			<thead>
				<tr>
					<th>ItemId</th>
					<th>Image</th>
					<th>Name</th>
					<th>UnitPrice</th>
					<th>Quantity</th>

				</tr>
			</thead>

			<tbody>
				<c:forEach items="${selectedItemList}" var="il" varStatus="status">
					<tr>
						<td>${il.id}</td>
						<td><img src="./Images/${il.image_url}"
							style="height: 90px; width: 90px;"></td>
						<td>${il.name}</td>
						<td>${il.price}</td>
						<td>${qtList[status.index]}</td>
					</tr>

				</c:forEach>


			</tbody>
		</table>

		<br> <br>
		<h1>Total Order is Rs : ${totalprice}</h1>
		<br> <br> <br>
		 
		<button type="submit" class="btn btn-primary" name ="action" value="placeorder">Place Order</button> 
		<br> <br> <br> <a href="loginhome.jsp">
			<button type="button" class="btn btn-primary">More Shopping</button>
		</a>
</form>
	</center>
</body>
</html>