package controllers.user;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import dao.Impl.CartDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.CartModel;
import models.OrderModel;
import models.UserModel;

@WebServlet(urlPatterns={"/user/checkoutReview"})
public class UserCheckoutReviewController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private CartDao cartDao = new CartDao();
	 private String formatCurrency(double amount) {
	        DecimalFormat formatter = new DecimalFormat("###,###,###");
	        return formatter.format(amount) + " VND";
	    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(false);
	    UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;
	    if (user == null) {
            // Lưu URL hiện tại để chuyển hướng sau đăng nhập
            String currentUrl = req.getRequestURL() + 
                                (req.getQueryString() != null ? "?" + req.getQueryString() : "");
            session = req.getSession(true);
            session.setAttribute("redirectUrl", currentUrl);

            // Chuyển hướng đến trang login
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
	    List<CartModel> cartItems = cartDao.getAllCartWithDetail(user.getUserID());
	    
	    double totalAmount = 0;
        for(CartModel item : cartItems) {
        	totalAmount += item.getPrice() * item.getQuantity();
        	item.setPriceFormatted(formatCurrency(item.getPrice())); // Định dạng giá từng sản phẩm
            item.setTotalPriceFormatted(formatCurrency(item.getPrice() * item.getQuantity()));
        }
        double shipping = 0;
        double serviceTax = 0;
        double finalTotal = totalAmount + shipping + serviceTax;
        
        OrderModel order = new OrderModel();
        order.setUserID(user.getUserID());
        order.setTotalAmount(finalTotal);
        order.setStatus("Đang xác nhận");
        
        
        session.setAttribute("order", order);
        session.setAttribute("orderDetails", cartItems);
        
        req.setAttribute("totalAmountFormatted", formatCurrency(totalAmount));
        req.setAttribute("shippingFormatted", formatCurrency(shipping));
        req.setAttribute("serviceTaxFormatted", formatCurrency(serviceTax));
        req.setAttribute("finalTotalFormatted", formatCurrency(finalTotal));
	    
	    req.setAttribute("cartItems", cartItems);

				
		req.getRequestDispatcher("/views/user/userCheckoutReview.jsp").forward(req, resp);
	}
	
	

}
