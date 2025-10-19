package master.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.RegisterDao;
import master.dto.RegisterDto;

/**
 * Servlet implementation class RegisterAddServe
 */
@WebServlet("/RegisterAddServe")
public class RegisterAddServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RegisterDto rdto = new RegisterDto();
		rdto.setName(name);
		rdto.setEmail(email);
		rdto.setPhone(phone);
		rdto.setUsername(username);
		rdto.setPassword(password);
		RegisterDao rdao = new RegisterDao();
		rdao.insertData(rdto);
		response.sendRedirect("RegisterInfo.jsp");
	}

}
