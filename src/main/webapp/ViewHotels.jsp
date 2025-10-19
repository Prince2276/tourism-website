<%@page import="master.dao.HotelDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.TourDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>View Hotels</title>
<link rel="stylesheet" href="ViewHotelsAdmin.css" />
<style>
</style>

</head>

<body>
	<video autoplay muted loop id="background-video">
		<source
			src="https://assets.mixkit.co/videos/preview/mixkit-aerial-view-of-a-beautiful-luxury-hotel-42719-large.mp4"
			type="video/mp4">

	</video>
	<div class="overlay"></div>
	<div class="table-container">
		<h2>AVAILABLE HOTELS</h2>

		<table>
			<thead>
				<tr>
					<th>HOTEL ID</th>
					<th>HOTEL NAME</th>
					<th>TOUR PLACE</th>
					<th>PRICE</th>
				</tr>
			</thead>
			<tbody>
				<%
				HotelDao hdao = new HotelDao();
				ResultSet rs = hdao.getData();
				while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>

		<p style="margin-top: 15px;">
			<a href="AdminMenu.jsp">Back</a>
		</p>
	</div>
</body>
</html>