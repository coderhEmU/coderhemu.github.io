
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark"
		style="background-color: #962a31">
	<div class="container">
		<img src="Images/logo.png" alt="logo" class="float-left" width=100px
			height=40px>
		<ul class="nav navbar-nav navbar-right">

			<button type="button" class="btn btn-primary">
				<b>Welcome ${uname}</b>
			</button>
			&nbsp;

			<a href="logout.jsp"><button type="button"
					class="btn btn-primary">LogOut</button></a>
		</ul>
	</div>
	</nav>
	<form method="post" action="show">
		<div class="container">
			<div class="column">
				<div class="col-sm-3">
					<b>Select Category: </b> <select class="form-control"
						style="width: 200px;" name="category">
						<option value="1">Select Category</option>
						<c:forEach items="${listCtg}" var="cl">
							<option value="${cl}">${cl}</option>
						</c:forEach>
					</select>
				</div>


				<div class="col-sm-3">
					<br> <input type="submit" class="btn btn-primary"
						name="action" value="GO" style="float: right;" />
				</div>
			</div>
		</div>
	</form>
	<div class="container">
		<center>
			<br>
			<h2>
				<c:out value="${cate}"></c:out>
			</h2>
		</center>
		<br>
		<form method="post" action="show">
			<table class="table table-dark" border="6px" cellspacing="0"
				cellpadding="10">
				<thead style="background-color: #962a31">
					<tr>
						<th>Image</th>
						<th>Name</th>
						<th>UnitPrice</th>
						<th>Category</th>
						<th>Quantity</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${itemList}" var="il">
						<tr>
							<td><img src="./Images/${il.image_url}"
								style="height: 200px; width: 200px"></td>
							<td class="table-active">${il.name}</td>
							<td>${il.price}</td>
							<td>${il.category}</td>
							<td><input type="number" name="quantity" value="0" required>
							<input type="hidden" name ="i_id" value="${il.id}"/>
							</td>
						 
						</tr>
					</c:forEach>

				</tbody>

			</table>
			<input class="btn btn-success" type="submit" name="action" value="AddToCart"
				style="float: right">
		</form>
	</div>
</body>
</html>
