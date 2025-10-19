package master.servlets;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import master.dao.BookingDao;
import master.dto.BookingDto;

@WebServlet("/BookingServe")
public class BookingServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		try {
			// ✅ Booking ID comes from form
			String booking_id = request.getParameter("booking_id");

			// ✅ Username is taken from session (so user can’t change it manually)
			HttpSession session = request.getSession();
			String uname = (String) session.getAttribute("username");

			// ✅ Other form inputs
			String tid = request.getParameter("tid");
			String hid = request.getParameter("hid");
			String room_type = request.getParameter("room_type");

			String fromDateStr = request.getParameter("from_date");
			String toDateStr = request.getParameter("to_date");

			Date from_date = null, to_date = null;
			if (fromDateStr != null && !fromDateStr.isEmpty()) {
				from_date = Date.valueOf(fromDateStr);
			}
			if (toDateStr != null && !toDateStr.isEmpty()) {
				to_date = Date.valueOf(toDateStr);
			}

			// ✅ Default status
			String status = "PENDING";

			// ✅ Put into DTO
			BookingDto bdto = new BookingDto();
			bdto.setBooking_id(booking_id);
			bdto.setUname(uname);
			bdto.setTid(tid);
			bdto.setHid(hid);
			bdto.setRoom_type(room_type);
			bdto.setFrom_date(from_date);
			bdto.setTo_date(to_date);
			bdto.setStatus(status);

			// ✅ Save to DB
			BookingDao bdao = new BookingDao();
			int result = bdao.insertBooking(bdto);

			if (result > 0) {
				response.sendRedirect("BookingSuccess.jsp");
			} else {
				response.sendRedirect("BookingError.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("BookingError.jsp");
		}
	}
}
