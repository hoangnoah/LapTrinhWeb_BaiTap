package vn.iotstar.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = { "/home", "/trangchu" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		resp.setContentType("text/html");
//		resp.setCharacterEncoding("UTF-8");
//		req.setCharacterEncoding("UTF-8");
//
//		String ten = req.getParameter("ten");
//		String holot = req.getParameter("holot");
//
//		PrintWriter printW = resp.getWriter();
//		printW.println(holot + "" + ten);
//
//		printW.close();
		resp.sendRedirect("views/index.html");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");

		String ten = req.getParameter("ten");
		String holot = req.getParameter("holot");	
		
		req.setAttribute("ten", ten);
		req.setAttribute("holot", holot);
		
		RequestDispatcher rd = req.getRequestDispatcher("views/home.jsp");
		rd.forward(req, resp);
	}

}
