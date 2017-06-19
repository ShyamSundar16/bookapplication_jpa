<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<style type="text/css">
body {
	content: "";
	height: 100%;
	background-color: black;
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
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 20px;
	box-sizing: border-box;
}

input[type=password], select {
	width: 40%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 20px;
	box-sizing: border-box;
}

.button1 {
	background-color: #4CAF50;
	color: white;
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
	border: 5px solid gray;
	margin-left: auto;
	margin-right: auto;
	height: 100%;
	width: 100%;
	background-color: #E1CBF1;
	text-align: left;
	padding: 8px;
	background-color: #E1CBF1;
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

input[type="text"] {
	font-size: 20px;
}

input[type="password"] {
	font-size: 20px;
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
</style>
</head>
<body>

	<div class="center_div">
		<h1>
			<center>Book Application</center>
		</h1>
		<p></p>
		<center>
			<table align="center">

				<form action="../users/validate" method="post">

					<div align="center">

						<div class="error" id="error1"></div>
						<input type="text" placeholder="Email" name="email"><br>
						<br> <br>

						<div class="error" id="error2"></div>
						<input type="password" placeholder="Password" name="password"></b><br>
						<br>

						<button onclick="return validate()" class="button1">LOGIN</button>
						</form>
						<span class="body2"><a href="register.jsp" >SIGN UP</a></span>

					</div>



				

			</table>
		</center>
	</div>

</body>
</html>

