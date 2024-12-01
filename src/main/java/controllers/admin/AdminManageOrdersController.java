package controllers.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
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
	        String statusFilter = req.getParameter("status");
	        String paymentMethodFilter = req.getParameter("paymentMethod");
	        
	        
	        List<OrderModel> orders;
	        if (statusFilter != null && !statusFilter.isEmpty()) {
	            orders = orderDao.getOrdersByStatus(statusFilter);
	        } else if (paymentMethodFilter != null && !paymentMethodFilter.isEmpty()) {
	            orders = orderDao.getOrdersByPaymentMethod(paymentMethodFilter);
	        } else {
	            orders = orderDao.getAllOrders();
	        }
	        
	        
	        String searchQuery = req.getParameter("searchQuery");
	        String searchType = req.getParameter("searchType");
	        if (searchQuery != null && !searchQuery.isEmpty()) {
	            if ("orderID".equals(searchType)) {
	                
	                orders = orderDao.getOrdersByOrderID(searchQuery);
	            } else {
	              
	                orders = orderDao.getOrdersByCustomerName(searchQuery);
	            }
	        } else {
	            
	            orders = getAllOrders();
	        }
			req.setAttribute("orderList", orders);
			
			req.getRequestDispatcher("/views/admin/adminManageOrders.jsp").forward(req, resp);
		}
		private List<OrderModel> getAllOrders() {
	        List<OrderModel> orders = new ArrayList<>();
	        String sql = "SELECT o.OrderID, u.FullName, o.OrderDate, o.Status, SUM(od.Quantity * p.Price) AS TotalAmount " +
	                     "FROM Orders o " +
	                     "INNER JOIN Users u ON o.UserID = u.UserID " +
	                     "INNER JOIN OrderDetails od ON o.OrderID = od.OrderID " +
	                     "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
	                     "GROUP BY o.OrderID, u.FullName, o.OrderDate, o.Status";
	        
	        try (Connection conn = new DBConnectSQL().getConnection();
	             PreparedStatement ps = conn.prepareStatement(sql);
	             ResultSet rs = ps.executeQuery()) {
	            
	            while (rs.next()) {
	                OrderModel order = new OrderModel();
	                order.setOrderID(rs.getInt("OrderID"));
	                order.setFullName(rs.getString("FullName"));
	                order.setOrderDate(rs.getDate("OrderDate"));
	                order.setStatus(rs.getString("Status"));
	                order.setTotalAmount(rs.getDouble("TotalAmount"));
	                orders.add(order);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return orders;
	    }
}
