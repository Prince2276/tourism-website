package master.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.TourDao;
import master.dto.TourDto;

/**
 * Servlet implementation class UpdTourServe
 */
@WebServlet("/UpdTourServe")
public class UpdTourServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String tid = request.getParameter("tid");
		String tprice = request.getParameter("tprice");
		String tdateStr = request.getParameter("tdate");

		java.util.Date utilDate = null;
		try {
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
			utilDate = sdf.parse(tdateStr);
		} catch (Exception e) {
			e.printStackTrace();
		}

		TourDto tdto = new TourDto();

		tdto.setTid(tid);
		tdto.setTprice(tprice);
		tdto.setTdate(utilDate);
		TourDao tdao = new TourDao();

		tdao.updateData(tdto);
		response.sendRedirect("UpdTourInfo.jsp");
	}

}
