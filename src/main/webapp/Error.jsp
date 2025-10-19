<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Error</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #fef2f2;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.container {
	background: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	text-align: center;
	width: 400px;
}

h2 {
	color: #dc2626;
	margin-bottom: 20px;
}

p {
	margin: 10px 0;
	color: #374151;
}

.btn {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 16px;
	border: none;
	border-radius: 6px;
	background: #dc2626;
	color: white;
	font-size: 15px;
	cursor: pointer;
	text-decoration: none;
}

.btn:hover {
	background: #b91c1c;
}

</style>
</head>
<body>
	<div class="container">
		<h2>❌ Error!</h2>
		<p>Either Username or Password is wrong</p>
		<a href="Login.jsp" class="btn">Try Again</a>
		
	</div>
</body>
</html>
