package controllers.user;

import java.io.IOException;
import java.util.List;

import dao.Impl.CartDao;
import dao.Impl.OrderDao;
import dao.Impl.OrderDetailDao;
import dao.Impl.UserAddressDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.CartModel;
import models.OrderDetailModel;
import models.UserAddressModel;
import models.UserModel;



@WebServlet(urlPatterns={"/user/orderDetail"})
public class UserOrderDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartDao cartDao = new CartDao();
	OrderDao orderDao = new OrderDao();
	private UserAddressDao userAddressDao = new UserAddressDao();
	private OrderDetailDao orderDetailDao = new OrderDetailDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			HttpSession session = req.getSession();
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        if (user == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }
	        
	        String orderIDStr = req.getParameter("orderID");
	        if (orderIDStr == null || orderIDStr.isEmpty()) {
	            resp.sendRedirect(req.getContextPath() + "/user/orders");
	            return;
	        }
	        int orderID = Integer.parseInt(orderIDStr);
	        
	        List<OrderDetailModel> orderDetails = orderDetailDao.getOrderDetailsByOrderId(orderID);
	        req.setAttribute("orderDetails", orderDetails);

	        
	        List<CartModel> cartItems = cartDao.getAllCartWithDetail(user.getUserID());
		    
		    double totalAmount = 0;
	        for(CartModel item : cartItems) {
	        	totalAmount += item.getPrice() * item.getQuantity();
	        }
	        double shipping = 0;
	        double serviceTax = 0;
	        double finalToTal = totalAmount + shipping + serviceTax;
	        
	        req.setAttribute("totalAmount", totalAmount);
	        req.setAttribute("shipping", shipping);
	        req.setAttribute("serviceTax", serviceTax);
	        req.setAttribute("finalTotal", finalToTal);
	        
	       UserAddressModel userAddress = userAddressDao.getAddressByUserId(user.getUserID());
	       if (userAddress != null) {
               req.setAttribute("userAddress", userAddress);
           } else {
               req.setAttribute("addressError", "Không tìm thấy địa chỉ giao hàng.");
           }
	        
	       
		req.getRequestDispatcher("/views/user/userOrderDetail.jsp").forward(req, resp);
	}
	
	
}
