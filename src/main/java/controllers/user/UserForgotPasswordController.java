package controllers.user;

import java.io.IOException;
import java.util.UUID;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.IUserService;
import services.Impl.UserService;
import models.UserModel; // Giả sử bạn có một model User

@WebServlet(urlPatterns = { "/user/forgotPassword", "/user/sendResetCode", "/user/verifyCode", "/user/resetPassword" })
public class UserForgotPasswordController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath();

        switch (path) {
            case "/user/sendResetCode":
                handleSendResetCode(req, resp);
                break;

            case "/user/verifyCode":
                handleVerifyCode(req, resp);
                break;

            case "/user/resetPassword":
                handleResetPassword(req, resp);
                break;

            default:
                resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void handleSendResetCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        UserModel user = userService.findByEmail(email);
        
        if (user != null) {
            String resetCode = UUID.randomUUID().toString();
            user.setEmailCode(resetCode);
            userService.updateUser(user);

            // Gửi email xác nhận
            boolean emailSent = userService.sendCode(user.getEmail(), resetCode);

            if (emailSent) {
                req.setAttribute("step", 2); // Chuyển sang bước 2
                req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
            } else {
                req.setAttribute("error", "Gửi email thất bại");
                req.setAttribute("step", 1); // Giữ lại bước 1
                req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("error", "Email không tồn tại");
            req.setAttribute("step", 1); // Giữ lại bước 1
            req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
        }
    }

    private void handleVerifyCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String code = req.getParameter("code");

        UserModel user = userService.findByEmail(email);
        if (user != null && code.equals(user.getEmailCode())) {
            req.setAttribute("step", 3); // Chuyển sang bước 3
            req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
        } else {
            req.setAttribute("error", "Mã xác nhận không đúng");
            req.setAttribute("step", 2); // Giữ lại bước 2
            req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
        }
    }

    private void handleResetPassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String newPassword = req.getParameter("newPassword");
        String confirmPassword = req.getParameter("confirmPassword");

        if (newPassword != null && newPassword.equals(confirmPassword)) {
            UserModel user = userService.findByEmail(email);
            if (user != null) {
                String hashedPassword = userService.hashPassword(newPassword);
                user.setPassword(hashedPassword);
                user.setEmailCode(null); // Xóa mã xác nhận sau khi reset mật khẩu

                boolean isReset = userService.updateUser(user);
                if (isReset) {
                    req.setAttribute("message", "Đặt lại mật khẩu thành công");
                    req.getRequestDispatcher("/views/user/login.jsp").forward(req, resp);
                } else {
                    req.setAttribute("error", "Đặt lại mật khẩu thất bại");
                    req.setAttribute("step", 3); // Giữ lại bước 3
                    req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
                }
            } else {
                req.setAttribute("error", "Email không tồn tại");
                req.setAttribute("step", 1); // Giữ lại bước 1
                req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("error", "Mật khẩu xác nhận không khớp");
            req.setAttribute("step", 3); // Giữ lại bước 3
            req.getRequestDispatcher("/views/user/userForgotPassword.jsp").forward(req, resp);
        }
    }
}
