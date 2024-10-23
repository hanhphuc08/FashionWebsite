package controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.Impl.UserService;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
	}



	@SuppressWarnings("static-access")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String password = req.getParameter("password");
		String repeatPassword = req.getParameter("repeatpass");
		UserService service = new UserService();
		String alertMsg = "";
		if(fullname.isEmpty() || email.isEmpty() || phone.isEmpty() || address.isEmpty() || password.isEmpty() || repeatPassword.isEmpty())
		{
			alertMsg = "Vui lòng nhập đầy đủ thông tin";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
			return;
		}
		if(!password.equals(repeatPassword))
		{
			alertMsg = "Vui lòng nhập đúng mật khẩu";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
			return;
		}
		if (service.checkExistEmail(email)) {
			alertMsg = "Email đã được đăng ký trước đó!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
			return;
		}
		if (service.checkExistPhone(phone)) {
			alertMsg = "Số điện thoại đã được đăng ký trước đó!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
			return;
		}
		boolean isSuccess = service.register(fullname, email, phone, address, password);
		if (isSuccess) {
		//SendMail sm = new SendMail();
		//sm.sendMail(email, "Shopping.iotstar.vn", "Welcome to Shopping. Please Login to use service. Thanks !");
		HttpSession session = req.getSession();
		session.setAttribute("successMessage", "Đăng ký thành công");
		resp.sendRedirect(req.getContextPath() + "/login");
		} else {
		alertMsg = "Lỗi hệ thống! Vui lòng thử lại sau.";
		req.setAttribute("alert", alertMsg);
		req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
	}
}
}