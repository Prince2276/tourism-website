package master.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import master.dao.RegisterDao;

/**
 * Servlet implementation class LoginServe
 */
@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		RegisterDao rdao = new RegisterDao();
		boolean flag = rdao.checkLogin(username, password);
		System.out.println(flag);
		if (username.equals("admin") && password.equals("admin")) {
			response.sendRedirect("AdminMenu.jsp");
		} else {
			if (flag == true) {

				HttpSession session = request.getSession();
				session.setAttribute("username", username);

				response.sendRedirect("ClientMenu.jsp");
			} else {
				response.sendRedirect("Error.jsp");
			}

		}
	}

}
