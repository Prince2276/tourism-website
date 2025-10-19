<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOTEL UPDATION</title>
<link rel="stylesheet" href="UpdHotel.css">
</head>
<body>
<div class="container">
    <h2>Update Hotel</h2>
	<form action="UpdHotelServe" method="post">
		Hotel ID <input type="text" id="hid" name="hid" required>
		Hotel Name<input type="text" id="hname" name="hname" required>
		Tour Place<input type="text" id="hplace" name="hplace" required>
		Hotel Price<input type="text" id="hprice" name="hprice" required>
		<button type="submit" class="btn">Update</button>
	</form>

	<p style="margin-top:15px;">
      
      <a href="AdminMenu.jsp">Back</a>
    </p>
  </div>
</body>
</html>