package vn.iotstar.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import vn.iotstar.dao.impl.UserDao;
import vn.iotstar.models.User;
import vn.iotstar.services.IUserService;
import vn.iotstar.services.impl.UserServiceImpl;

import java.io.IOException;
import java.nio.file.Paths;
import java.nio.file.Files;

@WebServlet("/profile")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProfileController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session != null && session.getAttribute("account") != null) {
			User user = (User) session.getAttribute("account");
			request.setAttribute("user", user);
			request.getRequestDispatcher("/views/profile.jsp").forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String alertMsg = "";

		HttpSession session = request.getSession();
		if (session != null && session.getAttribute("account") != null) {
			User user = (User) session.getAttribute("account");

			// Lấy thông tin từ form
			String fullname = request.getParameter("fullname");
			String phone = request.getParameter("phone");

			Part part = request.getPart("images");
			if (part == null || part.getSize() == 0) {
				response.sendRedirect("views/profile.jsp?error=No file uploaded");
				return;
			}
			String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
			String images = fileName;

			// Lưu file vào server
			String uploadPath = getServletContext().getRealPath("/uploads");
			if(!Files.exists(Paths.get(uploadPath))) {
				Files.createDirectory(Paths.get(uploadPath));
			}

			part.write(uploadPath + "/" + fileName);

			user.setFullname(fullname);
			user.setPhone(phone);
			user.setImages(images);

			IUserService service = new UserServiceImpl();
			boolean updateSuccess = service.updateUserInfo(user);

			if (updateSuccess) {
				alertMsg = "Cập nhật thông tin thành công";

				request.setAttribute("user", user);
				request.getRequestDispatcher("/views/profile.jsp").forward(request, response);
			} else {
				alertMsg = "Cập nhật thông tin thất bại";
			}
		} else {
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}

}
