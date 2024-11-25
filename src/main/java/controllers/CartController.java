package controllers;

import java.io.IOException;

import dao.Impl.CartDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.CartModel;
import models.UserModel;


@MultipartConfig(fileSizeThreshold = 1024 * 1024, 
			maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5 )

@WebServlet(urlPatterns = {"/cart"})
public class CartController extends HttpServlet{

	private static final long serialVersionUID = 1L;
//	public ICategoryService cateService = new CategoryServiceImpl();
	private CartDao cartDao = new CartDao();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 HttpSession session = req.getSession(false);
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        // Nếu chưa đăng nhập
	        if (user == null) {
	            String redirectUrl = req.getParameter("redirectUrl"); // Lấy URL chuyển hướng
	            if (redirectUrl != null) {
	                session = req.getSession(true); // Tạo session nếu chưa tồn tại
	                session.setAttribute("redirectUrl", redirectUrl);
	            }
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }

	        // Nếu đã đăng nhập, chuyển hướng đến /user/cart
	        resp.sendRedirect(req.getContextPath() + "/user/cart");
	}
	}


