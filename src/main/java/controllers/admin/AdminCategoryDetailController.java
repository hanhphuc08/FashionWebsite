package controllers.admin;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import dao.Impl.CartDao;
import dao.Impl.CategoryDetailDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.ProductModel;
import models.UserModel;

@WebServlet(urlPatterns = { "/admin/categoryDetail" })
public class AdminCategoryDetailController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 private CategoryDetailDao categoryDetailDao = new CategoryDetailDao();
	 private CartDao cartDao = new CartDao();
	 private String formatCurrency(double amount) {
	        DecimalFormat formatter = new DecimalFormat("###,###,###");
	        return formatter.format(amount) + " VND";
	    }
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
	        product.setPriceFormatted(formatCurrency(product.getPrice()));
	        
	        List<ProductModel> similarProduct = categoryDetailDao.getSimilarProduct(product.getCategoryCode(), productCode, 6);
	        for (ProductModel sp : similarProduct) {
	            sp.setPriceFormatted(formatCurrency(sp.getPrice()));
	        }
	        req.setAttribute("product", product);
	        req.setAttribute("similarProduct", similarProduct);
		req.getRequestDispatcher("/views/admin/adminCategoryDetail.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  HttpSession session = req.getSession(false);
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        if (user == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }
	        
	        doGet(req, resp);
	}
}
