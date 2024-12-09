package controllers.user;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import dao.Impl.UserAccountDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.UserModel;

@WebServlet(urlPatterns = { "/user/UserAccount" })
public class UserAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserAccountDao userAccountDao = new UserAccountDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 	HttpSession session = req.getSession();
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        if (user == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }
	        UserModel userDetails = userAccountDao.getUserById(user.getUserID());
	        req.setAttribute("user", userDetails);
		
		
		
		req.getRequestDispatcher("/views/user/userAccount.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 HttpSession session = req.getSession();
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        if (user == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }
	        String action = req.getParameter("action");
	        
	        if ("updateProfile".equals(action)) {
	            String fullname = req.getParameter("Fullname");
	            String email = req.getParameter("Email");
	            String phone = req.getParameter("Phone");
	            String address = req.getParameter("Address");

	            user.setFullname(fullname);
	            user.setEmail(email);
	            user.setPhone(phone);
	            user.setAddress(address);

	            if (userAccountDao.updateUserProfile(user)) {
	                req.setAttribute("successMessage", "Thông tin cá nhân đã được cập nhật.");
	            } else {
	                req.setAttribute("errorMessage", "Không thể cập nhật thông tin. Vui lòng thử lại.");
	            }
	        }
	        if ("updatePassword".equals(action)) {
	            String oldPassword = req.getParameter("oldPassword");
	            String newPassword = req.getParameter("newPassword");
	            String confirmPassword = req.getParameter("confirmPassword");

	            if (!BCrypt.checkpw(oldPassword, user.getPassword())) {
	                req.setAttribute("errorMessage", "Mật khẩu cũ không chính xác.");
	            } else if (!newPassword.equals(confirmPassword)) {
	                req.setAttribute("errorMessage", "Mật khẩu mới không khớp.");
	            } else {
	                if (userAccountDao.updatePassword(user.getUserID(), newPassword)) {
	                    req.setAttribute("successMessage", "Mật khẩu đã được thay đổi.");
	                    user.setPassword(BCrypt.hashpw(newPassword, BCrypt.gensalt()));
	                } else {
	                    req.setAttribute("errorMessage", "Không thể thay đổi mật khẩu. Vui lòng thử lại.");
	                }
	            }
	        }
	        UserModel updatedUser = userAccountDao.getUserById(user.getUserID());
	        session.setAttribute("account", updatedUser);
	        req.getRequestDispatcher("/views/user/userAccount.jsp").forward(req, resp);
	}

}
