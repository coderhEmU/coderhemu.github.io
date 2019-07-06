<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final.jsp</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-secondary navbar-dark"
		style="background-color: #962a31">
		<div class="container">
			<img src="Images/logo.png" alt="logo" class="float-left" width=100px
				height=40px>
			<ul class="nav navbar-nav navbar-right   ">

				<button type="button" class="btn btn-primary">
					<b>Welcome ${uname}</b>
				</button>
				&nbsp;

				<a href="logout.jsp"><button type="button"
						class="btn btn-primary">LogOut</button></a>
			</ul>
		</div>
	</nav>
	<center>
		<h1 style="color: tomato">Thank You for shopping with us</h1>
		<h2>
			Please Visit again <span style='font-size: 100px;'>&#128512;</span>
		</h2>

	</center>

</body>
</html>