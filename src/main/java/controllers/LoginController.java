package controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.UserModel;
import services.Impl.UserService;
import utils.Constants;

@WebServlet(urlPatterns = { "/login" })
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	UserService service = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		 * HttpSession session = req.getSession(false); if(session != null &&
		 * session.getAttribute("account") != null) { UserModel user = (UserModel)
		 * session.getAttribute("account");
		 * 
		 * if (user.getRoleID().equals("Admin")) {
		 * resp.sendRedirect(req.getContextPath() + "/admin/home"); } else {
		 * resp.sendRedirect(req.getContextPath() + "/waiting"); } return; }
		 */
		 req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// mã hóa UTF-8
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");

		// lấy tham số từ view
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		// Xử lý bài toán
		String alertMsg = "";
		if (username.isEmpty() || password.isEmpty()) {
			alertMsg = "Tài khoản hoặc mật khẩu không được rỗng";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
			return;
		}
		UserModel user = service.login(username, password);
		if (user != null) {
			HttpSession session = req.getSession(true);
			session.setAttribute("account", user);
			
			Cookie cookie = new Cookie("username", user.getEmail() != null ? user.getEmail() : user.getPhone());
			cookie.setMaxAge(3600);
			resp.addCookie(cookie);
			
			if("Admin".equals(user.getRoleID()))
			{
				resp.sendRedirect(req.getContextPath() + "/admin/home");
			}
			else {
				resp.sendRedirect(req.getContextPath() + "/waiting");
			}
		} else {
			alertMsg = "Tài khoản hoặc mật khẩu không đúng";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/login.jsp").forward(req, resp);

		}
	}

	/*
	 * private void saveRemeberMe(HttpServletResponse response, String username) {
	 * Cookie cookie = new Cookie(Constants.COOKIE_REMEMBER, username);
	 * cookie.setMaxAge(30 * 60); response.addCookie(cookie); }
	 */
}
