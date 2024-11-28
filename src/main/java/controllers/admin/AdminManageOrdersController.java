package controllers.admin;

import java.io.IOException;
import java.util.List;

import dao.Impl.OrderDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.OrderModel;
import models.UserModel;


	@WebServlet(urlPatterns = { "/admin/manageOrders" })
	public class AdminManageOrdersController extends HttpServlet {

		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		OrderDao orderDao = new OrderDao();
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			HttpSession session = req.getSession();
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        if (user == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }
	        List<OrderModel> order = orderDao.getAllOrders();
			req.setAttribute("orderList", order);
			
			req.getRequestDispatcher("/views/admin/adminManageOrders.jsp").forward(req, resp);
		}
		
}
