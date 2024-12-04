package controllers.user;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import dao.Impl.CartDao;
import dao.Impl.CheckOutAddressDao;
import dao.Impl.OrderDao;
import dao.Impl.OrderDetailDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.CartModel;
import models.OrderModel;
import models.UserAddressModel;
import models.UserModel;

@WebServlet(urlPatterns={"/user/checkoutPayment"})
public class UserCheckoutPaymentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private CartDao cartDao = new CartDao();
	 private OrderDao orderDao = new OrderDao();
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
            String currentUrl = req.getRequestURL() +
                    (req.getQueryString() != null ? "?" + req.getQueryString() : "");
            session = req.getSession(true);
            session.setAttribute("redirectUrl", currentUrl);
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
		
		List<CartModel> cartItems = cartDao.getAllCartWithDetail(user.getUserID());
	    
	    double totalAmount = 0;
        for(CartModel item : cartItems) {
        	totalAmount += item.getPrice() * item.getQuantity();
        }
        double shipping = 0;
        double serviceTax = 0;
        double finalToTal = totalAmount + shipping + serviceTax;
        
        req.setAttribute("finalTotal", finalToTal);
        req.setAttribute("totalAmountFormatted", formatCurrency(totalAmount));
        req.setAttribute("shippingFormatted", formatCurrency(shipping));
        req.setAttribute("serviceTaxFormatted", formatCurrency(serviceTax));
        req.setAttribute("finalTotalFormatted", formatCurrency(finalToTal));
	    
	    req.setAttribute("cartItems", cartItems);
		
	    req.setAttribute("userID", user.getUserID());
	    
		req.getRequestDispatcher("/views/user/userCheckoutPayment.jsp").forward(req, resp);
	}
	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");
		HttpSession session = req.getSession(false);
        if (session == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        
        OrderModel order = (OrderModel) session.getAttribute("order");
        List<CartModel> orderDetails = (List<CartModel>) session.getAttribute("orderDetails");
        
        if (order == null || orderDetails == null) {
            resp.sendRedirect(req.getContextPath() + "/user/checkoutReview");
            return;
        }
        
        String paymentMethod = req.getParameter("paymentMethod");
        if (paymentMethod == null || (!"Tiền mặt".equals(paymentMethod) && !"Chuyển khoản".equals(paymentMethod))) {
            paymentMethod = "Chuyển khoản";
        }

        System.out.println("Received paymentMethod: " + paymentMethod);

        order.setPaymentMethod(paymentMethod);
        
        
        int orderID = orderDao.addOrder(order);
        if (orderID <= 0) {
            resp.sendRedirect(req.getContextPath() + "/user/checkoutReview?error=OrderFailed");
            return;
        }
        
        orderDetailDao.addOrderDetails(orderDetails, orderID);
        
        session.removeAttribute("order");
        session.removeAttribute("orderDetails");
        
        resp.sendRedirect(req.getContextPath() + "/user/checkoutConfirm");
	}
}
