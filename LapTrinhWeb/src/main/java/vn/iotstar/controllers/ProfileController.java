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

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

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
		User u = (User) session.getAttribute("account");

		// Lấy thông tin từ form
//	    int userId = Integer.parseInt(request.getParameter("id"));
		String fullname = request.getParameter("fullname");
		String phone = request.getParameter("phone");

		// Xử lý upload file
		Part filePart = request.getPart("images");
		if (filePart == null || filePart.getSize() == 0) {
			response.sendRedirect("views/profile.jsp?error=No file uploaded");
			return;
		}
		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
		String images = "uploads/" + fileName;

		// Lưu file vào server
		String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists())
			uploadDir.mkdir();

		filePart.write(uploadPath + File.separator + fileName);

		User user = new User();
		user.setId(u.getId());
		user.setFullname(fullname);
		user.setPhone(phone);
		user.setImages(images);

		IUserService service = new UserServiceImpl();
		boolean updateSuccess = service.updateUserInfo(user);

		if (updateSuccess) {
			alertMsg = "Cập nhật thông tin thành công";
			request.setAttribute("alert", alertMsg);
			request.getRequestDispatcher("/views/profile.jsp").forward(request, response);
		} else {
			alertMsg = "Cập nhật thông tin thất bại";
			request.setAttribute("alert", alertMsg);
			request.getRequestDispatcher("/views/profile.jsp").forward(request, response);
		}
	}

}
