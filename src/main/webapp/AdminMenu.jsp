<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Menu</title>
<link rel="stylesheet" href="Admin.css" />
</head>
<body>
	<video autoplay muted loop class="bg-video">
		<source src="admin.mp4" type="video/mp4">
		<!-- Fallback image if video is not supported -->
	</video>
	<div class="navbar">
		<div class="logo">Desh Videsh Tours</div>
		<div class="nav-container">

			<ul class="nav-links">
				<li><a href="#">About Us</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Client Stories</a></li>
				<li><a href="#">Blog</a></li>
			</ul>

			<a href="Login.jsp" class="logout">Logout</a>
		</div>
	</div>


	<div class="container">
		<h2>🌍 Tourism Management Dashboard</h2>

		<!-- Tours Section -->
		<div class="section">
			<h3>Tours</h3>
			<form action="AddTour.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">Add Tour</button>
			</form>
			<form action="DelTour.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">Delete Tour</button>
			</form>
			<form action="UpdTour.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">Update Tour</button>
			</form>
			<form action="ViewTour.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">View Tour</button>
			</form>
		</div>

		<!-- Hotels Section -->
		<div class="section">
			<h3>Hotels</h3>
			<form action="AddHotel.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">Add Hotel</button>
			</form>
			<form action="DelHotel.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">Delete Hotel</button>
			</form>
			<form action="UpdHotel.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">Update Hotel</button>
			</form>

			<form action="ViewHotels.jsp" method="get" style="display: inline;">
				<button type="submit" class="btn">View Hotel</button>
			</form>
		</div>

		<!-- Bookings Section -->
		<div class="section">
			<h3>Bookings</h3>
			<form action="AdminBookingDetails.jsp" method="get"
				style="display: inline;">
				<button type="submit" class="btn">View Bookings</button>
			</form>
		</div>
	</div>
</body>
</html>
