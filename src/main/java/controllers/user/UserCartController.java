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
		    
		    int cartItemCount = cartDao.getCartItemCount(user.getUserID());
		    session.setAttribute("cartItemCount", cartItemCount);

		    

		    req.getRequestDispatcher("/views/user/userCart.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    HttpSession session = req.getSession(false);
	    if (session == null) {
	        session = req.getSession(true); 
	    }

	    UserModel user = (UserModel) session.getAttribute("account");

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

	    System.out.println("Action: " + action);
	    System.out.println("UserID: " + user.getUserID());
	    System.out.println("ProductCode: " + productCode);
	    System.out.println("Size: " + size);

	    // Xử lý action "delete"
	    if ("delete".equals(action)) {
	        boolean result = cartDao.removeFromCart(user.getUserID(), productCode, size);
	        System.out.println("Remove result: " + result);

	        if (result) {
	            session.setAttribute("cartMessage", "Sản phẩm đã được xóa khỏi giỏ hàng.");
	            int cartItemCount = cartDao.getCartItemCount(user.getUserID());
	            session.setAttribute("cartItemCount", cartItemCount);
	        } else {
	            session.setAttribute("cartError", "Không thể xóa sản phẩm khỏi giỏ hàng. Vui lòng thử lại.");
	        }
	    } else {
	        // Xử lý các hành động khác (add, update)
	        String quantityStr = req.getParameter("quantity");
	        if (quantityStr == null || quantityStr.isEmpty()) {
	            quantityStr = "0"; // Giá trị mặc định nếu thiếu
	        }

	        int quantity = Integer.parseInt(quantityStr);

	        // Tiếp tục xử lý logic thêm hoặc cập nhật giỏ hàng
	        CartModel cartItem = new CartModel();
	        cartItem.setUserID(user.getUserID());
	        cartItem.setProductCode(productCode);
	        cartItem.setCategoryCode(categoryCode);
	        cartItem.setSize(size);
	        cartItem.setQuantity(quantity);

	        boolean isAdded = cartDao.addToCart(cartItem);
	        int itemCount = cartDao.getCartItemCount(user.getUserID());
	        if (isAdded) {
	            session.setAttribute("cartMessage", "Sản phẩm đã được thêm vào giỏ hàng.");
	            int cartItemCount = cartDao.getCartItemCount(user.getUserID());
	            session.setAttribute("cartItemCount", cartItemCount);
	        } else {
	            session.setAttribute("cartError", "Không thể thêm sản phẩm vào giỏ hàng. Vui lòng thử lại.");
	        }
	        session.setAttribute("itemCount", itemCount);
	    }

	    // Cập nhật danh sách giỏ hàng
	    List<CartModel> updatedCartItems = cartDao.getAllCartWithDetail(user.getUserID());
	    System.out.println("Updated cart size: " + updatedCartItems.size());
	    req.setAttribute("cartItems", updatedCartItems);

	    // Chuyển hướng về trang chi tiết sản phẩm hoặc giỏ hàng
	    String referer = req.getHeader("Referer");
	    resp.sendRedirect((referer != null) ? referer : req.getContextPath() + "/user/cart");
	}

}
