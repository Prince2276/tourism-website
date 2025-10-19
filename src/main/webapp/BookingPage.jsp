<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Book Your Tour</title>
<link rel="stylesheet" href="BookingPage.css" />
</head>
<body>
	<div class="container">
		<h2>Book Your Tour</h2>

		
		<form action="BookingServe" method="post">

			<label for="bookingId">Booking ID</label> <input type="text"
				id="bookingId" name="booking_id" readonly required>


			<label for="username">Username</label> <input type="text"
				id="username" name="uname" placeholder="Enter your username"
				required>

			<label for="tourId">Tour ID</label> <input type="text" id="tourId"
				name="tid" placeholder="Enter Tour ID" required>

			
			<label for="hotelId">Hotel ID</label> <input type="text" id="hotelId"
				name="hid" placeholder="Enter Hotel ID" required>

		
			<label for="room">Room Type</label> <select id="room"
				name="room_type" required>
				<option value="">-- Select Room Type --</option>
				<option value="AC">AC</option>
				<option value="NONAC">Non-AC</option>
				<option value="Deluxe">Deluxe</option>
			</select>

			
			<label>Booking Date</label>
			<div class="date-row">
				<label for="from">From</label> <input type="date" id="from"
					name="from_date" required>
			</div>
			<div class="date-row">
				<label for="to">To</label> <input type="date" id="to" name="to_date"
					required>
			</div>

			
			<button type="submit" class="btn">Confirm Booking</button>
		</form>


		<form action="ClientMenu.jsp" method="get">
			<button type="submit" class="btn"
				style="background: #28a745; margin-top: 10px;">Back to Menu
			</button>
		</form>
	</div>

	<script>
		// Auto-generate Booking ID
		function generateBookingId() {
			return "BKG" + Math.floor(100000 + Math.random() * 900000);
		}
		window.onload = function() {
			document.getElementById("bookingId").value = generateBookingId();
		}
	</script>
</body>
</html>
