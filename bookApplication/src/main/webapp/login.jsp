<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">

div::after {
  content: "";
  background: url("/assets/images/i3.jpg" );
  background-repeat:no-repeat;
  background-size : 1400px 750px;
  opacity: 1.0;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  padding-top:30px;
  position: absolute;
  z-index: -2;   
}
.center {
	margin: 100px auto;
	height: 80%;
	width: 40%;
	border: 3px solid grey;
	padding: 10px;
	background-color: white;
}

.center h1 {
	font: garamond;
	color: black;
	font-size: 50;
	text-align: center;
}

input[type=text], select {
	height:0%;
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 20px;
	box-sizing: border-box;
	font-size: 1.2em;
}

input[type=password], select {
height:30%;
width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 20px;
	box-sizing: border-box;
	font-size: 1.2em;
}

.button1 {
	background-color: #4CAF50;
	color: white;
	border-radius: 20px;
	border: 2px solid;
	padding: 15px 32px;
}

.button1:hover {
	background-color: #003312;
	color: white;
	padding: 15px 32px;
}

.body2 a:link, a:visited {
	background-color: #f44336;
	color: white;
	border: 2px solid;
	padding: 14px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

.body2 a:hover, a:active {
	background-color: #8b0000;
}

.error {
	color: red;
	background-color: white;
}

p {
	border: 1px solid black;
	margin-center: auto;
	margin-right: auto;
}

h1 {
	color: white;
}

h4 {
	color: black;
}

.center_div {
	
	margin-left: auto;
	margin-right: auto;
	height: 100%;
	width: 100%;
	
	text-align: left;
	padding: 8px;
	
	margin: 100px auto;
	height: 80%;
	width: 40%
}

div::after {
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	padding-top: 30px;
	position: absolute;
	z-index: -2;
}


body1 {
	background-color: black;
}

h1 {
	color: black;
}

h2 {
	color: blue;
}

p {
	color: red;
}

#websiteTitle{
  font-size: 2.4em;
  vertical-align: middle;
  font-family: 'Harrington', bold;
  padding-left: 15px;
  padding-right:15px;
  color: white;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
    $("input").focus(function(){
        $(this).css("background-color", "#cccccc");
    });
    $("input").blur(function(){
        $(this).css("background-color", "#ffffff");
    });
});

</script>
</head>
<body>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
				<span id="websiteTitle">Book Application  </span>
		</div>
		<ul class="nav navbar-nav">
			<li  ><a href="/">Home</a></li>
			<li><a href="/userview">View Books</a></li>
			<li><a href="#">Contact us</a>
		
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="../register.jsp"><span class="glyphicon glyphicon-user"></span>
					Sign Up</a></li>
			
		</ul>
	</div>
	</nav>

	<div class="center_div">
		<center>
			<table align="center">

				<form action="../users/validate" method="post">

					<div align="center">

						
						<input type="text" placeholder="Email" name="email" class="form-control">
						<br> <br>

						
						<input type="password" placeholder="Password" name="password" class="form-control"></b><br>
						<br>

						<button onclick="return validate()" class="button1">LOGIN</button>
						</form>
					

					</div>



				

			</table>
		</center>
	</div>

</body>
</html>

