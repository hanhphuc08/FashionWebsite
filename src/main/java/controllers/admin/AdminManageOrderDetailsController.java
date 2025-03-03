package controllers.admin;

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
import models.OrderDetailModel;
import models.OrderModel;
import models.UserAddressModel;
import models.UserModel;
import utils.Email;

@WebServlet(urlPatterns= {"/admin/manageOrderDetails"})
public class AdminManageOrderDetailsController extends HttpServlet {

	/**
	 * 
	 */
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
		        resp.sendRedirect(req.getContextPath() + "/admin/manageOrders");
		        return;
		    }
		    int orderID = Integer.parseInt(orderIDStr);

		    List<OrderDetailModel> orderDetails = orderDetailDao.getOrderDetailsByOrderId(orderID);
		    req.setAttribute("orderDetails", orderDetails);
		    
		    OrderModel order = orderDao.getOrderById(orderID); 
		    int orderCount = orderDao.getTotalOrders();
		    req.setAttribute("order", order);
		    req.setAttribute("orderCount", orderCount);

		    double totalAmount = 0;
		    for (OrderDetailModel orderDetail : orderDetails) {
		        totalAmount += orderDetail.getPrice() * orderDetail.getQuantity();
		        orderDetail.setPriceFormatted(formatCurrency(orderDetail.getPrice()));
		        orderDetail.setTotalPriceFormatted(formatCurrency(orderDetail.getPrice() * orderDetail.getQuantity()));
		    }

		    double shipping = 0; 
		    double serviceTax = 0; 
		    double finalTotal = totalAmount + shipping + serviceTax;

		    req.setAttribute("totalAmountFormatted", formatCurrency(totalAmount));
	        req.setAttribute("shippingFormatted", formatCurrency(shipping));
	        req.setAttribute("serviceTaxFormatted", formatCurrency(serviceTax));
	        req.setAttribute("finalTotalFormatted", formatCurrency(finalTotal));

		    int customerUserId = order.getUserID();
		    System.out.println("Order UserID: " + customerUserId);
		 
			 UserAddressModel userAddress = userAddressDao.getAddressByUserId(customerUserId);

			 System.out.println("Customer UserID: " + customerUserId);
	
			 if (userAddress == null) {
			     System.out.println("Không tìm thấy địa chỉ giao hàng cho UserID: " + customerUserId);
			 }
			 if (userAddress != null) {
			     req.setAttribute("userAddress", userAddress);
			 } else {
			     req.setAttribute("addressError", "Không tìm thấy địa chỉ giao hàng.");
			 }

		    
		    
		req.getRequestDispatcher("/views/admin/adminManageOrderDetails.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String orderIDStr = req.getParameter("orderID");
	        String status = req.getParameter("status");
	        System.out.println("Status: " + status);
	        
	        if ("Hủy".equals(status)) {
	            status = "Huỷ"; 
	        }

	        if (orderIDStr == null || orderIDStr.isEmpty() || status == null || status.isEmpty()) {
	            resp.sendRedirect(req.getContextPath() + "/admin/manageOrderDetails?orderID=" + orderIDStr);
	            return;
	        }

	        int orderID = Integer.parseInt(orderIDStr);
	        
	        boolean updateSuccess = orderDao.updateOrderStatus(orderID, status);
	        
	        if (updateSuccess) {
	            OrderModel order = orderDao.getOrderById(orderID);
	            UserModel user = order.getUser();
	            if (user == null) {
	                req.setAttribute("errorMessage", "Không tìm thấy thông tin người dùng.");
	                req.getRequestDispatcher("/views/admin/adminManageOrderDetails.jsp").forward(req, resp);
	                return;
	            }

	            String recipient = user.getEmail();
	            String subject = "Cập nhật trạng thái đơn hàng #" + orderID;
	            String content;

	            if ("Xác nhận".equals(status)) {
	                content = "<h1>Xin chào " + user.getFullname() + "</h1>"
	                        + "<p>Đơn hàng #" + orderID + " của bạn đã được xác nhận.</p>"
	                        + "<p>Chúng tôi sẽ tiến hành xử lý đơn hàng của bạn trong thời gian sớm nhất.</p>"
	                        + "<p>Cảm ơn bạn đã mua sắm tại cửa hàng của chúng tôi!</p>";
	            } else if ("Huỷ".equals(status)) {
	                content = "<h1>Xin chào " + user.getFullname() + "</h1>"
	                        + "<p>Đơn hàng #" + orderID + " của bạn đã bị hủy.</p>"
	                        + "<p>Nếu bạn có bất kỳ thắc mắc nào, vui lòng liên hệ với chúng tôi.</p>"
	                        + "<p>Rất tiếc về sự bất tiện này.</p>";
	            } else {
	                content = "<h1>Xin chào " + user.getFullname() + "</h1>"
	                        + "<p>Đơn hàng #" + orderID + " đã được cập nhật trạng thái thành: " + status + ".</p>";
	            }

	            try {
	                Email.sendEmail(recipient, subject, content);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }

	            req.setAttribute("successMessage", "Cập nhật trạng thái đơn hàng thành công!");
	            resp.sendRedirect(req.getContextPath() + "/admin/manageOrders");
	        } else {
	            req.setAttribute("errorMessage", "Đã xảy ra lỗi khi cập nhật trạng thái đơn hàng.");
	            req.getRequestDispatcher("/views/admin/adminManageOrderDetails.jsp").forward(req, resp);
	        }

	        
	    }

}
