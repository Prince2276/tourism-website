<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="Register.css">
</head>
<body>


	<video class="video-background" autoplay loop muted>
		<source src="LoginRegister.mp4" type="video/mp4">

	</video>

	<div class="video-overlay"></div>
	<div class="container">
		<div class="register-form">
			<h2>Register</h2>
			<form action="RegisterAddServe" method="post" id="registrationForm">
				<div class="form-group">
					<label for="name">Full Name</label> <input type="text" id="name"
						name="name" required>
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input type="email" id="email"
						name="email" required>
				</div>
				<div class="form-group">
					<label for="phone">Phone</label> <input type="tel" id="phone"
						name="phone" required>
				</div>
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						id="username" name="username" required>
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<div class="password-container">
						<input type="password" id="password" name="password" required>
						<span class="toggle-password" onclick="togglePassword()">👁</span>
					</div>
				</div>
				<button type="submit" class="btn">Register</button>
			</form>
			<p class="login-link">
				Already have an account? <a href="Login.jsp">Login here</a>
			</p>
		</div>
	</div>
	<script>
  function togglePassword() {
    var inp = document.getElementById("password");
    inp.type = inp.type === "password" ? "text" : "password";
  }
  </script>
</body>
</html>