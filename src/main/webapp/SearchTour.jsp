<%@page import="master.dao.SearchTourDao"%>
<%@ page import="java.util.*, java.text.SimpleDateFormat"%>
<%@ page import="master.dao.TourDao"%>
<%@ page import="master.dto.TourDto"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Search Tours</title>
<link rel="stylesheet" href="SearchTour.css"/>
<meta charset="UTF-8">
</head>
<body>
<!-- Add the video element (you can change the video source) -->

	<div class="container">
		<header>
			<h1>Discover Amazing Tours</h1>
			<p>Search by Tour ID, Name, or Place (e.g. Manali, Goa, 01)...</p>
		</header>

		<!-- Search form (GET to same page) -->
		<div class="search-container">
			<form class="search-bar" method="get">
				<input type="text" name="q" placeholder="Search tours..."
					value="<%= request.getParameter("q") == null ? "" : request.getParameter("q") %>">
				<button type="submit">Search</button>
			</form>
		</div>


		<div class="card">
			<div class="table-scroll">
				<table>
					<thead>
						<tr>
							<th style="width: 10%">TOUR ID</th>
							<th style="width: 22%">TOUR NAME</th>
							<th style="width: 38%">PLACES COVERED</th>
							<th style="width: 16%">START DATE</th>
							<th style="width: 14%">PRICE</th>
						</tr>
					</thead>
					<tbody>
						<%
                    String q = request.getParameter("q");
                    SearchTourDao dao = new SearchTourDao();
                    List<TourDto> tours = (q == null) ? dao.getAllTours() : dao.searchTours(q);

                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                    if (tours == null || tours.isEmpty()) {
                %>
						<tr>
							<td colspan="5" class="muted">No tours found.</td>
						</tr>
						<%
                    } else {
                        for (TourDto t : tours) {
                            // Join tplace1/2/3 nicely with hyphens, skipping null/empty
                            StringBuilder places = new StringBuilder();
                            if (t.getTplace1() != null && !t.getTplace1().trim().isEmpty()) places.append(t.getTplace1().trim());
                            if (t.getTplace2() != null && !t.getTplace2().trim().isEmpty()) {
                                if (places.length() > 0) places.append(" - ");
                                places.append(t.getTplace2().trim());
                            }
                            if (t.getTplace3() != null && !t.getTplace3().trim().isEmpty()) {
                                if (places.length() > 0) places.append(" - ");
                                places.append(t.getTplace3().trim());
                            }
                            String startDate = (t.getTdate() != null) ? sdf.format(t.getTdate()) : "";
                %>
						<tr>
							<td><%= t.getTid() %></td>
							<td><%= t.getTname() %></td>
							<td><%= places.toString() %></td>
							<td><%= startDate %></td>
							<td><%= t.getTprice() %></td>
						</tr>
						<%
                        }
                    }
                %>
					</tbody>
				</table>
			</div>
		</div>

		<a class="back-link" href="ClientMenu.jsp">Back</a>
	</div>
</body>
</html>
