package master.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import master.dto.BookingDto;
import master.utilities.ConnectionFactory;

public class BookingDao {

	// ✅ Insert booking
	public int insertBooking(BookingDto booking) {
		int i = 0;
		try {
			Connection con = new ConnectionFactory().getConn();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO bookings (booking_id, uname, tid, hid, room_type, from_date, to_date, status) "
							+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)");

			ps.setString(1, booking.getBooking_id());
			ps.setString(2, booking.getUname());
			ps.setString(3, booking.getTid());
			ps.setString(4, booking.getHid());
			ps.setString(5, booking.getRoom_type());

			if (booking.getFrom_date() != null) {
				ps.setDate(6, new java.sql.Date(booking.getFrom_date().getTime()));
			} else {
				ps.setNull(6, java.sql.Types.DATE);
			}

			if (booking.getTo_date() != null) {
				ps.setDate(7, new java.sql.Date(booking.getTo_date().getTime()));
			} else {
				ps.setNull(7, java.sql.Types.DATE);
			}

			ps.setString(8, booking.getStatus());

			i = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	// ✅ Client: Get bookings for a specific user
	public List<BookingDto> getBookingsByUser(String uname) {
		List<BookingDto> list = new ArrayList<>();
		try {
			Connection con = new ConnectionFactory().getConn();
			PreparedStatement ps = con
					.prepareStatement("SELECT * FROM bookings WHERE uname = ? ORDER BY from_date DESC");
			ps.setString(1, uname);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(mapResultSetToBooking(rs));
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// ✅ Admin: Get ALL bookings
	public List<BookingDto> getAllBookings() {
		List<BookingDto> list = new ArrayList<>();
		try {
			Connection con = new ConnectionFactory().getConn();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM bookings ORDER BY from_date DESC");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(mapResultSetToBooking(rs));
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// ✅ Helper Method: Map ResultSet to DTO
	private BookingDto mapResultSetToBooking(ResultSet rs) {
		BookingDto b = new BookingDto();
		try {
			b.setBooking_id(rs.getString("booking_id"));
			b.setUname(rs.getString("uname"));
			b.setTid(rs.getString("tid"));
			b.setHid(rs.getString("hid"));
			b.setRoom_type(rs.getString("room_type"));
			b.setFrom_date(rs.getDate("from_date"));
			b.setTo_date(rs.getDate("to_date"));
			b.setStatus(rs.getString("status"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}
}
