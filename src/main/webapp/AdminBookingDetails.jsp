<%@page import="master.dao.BookingDao"%>
<%@page import="master.dto.BookingDto"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin - All Bookings</title>
<link rel="stylesheet" href="AdminBookingDetails.css" />
<meta charset="UTF-8">

</head>
<body>
	<div class="table-container">
		<h2>ALL BOOKINGS (Admin)</h2>

		<!-- Search Form -->
		<form class="search-bar" method="get">
			<input type="text" name="q" placeholder="Enter Booking ID..."
				value="<%= request.getParameter("q") == null ? "" : request.getParameter("q") %>">
			<button type="submit">Search</button>
		</form>

		<table>
			<thead>
				<tr>
					<th>Booking ID</th>
					<th>Username</th>
					<th>Tour ID</th>
					<th>Hotel ID</th>
					<th>Room Type</th>
					<th>From</th>
					<th>To</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<%
                String q = request.getParameter("q");
                BookingDao dao = new BookingDao();

                // ✅ Fixed ternary expression
                List<BookingDto> bookings = (q == null || q.trim().isEmpty())
                        ? dao.getAllBookings()
                        : dao.getBookingsByUser(q);

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                if (bookings == null || bookings.isEmpty()) {
            %>
				<tr>
					<td colspan="8" class="muted">No bookings found.</td>
				</tr>
				<%
                } else {
                    for (BookingDto b : bookings) {
            %>
				<tr>
					<td><%= b.getBooking_id() %></td>
					<td><%= b.getUname() %></td>
					<td><%= b.getTid() %></td>
					<td><%= b.getHid() %></td>
					<td><%= b.getRoom_type() %></td>
					<td><%= (b.getFrom_date() != null) ? sdf.format(b.getFrom_date()) : "" %></td>
					<td><%= (b.getTo_date() != null) ? sdf.format(b.getTo_date()) : "" %></td>
					<td><%= b.getStatus() %></td>
				</tr>
				<%
                    }
                }
            %>
			</tbody>
		</table>

		<br> <a href="AdminMenu.jsp">Back</a>
	</div>
</body>
</html>
