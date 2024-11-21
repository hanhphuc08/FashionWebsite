package controllers.user;

import java.io.IOException;
import java.util.List;

import dao.Impl.CartDao;
import dao.Impl.CategoryDetailDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.CartModel;
import models.ProductModel;
import models.UserModel;

@WebServlet(urlPatterns= {"/user/categoryDetail"})
public class UserCategoryDetailController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 private CategoryDetailDao categoryDetailDao = new CategoryDetailDao();
	 private CartDao cartDao = new CartDao();
	 @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	        String productCode = req.getParameter("productCode");
	        if (productCode == null || productCode.isEmpty()) {
	            resp.sendRedirect(req.getContextPath() + "/categories");
	            return;
	        }

	        ProductModel product = categoryDetailDao.showProductDetail(productCode);

	        if (product == null) {
	            resp.sendRedirect(req.getContextPath() + "/404");
	            return;
	        }
	        
	        List<ProductModel> similarProduct = categoryDetailDao.getSimilarProduct(product.getCategoryCode(), productCode, 6);
	        req.setAttribute("product", product);
	        req.setAttribute("similarProduct", similarProduct);
	        req.getRequestDispatcher("/views/user/userCategoryDetail.jsp").forward(req, resp);
	    }

	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        HttpSession session = req.getSession(false);
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        if (user == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }

	        // Lấy thông tin từ form
	        String productCode = req.getParameter("productCode");
	        String size = req.getParameter("size");
	        String categoryCode = req.getParameter("categoryCode");
	        int quantity = Integer.parseInt(req.getParameter("quantity"));

	        // Tạo đối tượng CartModel
	        CartModel cartItem = new CartModel();
	        cartItem.setUserID(user.getUserID());
	        cartItem.setProductCode(productCode);
	        cartItem.setSize(size);
	        cartItem.setCategoryCode(categoryCode);
	        cartItem.setQuantity(quantity);

	        boolean isAdded = cartDao.addToCart(cartItem);

	        if (isAdded) {
	            req.setAttribute("successMessage", "Sản phẩm đã được thêm vào giỏ hàng thành công.");
	        } else {
	            req.setAttribute("errorMessage", "Đã xảy ra lỗi khi thêm sản phẩm vào giỏ hàng.");
	        }

	        doGet(req, resp);
	    }
}
