<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

.center {
	border: 5px solid grey;
	margin-left: auto;
	margin-right: auto;
	position: center;
	z-index: 30;
	max-width: 500px;
	margin: 100px auto;
    background-color: #00bcd4;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 45px;
}

tr:hover {
	background-color: #f5f5f5
}

th {
	background-color: black;
	color: white;
}
#websiteTitle{
  font-size: 2.4em;
  vertical-align: middle;
  font-family: 'Harrington', bold;
  padding-left: 15px;
  padding-right:15px;
  color: white;
}
div::after {
  content: "";
  background: url("/assets/images/i3.jpg" );
  background-repeat:no-repeat;
  background-size : 1400px 750px;
  opacity: 0.2;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  padding-top:30px;
  position: absolute;
  z-index: -2;   
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
				<span id="websiteTitle">Book Application  </span>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="Home.jsp">Home</a></li>
			<li class="active"><a href="#">View Books</a></li>
			<li><a href="#">Contact us</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>
			<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li>
		</ul>
	</div>
	</nav>

	<div class="center">

		<table class="table">
			<thead>
				<tr>
				<th></th>
					<th>ID</th>
					<th>Name</th>
					<th>Price</th>
					<th>Release Date</th>
					
				</tr>
			</thead>
			<tbody>


					<c:forEach items="${books}" var="book">
						<tr>
							<td><img class="card-img-left"
								src="../assets/images/bkdisp.png" width="100"
								alt="Card image cap"></td>
							<td>${book.id}</td>
							<td>${book.name}</td>
							<td>${book.price}</td>
							<td>${book.releaseDate}</td>
						

						</tr>

					</c:forEach>


			</tbody>
		</table>
	</div>


</body>
</html>