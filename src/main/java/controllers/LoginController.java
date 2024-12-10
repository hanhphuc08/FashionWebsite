package controllers;

import java.io.IOException;

import org.apache.hc.client5.http.ClientProtocolException;

import com.google.gson.Gson;

import configs.Iconstant;
import controllers.user.GoogleLogin;
import dao.Impl.CartDao;
import dao.Impl.OrderDao;
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

		if (user != null) {

			HttpSession session = req.getSession(true);
			session.setAttribute("account", user);
			
			CartDao cartDao = new CartDao();
	        int cartItemCount = cartDao.getCartItemCount(user.getUserID());
	        session.setAttribute("cartItemCount", cartItemCount);


			if ("Admin".equals(user.getRoleID())) {
				OrderDao orderDao = new OrderDao();
	            int pendingOrder = orderDao.getPendingOrderCountToday();
	            session.setAttribute("pendingOrder", pendingOrder);
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
	@SuppressWarnings("unused")
	private void processResquest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String code = req.getParameter("code");
		GoogleLogin gg = new GoogleLogin();
		String accessToken = gg.getToken(code);
		System.out.println(accessToken);
		UserModel acc = gg.getUserInfo(accessToken);
		System.out.println(acc);

	}
	
}
