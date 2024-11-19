package controllers.user;

import java.io.IOException;
import java.util.List;

import dao.Impl.CategoryDetailDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.ProductModel;

@WebServlet(urlPatterns= {"/user/categoryDetail"})
public class UserCategoryDetailController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
	    resp.setCharacterEncoding("UTF-8");

	    String productCode = req.getParameter("productCode");

	    CategoryDetailDao ctDao = new CategoryDetailDao();
	    ProductModel product = ctDao.showProductDetail(productCode);
	    
	    List<ProductModel> similarProduct = ctDao.getSimilarProduct(product.getCategoryCode(), productCode, 6);
	
	    req.setAttribute("product", product);

	    req.setAttribute("similarProduct", similarProduct);
	    req.getRequestDispatcher("/views/user/userCategoryDetail.jsp").forward(req, resp);
	}
}
