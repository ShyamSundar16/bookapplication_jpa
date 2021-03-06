<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.center {
	background-color: #00bcd4;
	margin-left: auto;
	margin-right: auto;
	position: center;
	z-index: 30;
	max-width: 900px;
	margin: 100px auto;

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
  opacity: 0.4;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  padding-top:30px;
  position: absolute;
  z-index: -2;   
}

.button {
	background-color: blue;
	color: white;
	padding: 10px 35px;
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
	background-color:black;
	color: white;
}
</style>

</head>
<body>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<span id="websiteTitle">Book Application  </span>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="/login.jsp">Home</a></li>
			<li><a href="/books">View Books</a></li>
			<li><a href="../../order/myorders">My Cart</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">

			<li><a href="/login.jsp"><span
					class="glyphicon glyphicon-log-out"></span> Log out</a></li>
		</ul>
	</div>
	</nav>
	
		<h3 align="center"><b>${USER.name}</b></h3>
<div class="center">	
	<b>Item Details :</b>
	<br></br>
	<form action="../../orderItems/addToCart" method="post" >

		<input type="hidden" name="book_id" value="${books.id}" />
		<table class="table">
			<tr>
				<th>Book Name</th>
				<th>Price</th>
				<th>Quantity</th>
				<th></th>
			</tr>
			<tr>

				<td>${books.name}</td>

				<td>Rs. ${books.price}</td>
				<td><input type="number" name="qty" min="1" value="1" required /></td>


				<td><button>AddTo Cart</button></td>
				



			</tr>
		</table>
	</form></div>
</body>
</html>

