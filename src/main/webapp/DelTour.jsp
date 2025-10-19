<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Tour</title>
<link rel="stylesheet" href="DelTour.css">
</head>
<body>
<div class="container">
    <h2>Delete Tour</h2>
	<form action="DelTourServe" method="post">
		Tour ID <input type="text" id="tid" name="tid" required>
		<button type="submit" class="btn">Delete</button>
	</form>

	<p style="margin-top:15px;">
      
      <a href="AdminMenu.jsp">Back</a>
    </p>
  </div>
</body>
</html>