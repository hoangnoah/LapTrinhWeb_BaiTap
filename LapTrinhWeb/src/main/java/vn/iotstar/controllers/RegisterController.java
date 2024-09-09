package vn.iotstar.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.iotstar.dao.impl.UserDao;
import vn.iotstar.models.User;

import java.io.IOException;

@WebServlet(urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/views/register.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fullname = request.getParameter("fullname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String image = request.getParameter("image");
		String password = request.getParameter("password");

		UserDao userDao = new UserDao();
		User user = userDao.findByEmail(email);

		if (user == null) {
			userDao.insert(new User(username, email, fullname, image, password));
			request.setAttribute("fullname", fullname);
			forwardToHome(request, response);
		} else {
			if (user.getPassword().equals(password)) {
				request.setAttribute("fullname", user.getFullname());
				forwardToHome(request, response);
			} else {
				response.sendRedirect("/views/login.jsp"); 
			}
		}
	}

	private void forwardToHome(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/home.jsp");
		rd.forward(request, response);
	}

}
