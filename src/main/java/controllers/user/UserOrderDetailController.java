package controllers.user;

import java.io.IOException;
import java.text.DecimalFormat;
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
import models.OrderModel;
import models.UserAddressModel;
import models.UserModel;



@WebServlet(urlPatterns={"/user/orderDetail"})
public class UserOrderDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartDao cartDao = new CartDao();
	OrderDao orderDao = new OrderDao();
	private UserAddressDao userAddressDao = new UserAddressDao();
	private OrderDetailDao orderDetailDao = new OrderDetailDao();
	 private String formatCurrency(double amount) {
	        DecimalFormat formatter = new DecimalFormat("###,###,###");
	        return formatter.format(amount) + " VND";
	    }
	
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


	    String orderIDStr = req.getParameter("orderID");
	    if (orderIDStr == null || orderIDStr.isEmpty()) {
	        resp.sendRedirect(req.getContextPath() + "/user/orders");
	        return;
	    }
	    int orderID = Integer.parseInt(orderIDStr);

	    // Lấy chi tiết đơn hàng từ OrderDetailDao
	    List<OrderDetailModel> orderDetails = orderDetailDao.getOrderDetailsByOrderId(orderID);
	    req.setAttribute("orderDetails", orderDetails);
	    
	    OrderModel order = orderDao.getOrderById(orderID); 
	    int orderCount = orderDao.getTotalOrders();
	    req.setAttribute("order", order);
	    req.setAttribute("orderCount", orderCount);

	    // Tính toán tổng tiền đơn hàng từ orderDetails
	    double totalAmount = 0;
	    for (OrderDetailModel orderDetail : orderDetails) {
	        totalAmount += orderDetail.getPrice() * orderDetail.getQuantity();
	        orderDetail.setPriceFormatted(formatCurrency(orderDetail.getPrice()));
	        orderDetail.setTotalPriceFormatted(formatCurrency(orderDetail.getPrice() * orderDetail.getQuantity()));
	    }

	    // Bạn có thể thêm logic cho phí vận chuyển và thuế nếu cần
	    double shipping = 0; // Có thể tính phí vận chuyển nếu cần
	    double serviceTax = 0; // Có thể tính thuế dịch vụ nếu cần
	    double finalTotal = totalAmount + shipping + serviceTax;

	    req.setAttribute("totalAmountFormatted", formatCurrency(totalAmount));
        req.setAttribute("shippingFormatted", formatCurrency(shipping));
        req.setAttribute("serviceTaxFormatted", formatCurrency(serviceTax));
        req.setAttribute("finalTotalFormatted", formatCurrency(finalTotal));

	    // Lấy địa chỉ giao hàng của người dùng
	    UserAddressModel userAddress = userAddressDao.getAddressByUserId(user.getUserID());
	    if (userAddress != null) {
	        req.setAttribute("userAddress", userAddress);
	    } else {
	        req.setAttribute("addressError", "Không tìm thấy địa chỉ giao hàng.");
	    }

	    req.getRequestDispatcher("/views/user/userOrderDetail.jsp").forward(req, resp);
	}


	
	
}
