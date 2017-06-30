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
	background-color: white;
}

table {
	border-collapse: collapse;
	width: 100%;
}

#websiteTitle {
	font-size: 2.4em;
	vertical-align: middle;
	font-family: 'Harrington', bold;
	padding-left: 15px;
	padding-right: 15px;
	color: white;
}

div::after {
	content: "";
	background: url("/assets/images/i3.jpg" );
	background-repeat: no-repeat;
	background-size: 1400px 750px;
	opacity: 0.2;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	padding-top: 30px;
	position: absolute;
	z-index: -2;
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

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover, .offcanvas a:focus {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<span id="websiteTitle">Book Application </span>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="../Home.jsp">Home</a></li>
			<li class="active"><a href="#">View Books</a></li>
			<li><a href="#">Contact us</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">

			<li><a href="/login.jsp"><span
					class="glyphicon glyphicon-log-out"></span> Log out</a></li>
		</ul>

	</div>
	</nav>

	<h3>
		<center>
			<b>${USER.name}</b>
		</center>
	</h3>
	<div id="mySidenav" class="sidenav">
		 <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<b><a>Price :</a></b> 
		 <a href="../books?price=asc"> Low to High</a>
		 <a href="../books?price=desc">High to Low</a> 
		 <a href="../books?released_date=desc">Newest First</a>
	</div>

	<div id="main">
		<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
			Filters</span>
	</div>

	<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}
</script>

		<div class="center">


			<table class="table">



				<thead>
					<tr>
						<th></th>
						<th>ID</th>
						<th>Name</th>
						<th>Price</th>
						<th>Release Date</th>
						<th>View</th>
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
							<td><a href="/books/view/${book.id}">View</a></td>

						</tr>

					</c:forEach>
				</tbody>
			</table>

		</div>



	</div>



</body>
</html>