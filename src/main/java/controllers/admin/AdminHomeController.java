package controllers.admin;

import java.io.IOException;
import java.util.List;

import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.ProductModel;

@WebServlet(urlPatterns = { "/admin/home" })
public class AdminHomeController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 private ProductDao productDao = new ProductDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 List<ProductModel> latestProducts = productDao.getLatestProductsWithCategory(3);
	        req.setAttribute("latestProducts", latestProducts);
		
		req.getRequestDispatcher("/views/admin/adminHome.jsp").forward(req, resp);
	}
	
}
