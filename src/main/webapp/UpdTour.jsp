<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tour Updation</title>
<link rel="stylesheet" href="UpdTour.css">
</head>
<body>
<div class="container">
    <h2>Update Tour</h2>
	<form action="UpdTourServe" method="post">
		Tour ID <input type="text" id="tid" name="tid" required>
		Tour Date<input type="date" id="tdate" name="tdate" required>
		Price<input type="text" id="tprice" name="tprice" required>
		<button type="submit" class="btn">Update</button>
	</form>

	<p style="margin-top:15px;">
      
      <a href="AdminMenu.jsp">Back</a>
    </p>
  </div>
</body>
</html>