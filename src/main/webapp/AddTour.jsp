<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Tour</title>
<link rel="stylesheet" href="AddTour.css">
</head>
<body>
	<div class="container">
		<h2>Add New Tour</h2>
		<form action="AddTourServe" method="post">
			<div class="form-group">
				<label for="tid">Tour ID</label> <input type="text" id="tid"
					name="tid" required>
			</div>

			<div class="form-group">
				<label for="tname">Tour Name</label> <input type="text" id="tname"
					name="tname" required>
			</div>

			<div class="form-group">
				<label for="tplace1">First Tour Place</label> <input type="text"
					id="tplace1" name="tplace1" required>
			</div>

			<div class="form-group">
				<label for="tplace2">Second Tour Place</label> <input type="text"
					id="tplace2" name="tplace2" required>
			</div>

			<div class="form-group">
				<label for="tplace3">Third Tour Place</label> <input type="text"
					id="tplace3" name="tplace3" required>
			</div>

			<div class="form-group">
				<label for="tdate">Tour Date</label> <input type="date" id="tdate"
					name="tdate" required>
			</div>

			<div class="form-group">
				<label for="tprice">Price</label> <input type="text" id="tprice"
					name="tprice" placeholder="Enter price in ₹" required>
			</div>

			<button type="submit" class="btn">Add Tour</button>
		</form>

		<div class="back-link">
			<a href="AdminMenu.jsp">Back</a>
		</div>
	</div>
</body>
</html>
