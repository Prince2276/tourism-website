package master.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.HotelDao;
import master.dto.HotelDto;

/**
 * Servlet implementation class AddHotelServe
 */
@WebServlet("/AddHotelServe")
public class AddHotelServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String hid = request.getParameter("hid");
		String hname = request.getParameter("hname");
		String hplace = request.getParameter("hplace");
		String hprice = request.getParameter("hprice");

		HotelDto hdto = new HotelDto();
		hdto.setHid(hid);
		hdto.setHname(hname);
		hdto.setHplace(hplace);
		hdto.setHprice(hprice);
		HotelDao hdao = new HotelDao();
		hdao.insertData(hdto);
		response.sendRedirect("AddHotelInfo.jsp");
	}

}
