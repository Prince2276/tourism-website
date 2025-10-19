package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import master.dto.TourDto;
import master.utilities.ConnectionFactory;

public class SearchTourDao {

	// Reuse exact column names you have in DB
	private static final String SELECT_ALL = "SELECT tid, tname, tplace1, tplace2, tplace3, tdate, tprice "
			+ "FROM tour ORDER BY tid";

	private static final String SEARCH_SQL = "SELECT tid, tname, tplace1, tplace2, tplace3, tdate, tprice "
			+ "FROM tour t WHERE tid LIKE ? OR tname LIKE ? OR tplace1 LIKE ? OR tplace2 LIKE ? OR tplace3 LIKE ? "
			+ "ORDER BY tid";

	// Map one ResultSet row → DTO
	private TourDto mapRow(ResultSet rs) throws SQLException {
		TourDto t = new TourDto();
		t.setTid(rs.getString("tid"));
		t.setTname(rs.getString("tname"));
		t.setTplace1(rs.getString("tplace1"));
		t.setTplace2(rs.getString("tplace2"));
		t.setTplace3(rs.getString("tplace3"));
		t.setTdate(rs.getDate("tdate")); // java.sql.Date returned → fits your DTO's java.util.Date
		t.setTprice(rs.getString("tprice"));
		return t;
	}

	// List all tours
	public List<TourDto> getAllTours() {
		List<TourDto> list = new ArrayList<>();
		try (Connection con = new ConnectionFactory().getConn();
				// PreparedStatement ps = con.prepareStatement(SELECT_ALL);
				PreparedStatement ps = con.prepareStatement("SELECT * FROM tour ORDER BY tid");

				ResultSet rs = ps.executeQuery()) {

			while (rs.next())
				list.add(mapRow(rs));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// Search by id/name/any place (LIKE %keyword%)
	public List<TourDto> searchTours(String keyword) {
		if (keyword == null || keyword.trim().isEmpty()) {
			return getAllTours();
		}

		List<TourDto> list = new ArrayList<>();
		String like = "%" + keyword.trim() + "%";

		try (Connection con = new ConnectionFactory().getConn();
				PreparedStatement ps = con.prepareStatement(SEARCH_SQL)) {

			// Set the same LIKE value in all 5 placeholders
			for (int i = 1; i <= 5; i++)
				ps.setString(i, like);

			try (ResultSet rs = ps.executeQuery()) {
				while (rs.next())
					list.add(mapRow(rs));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
