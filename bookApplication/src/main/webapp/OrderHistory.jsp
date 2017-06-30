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
#websiteTitle{
  font-size: 2.4em;
  vertical-align: middle;
  font-family: 'Harrington', bold;
  padding-left: 15px;
  padding-right:15px;
  color: white;
}
a{

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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order History</title>
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
			<span id="websiteTitle">Book Application  </span>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="#">Home</a></li>
			<li><a href="/books">View Books</a></li>
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
	
	<center><h3><b><p><font color="green">Order Placed Successfully !</font></p></b></h3></center>
	
	
	
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong><i class="fa fa-list"></i> My Orders</strong>
						</div>
						<div class="panel-body">
							<table id="ordersTbl" border="1"
								class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="10%">Order Id</th>
										<th>Order Items</th>
										<th>Amount</th>
										<th>Status</th>
										<th>Ordered Date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${MY_ORDERS}" var="order">
										<tr>
											<td>${order.id}</td>
											<td>
												<ul>
													<c:forEach items="${order.orderItems}" var="item">
														<li>${item.book.name}(Quantity - ${item.quantity} )</li>
													</c:forEach>
												</ul>
											</td>
											<td>Rs. ${order.totalPrice }</td>
											<td>${order.status}</td>
											<td>${order.orderedDate }</td>
											

										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#ordersTbl").DataTable();
		});
	</script>
	
</body>
</html>