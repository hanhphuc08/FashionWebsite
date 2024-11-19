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

		    // Nếu chưa đăng nhập, chuyển đến trang login
		    if (user == null) {
		        String currentUrl = req.getRequestURL() + 
		            (req.getQueryString() != null ? "?" + req.getQueryString() : "");
		        session.setAttribute("redirectUrl", currentUrl);
		        resp.sendRedirect(req.getContextPath() + "/login");
		        return;
		    }

		    // Lấy danh sách sản phẩm trong giỏ hàng
		    List<CartModel> cartItems = cartDao.getAllCartWithDetail(user.getUserID());
		    req.setAttribute("cartItems", cartItems);

		    int cartItemCount = cartDao.getCartItemCount(user.getUserID());
		    session.setAttribute("cartItemCount", cartItemCount);

		    req.getRequestDispatcher("/views/user/userCart.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  HttpSession session = req.getSession(false);
		    if (session == null) {
		        session = req.getSession(true); // Tạo session nếu chưa tồn tại
		    }
		 
	        UserModel user =  (UserModel) session.getAttribute("account");

	        if (user == null) {
	        	 String currentUrl = req.getRequestURL() + 
	        		        (req.getQueryString() != null ? "?" + req.getQueryString() : "");
	        		    session.setAttribute("redirectUrl", currentUrl);
	        		    resp.sendRedirect(req.getContextPath() + "/login");
	        		    return;
	        }

	        String productCode = req.getParameter("productCode");
	        String categoryCode = req.getParameter("categoryCode");
	        String size = req.getParameter("size");
	        int quantity = Integer.parseInt(req.getParameter("quantity"));
	        
	        if (categoryCode == null || categoryCode.isEmpty()) {
	            session.setAttribute("cartError", "Lỗi: Không xác định được mã loại sản phẩm.");
	            resp.sendRedirect(req.getHeader("Referer"));
	            return;
	        }
	        

	        CartModel cartItem = new CartModel();
	        cartItem.setUserID(user.getUserID());
	        cartItem.setProductCode(productCode);
	        cartItem.setCategoryCode(categoryCode);
	        cartItem.setSize(size);
	        cartItem.setQuantity(quantity);
	        
	        

	        // Thêm sản phẩm vào giỏ hàng
	        boolean isAdded = cartDao.addToCart(cartItem);
	        if (isAdded) {
	            session.setAttribute("cartMessage", "Sản phẩm đã được thêm vào giỏ hàng.");
	        } else {
	            session.setAttribute("cartError", "Không thể thêm sản phẩm vào giỏ hàng. Vui lòng thử lại.");
	        }

	        // Chuyển hướng về trang chi tiết sản phẩm hoặc giỏ hàng
	        String referer = req.getHeader("Referer");
	        resp.sendRedirect((referer != null) ? referer : req.getContextPath() + "/user/userCart");
	}
}
