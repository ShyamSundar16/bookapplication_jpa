<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order List</title>

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
	border: 5px solid grey;
	margin-left: auto;
	margin-right: auto;
	position: center;
	z-index: 30;
	max-width: 500px;
	margin: 100px auto;
	background-color: #DCDCDC;
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
p {

    border: 1px solid black;
    margin-center: auto;
    margin-right: auto;

}
</style>


</head>


<body>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<span id="websiteTitle">Book Application  </span>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="/login.jsp">Home</a></li>
			<li><a href="/books">View Books</a></li>
			<li><a href="#">Contact us</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">

			<li><a href="/login.jsp"><span
					class="glyphicon glyphicon-log-out"></span> Log out</a></li>
		</ul>
	</div>
	</nav>
	
		<h3><center><b>${USER.name}</b></center></h3>
	<div class="center">	
	<center><b>Order List</b></center>
<p></p>
		<form>
			<table class="table">
				<thead>
					<tr>
						<th >Id</th>
						<th >ItemName</th>
						<th>Quantity</th>
						<th >TotalCost</th>
						<th></th>
						<th></th>
						
					</tr>
				</thead>
				<tbody>
					
						<c:forEach items="${MY_CART.orderItems}" var="orderItem" varStatus="id">
						<tr><td>${id.index+1}</td>

							<td>${orderItem.book.name}</td>
							<td>${orderItem.quantity}</td>
							<td>Rs.${orderItem.quantity*orderItem.book.price}</td>
							<td><a href="../../order/remove?id=${id.index}">Remove</a></td>
								<td><a href="../../books">Continue Shopping</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
				
</div>

<div class="center">
					<div class="col-md-4a">
						<center><b>Price Details</b></center>
<p></p>
					
						<c:set var="total_amount" value="0" />
						<c:forEach items="${MY_CART.orderItems}" var="orderItem">
					    <c:set var="total_amount"
								value="${total_amount + orderItem.book.price*orderItem.quantity}" />
						</c:forEach>

						<form name="orderForm" action="../order/save" method="post">
							<input type="hidden" name="total_amount" value="${total_amount}" />
							<table class="table" >

								<tbody>
									<tr>
										<td>Price</td>
										<td>Rs. ${total_amount}</td>
									</tr>
									<tr>
										<td>Delivery Charges</td>
										<td>FREE</td>
									</tr>
									<tr>
										<td><b>Amount Payable </b></td>
										<td><b>Rs. ${total_amount}</b></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
										
										<button type="submit" 
											class="btn btn-success btn-block" >Place an Order</button></td>
									</tr>
								</tbody>
							</table>
							</div>
						</form>
					</div>

</body>
</html>
