<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.TourDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Tours</title>
    <link rel="stylesheet" href="ViewTour.css"/>

    <!-- INTERNAL CSS ADDED HERE -->
   
</head>

<body>
    <div class="table-container">
        <h2>AVAILABLE TOURS</h2>

        <table>
            <thead>
                <tr>
                    <th>TOUR ID</th>
                    <th>TOUR NAME</th>
                    <th>PLACES COVERED</th>
                    <th>START DATE</th>
                    <th>PRICE</th>
                </tr>
            </thead>
            <tbody>
                <%
                    TourDao tdao = new TourDao();
                    ResultSet rs = tdao.getData();
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td>
                        <%= rs.getString("tplace1") %>
                        <%= (rs.getString("tplace2") != null ? " - " + rs.getString("tplace2") : "") %>
                        <%= (rs.getString("tplace3") != null ? " - " + rs.getString("tplace3") : "") %>
                    </td>
                    <td><%= rs.getDate(6) %></td>
                    <td><%= rs.getString(7) %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <p style="margin-top: 15px;">
            <a href="AdminMenu.jsp">Back</a>
        </p>
    </div>
</body>
</html>