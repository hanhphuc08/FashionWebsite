package controllers;
import java.io.IOException;
import java.util.List;

import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.ProductModel;

@WebServlet(urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	 private ProductDao productDao = new ProductDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 List<ProductModel> latestProducts = productDao.getLatestProductsWithCategory(3);
	        req.setAttribute("latestProducts", latestProducts);
	        
	        List<ProductModel> get8products = productDao.getLatestProductsWithCategory(8);
	        req.setAttribute("get8", get8products);
	        req.getRequestDispatcher("/views/home.jsp").forward(req, resp);
	}
}
