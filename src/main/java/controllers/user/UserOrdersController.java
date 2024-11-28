package controllers.user;

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

@WebServlet(urlPatterns={"/user/orders"})
public class UserOrdersController extends HttpServlet {

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
        String userName = user.getFullname();
	    req.setAttribute("userName", userName);
	    

		List<OrderModel> order = orderDao.getOrdersByUserId(user.getUserID());
		req.setAttribute("orderList", order);
		
		
		int orderCount = orderDao.getTotalOrders();
		req.setAttribute("orderCount", orderCount);
		
		
		req.getRequestDispatcher("/views/user/userOrders.jsp").forward(req, resp);
	}
	
	

}
