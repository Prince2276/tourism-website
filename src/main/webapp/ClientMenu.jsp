<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Have a wonderful journey ahead..</title>
<link rel="stylesheet" href="Client.css"/>
</head>
<body>
 <video autoplay muted loop class="bg-video">
  <source src="client.mp4" type="video/mp4">
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
    <h2>Explore The Tours..!!</h2>
    <p>Welcome! Please choose an option:</p>
    <div>
      <form action="SearchTour.jsp" method="get" style="display:inline;">
        <button type="submit" class="btn">View Tours</button>
      </form>
      <form action="ViewClientHotels.jsp" method="get" style="display:inline;">
        <button type="submit" class="btn">View Hotels</button>
      </form>
      <form action="BookingPage.jsp" method="get" style="display:inline;">
        <button type="submit" class="btn">Booking</button>
      </form>
      <form action="ClientBookingDetails.jsp" method="get" style="display:inline;">
        <button type="submit" class="btn">Booking Details</button>
      </form>
      
    </div>
  </div>
</body>
</html>