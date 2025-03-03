package controllers.user;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.ProductModel;

@WebServlet(urlPatterns = {"/user/home"})
public class UserHomeController extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	  private ProductDao productDao = new ProductDao();
	  private String formatCurrency(double amount) {
	        DecimalFormat formatter = new DecimalFormat("###,###,###");
	        return formatter.format(amount) + " VND";
	    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		   List<ProductModel> latestProducts = productDao.getLatestProductsWithCategory(3);
	        req.setAttribute("latestProducts", latestProducts);	
	        
	        List<ProductModel> get8products = productDao.getLatestProductsWithCategory(8);
	        for (ProductModel product : get8products) {
	            product.setPriceFormatted(formatCurrency(product.getPrice())); 
	        }
	        req.setAttribute("get8", get8products);
		req.getRequestDispatcher("/views/user/userHome.jsp").forward(req, resp);
	}
}
