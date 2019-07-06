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
		<ul class="nav navbar-nav navbar-right   ">

			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal">Login</button>
			&nbsp;

			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal1">SignUp</button>
		</ul>


	</div>
	</nav>
	<br>


	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Login</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<form action="show" method="post">

						<div class="form-group">
							<label for="email">Email:</label> <input type="text"
								class="form-control" name="email">
						</div>
						<div class="form-group">
							<label for="password">Password:</label> <input type="password"
								class="form-control" name="password">
						</div>


						<input type="submit" class="btn btn-primary" name="action"
							value="Login">
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal" id="myModal1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Enter your details for registration</h4>

				</div>
				<div class="modal-body">
					<form action="show" method="post">
						<div class="form-group">
							<label for="name">Name:</label> <input type="text"
								class="form-control" name="name">
						</div>
						<div class="form-group">
							<label for="email">Email:</label> <input type="text"
								class="form-control" name="email">
						</div>
						<div class="form-group">
							<label for="password">Password:</label> <input type="password"
								class="form-control" name="pwd">
						</div>
						<input type="submit" class="btn btn-success" name="action"
							value="SignUp">

					</form>

				</div>
			</div>

		</div>

	</div>


	<center>
		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>

			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="Images/Bata.jpg" alt="fshoes" width="1500" height="400">
					<div class="carousel-caption">

						<h3 style="font-size: 200%; font-family: algerian, courier";>
							Ajio presents you the exclusive</h3>
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: algerian, courier; line-height: 80%";>

							<h1>
								Formal Shoes Collection <span class="badge badge-secondary">BROWN</span>
							</h1>
						</h3>
					</div>

				</div>

				<div class="carousel-item">
					<img src="Images/VH.jpg" alt="fshoes" width="1500" height="400">
					<div class="carousel-caption">
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: algerian, courier; line-height: 80%";>

							<h1>
								Formal Shoes Collection<span class="badge badge-secondary">BLACK</span>
							</h1>
						</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/Ajio.jpg" alt="fshoes" width="1500" height="400">
					<br>
					<div class="carousel-caption">
						<h3>Formal shoes</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/fasttrack.jpg" alt="watch" width="1500"
						height="400"> <br>
					<div class="carousel-caption">
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: Arial, Helvetica, sans-serif; line-height: 80%";>
							Exclusive Watches</h3>
					</div>
				</div>

				<div class="carousel-item">
					<img src="Images/Longiness.jpg" alt="watch" width="1500"
						height="400">
					<div class="carousel-caption">
						<h3 style="float: right">Exclusive Watch!!</h3>
					</div>

				</div>
				<div class="carousel-item">
					<img src="Images/fossil.jpg" alt="watch" width="1500" height="400">
					<div class="carousel-caption">
						<h3
							style="float: right; width: 0.7em; font-size: 400%; font-family: Arial, Helvetica, sans-serif; line-height: 80%";>
							Here comes the <span class="badge badge-secondary">FOSSIL
							</span>
						</h3>
					</div>

				</div>
				<div class="carousel-item">
					<img src="Images/nike0.jpg" alt="sshoes" width="1500" height="400">
					<div class="carousel-caption">
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: Arial, Helvetica, sans-serif; line-height: 80%";>
							Nike-Sports Shoes</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/nike1.jpeg" alt="sshoes" width="1500" height="400">
					<div class="carousel-caption">
						<h3>NIKE Sports Shoes</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/nike4.jpg" alt="sshoes" width="1500" height="400">
					<div class="carousel-caption">
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: algerian, courier; line-height: 80%";>
							The Casuals From Nike</h3>
					</div>
				</div>

				<div class="carousel-item">
					<img src="Images/adidas.jpg" alt="cshoes" width="1500" height="400">
					<div class="carousel-caption">
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: algerian, courier; line-height: 80%";>
							Adidas Exclusive Casuals</h3>
					</div>

				</div>
				<div class="carousel-item">
					<img src="Images/adidas1.jpg" alt="cshoes" width="1500"
						height="400">
					<div class="carousel-caption">
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: algerian, courier; line-height: 80%";>
							Adidas Casuals</h3>

					</div>


				</div>
				<div class="carousel-item">
					<img src="Images/airjordan.jpg" alt="watch" width="1500"
						height="400" class="animated bounce infinite">
					<div class="carousel-caption">
						<h3
							style="float: left; width: 0.7em; font-size: 400%; font-family: algerian, courier; line-height: 80%";>
							Nike - Air Jordan Shoes</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/Oakley.png" alt="cshoes" width="1000" height="400">
					<div class="carousel-caption">
						<h3
							style="float: right; width: 0.7em; font-size: 300%; font-family: algerian, courier; line-height: 80%";>
							We bet You can't find them anywhere!!</h3>
					</div>
				</div>
				<div class="carousel-item">
					<img src="Images/Rayban.jpg" alt="cshoes" width="1000" height="400">
					<div class="carousel-caption">
						<h6
							style="float: left; width: 0.7em; font-size: 300%; font-family: algerian, courier; line-height: 80%";>
							Can it get any COOLER than this?</h6>

					</div>
				</div>
			</div>
		</div>


		<!-- Left and right controls -->
		<div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>

		</div>


	</center>
	<br>
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
						name="action" value="Go" style="float: right;" />
				</div>
			</div>
		</div>
	</form>

	<br>

	<div class="container">
		<center>
			<br>
			<h2>
				<c:out value="${cate}"></c:out>
			</h2>
		</center>
		<br>
		<table class="table table-dark" border="6px" cellspacing="0"
			cellpadding="10">
			<thead style="background-color: #962a31">
				<tr>
					<th>Image</th>
					<th>Name</th>
					<th>UnitPrice</th>
					<th>Category</th>
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
					</tr>
				</c:forEach>

			</tbody>

		</table>
	</div>


</body>
</html>

