package controllers;

import java.io.IOException;
import java.util.Random;

import javax.mail.MessagingException;

import org.mindrot.jbcrypt.BCrypt;

import dao.Impl.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.UserModel;
import utils.Email;

@WebServlet(urlPatterns={"/forgotPassword"})
public class ForgotPasswordController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDao userDao = new UserDao();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/views/forgotPassword.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");

        if ("sendEmail".equals(action)) {
            String email = req.getParameter("email");

            UserModel user = userDao.findByEmail(email);

            if (user != null) {
                String otp = generateOTP(); 
                HttpSession session = req.getSession();
                session.setAttribute("otp", otp);
                session.setAttribute("email", email);
                try {
					Email.sendEmail(email, "Mã xác nhận quên mật khẩu", "Mã OTP của bạn là: " + otp);
				} catch (MessagingException e) {
					e.printStackTrace();
				}
                resp.sendRedirect(req.getContextPath() + "/forgotPassword?step=verify");
            } else {
                req.setAttribute("errorMessage", "Email không tồn tại trong hệ thống.");
                req.getRequestDispatcher("/views/forgotPassword.jsp").forward(req, resp);
            }
        }

        if ("verifyCode".equals(action)) {
            String otp = req.getParameter("code");
            HttpSession session = req.getSession();


            if (otp.equals(session.getAttribute("otp"))) {
                resp.sendRedirect(req.getContextPath() + "/forgotPassword?step=reset");
            } else {
                req.setAttribute("errorMessage", "Mã xác nhận không chính xác.");
                req.getRequestDispatcher("/views/forgotPassword.jsp").forward(req, resp);
            }
        }

        if ("resetPassword".equals(action)) {
            String newPassword = req.getParameter("newPassword");
            String confirmPassword = req.getParameter("confirmPassword");
            HttpSession session = req.getSession();
            String email = (String) session.getAttribute("email");

            if (!newPassword.equals(confirmPassword)) {
                req.setAttribute("errorMessage", "Mật khẩu xác nhận không khớp.");
                req.getRequestDispatcher("/views/forgotPassword.jsp").forward(req, resp);
                return;
            }

            String hashedPassword = BCrypt.hashpw(newPassword, BCrypt.gensalt());
            if (userDao.updatePassword(email, hashedPassword)) {
                HttpSession session2 = req.getSession();
                session2.setAttribute("successMessage", "Mật khẩu đã được đặt lại thành công.");
                
                resp.sendRedirect(req.getContextPath() + "/login");
            } else {
                req.setAttribute("errorMessage", "Không thể đặt lại mật khẩu. Vui lòng thử lại.");
                req.getRequestDispatcher("/views/forgotPassword.jsp").forward(req, resp);
            }
        }
    }

    private String generateOTP() {
        Random random = new Random();
        return String.format("%06d", random.nextInt(1000000));
    }

}
