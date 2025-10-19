<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE HOTEL </title>
<link rel="stylesheet" href="DelHotel.css">
</head>
<body>
<div class="container">
    <h2>Delete Hotel</h2>
	<form action="DelHotelServe" method="post">
		Hotel ID <input type="text" id="hid" name="hid" required>
		<button type="submit" class="btn">Delete</button>
	</form>

	<p style="margin-top:15px;">
      
      <a href="AdminMenu.jsp">Back</a>
    </p>
  </div>
</body>
</html>