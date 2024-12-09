package controllers;

import java.io.IOException;

import dao.Impl.CartDao;
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
		
		HttpSession session = req.getSession(false);
	    if (session != null) {
	        String successMessage = (String) session.getAttribute("successMessage");
	        if (successMessage != null) {
	            req.setAttribute("successMessage", successMessage);
	            session.removeAttribute("successMessage");
	        }
	    }
	    req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
		
		
	}

	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// mã hóa UTF-8
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");


		String username = req.getParameter("username");
		String password = req.getParameter("password");
		

		String alertMsg = "";
		if (username.isEmpty() || password.isEmpty()) {
			alertMsg = "Tài khoản hoặc mật khẩu không được rỗng";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
			return;
		}
		System.out.println(username);
		System.out.println(password);
		UserModel user = service.login(username, password);
		
		System.out.println(user.toString());
		if (user != null) {

			HttpSession session = req.getSession(true);
			session.setAttribute("account", user);
			
			CartDao cartDao = new CartDao();
	        int cartItemCount = cartDao.getCartItemCount(user.getUserID());
	        session.setAttribute("cartItemCount", cartItemCount);


			if ("Admin".equals(user.getRoleID())) {

				resp.sendRedirect(req.getContextPath() + "/admin/home");
			} else {
				String productCode = (String) session.getAttribute("productCode");
                session.removeAttribute("productCode");

                if (productCode != null) {
                    resp.sendRedirect(req.getContextPath() + "/user/categoryDetail?productCode=" + productCode);
                } else {
                    resp.sendRedirect(req.getContextPath() + "/user/home");
                }
			}
		} else {

			alertMsg = "Tài khoản hoặc mật khẩu không đúng.";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
		}

	}

}
