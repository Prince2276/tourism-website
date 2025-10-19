<%@page import="master.dao.BookingDao"%>
<%@page import="master.dto.BookingDto"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Bookings</title>
    <link rel="stylesheet" href="ClientBookingDetails.css"/>
    <meta charset="UTF-8">
   
</head>
<body>
    <h2>My Bookings</h2>

    <table>
        <thead>
            <tr>
                <th>Booking ID</th>
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
                // ✅ Get logged in user from session
                String loggedUser = (String) session.getAttribute("username");

                BookingDao dao = new BookingDao();
                List<BookingDto> bookings = dao.getBookingsByUser(loggedUser);

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                if (bookings == null || bookings.isEmpty()) {
            %>
                <tr><td colspan="7" class="muted">No bookings found.</td></tr>
            <%
                } else {
                    for (BookingDto b : bookings) {
            %>
                <tr> 
                    <td><%= b.getBooking_id() %></td>
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

    <br>
    <a href="ClientMenu.jsp">Back</a>
</body>
</html>
