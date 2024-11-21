package controllers.user;

import java.io.IOException;
import java.util.List;

import dao.Impl.CartDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.CartModel;
import models.UserModel;

@WebServlet(urlPatterns = {"/user/cart"})
public class UserCartController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private CartDao cartDao = new CartDao();
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
		    // Lấy danh sách sản phẩm trong giỏ hàng
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
		    
		    req.setAttribute("cartItems", cartItems);

		    req.getRequestDispatcher("/views/user/userCart.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  HttpSession session = req.getSession(false);
		    if (session == null) {
		        session = req.getSession(true); 
		    }
		 
	        UserModel user =  (UserModel) session.getAttribute("account");

	        if (user == null) {
	        	 String currentUrl = req.getRequestURL() + 
	        		        (req.getQueryString() != null ? "?" + req.getQueryString() : "");
	        		    session.setAttribute("redirectUrl", currentUrl);
	        		    resp.sendRedirect(req.getContextPath() + "/login");
	        		    return;
	        }
	        String action = req.getParameter("action");
	        String productCode = req.getParameter("productCode");
	        String categoryCode = req.getParameter("categoryCode");
	        String size = req.getParameter("size");
	        int quantity = Integer.parseInt(req.getParameter("quantity"));
	        int quantityChange = Integer.parseInt(req.getParameter("quantityChange"));
	        
	        if (categoryCode == null || categoryCode.isEmpty()) {
	            session.setAttribute("cartError", "Lỗi: Không xác định được mã loại sản phẩm.");
	            resp.sendRedirect(req.getHeader("Referer"));
	            return;
	        }
	        boolean result = false;
	        
	        switch(action)
	        { 
	        case "add" : 
	        case "remove" :
	        	result = cartDao.updateQuantity(user.getUserID(), productCode, size, quantityChange);
	        	break;
	        case "delete" :
	        	result = cartDao.removeFromCart(user.getUserID(), productCode, size);
	        	break;
	        }

	        CartModel cartItem = new CartModel();
	        cartItem.setUserID(user.getUserID());
	        cartItem.setProductCode(productCode);
	        cartItem.setCategoryCode(categoryCode);
	        cartItem.setSize(size);
	        cartItem.setQuantity(quantity);
	        
	       
	        
	        boolean isAdded = cartDao.addToCart(cartItem);
	        if (isAdded) {
	            session.setAttribute("cartMessage", "Sản phẩm đã được thêm vào giỏ hàng.");
	        } else {
	            session.setAttribute("cartError", "Không thể thêm sản phẩm vào giỏ hàng. Vui lòng thử lại.");
	        }
	        if (result) {
	            session.setAttribute("cartMessage", "Giỏ hàng đã được cập nhật thành công.");
	        } else {
	            session.setAttribute("cartError", "Không thể cập nhật giỏ hàng. Vui lòng thử lại.");
	        }
	        
	        // Chuyển hướng về trang chi tiết sản phẩm hoặc giỏ hàng
	        String referer = req.getHeader("Referer");
	        resp.sendRedirect((referer != null) ? referer : req.getContextPath() + "/user/userCart");
	}
}
