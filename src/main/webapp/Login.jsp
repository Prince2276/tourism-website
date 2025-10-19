<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN PAGE</title>
<link rel="stylesheet" href="Login.css">
</head>
<body>
	<video class="video-background" autoplay muted loop>
		<source src="LoginRegister.mp4" type="video/mp4">
	</video>

	<!-- Video Overlay -->
	<div class="video-overlay"></div>
	<div class="container">
		<div class="login-form">
			<h2>Login</h2>
			<form action="LoginServe" method="post">
				<label for="username">Username</label> <input type="text"
					id="username" name="username" required> <label
					for="password">Password</label> <input type="password"
					id="password" name="password" required>

				<button type="submit" class="btn">Login</button>
			</form>

			<p class="register-link">
				Don’t have an account? <a href="Register.jsp">Register here</a>
			</p>
		</div>
	</div>
</body>
</html>