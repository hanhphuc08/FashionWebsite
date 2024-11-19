package controllers;

import java.io.IOException;
import java.util.List;

import dao.Impl.CategoryDetailDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.ProductModel;
import models.ProductSizeModel;

@WebServlet(urlPatterns= {"/categoryDetail"})
public class CategoryDetailController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 	req.setCharacterEncoding("UTF-8");
		    resp.setCharacterEncoding("UTF-8");
		    HttpSession session = req.getSession();
			/*
			 * Object user = session.getAttribute("currentUser");
			 * 
			 * if(user == null) { String currentUrl = req.getRequestURL() + "?" +
			 * req.getQueryString(); String userUrl = currentUrl.replace("/categoryDetail",
			 * "/user/categoryDetail"); session.setAttribute("redirectAfterLogin", userUrl);
			 * resp.sendRedirect(req.getContextPath() + "/login"); return; }
			 */

		    String productCode = req.getParameter("productCode");

		    CategoryDetailDao ctDao = new CategoryDetailDao();
		    ProductModel product = ctDao.showProductDetail(productCode);
		    
		    List<ProductModel> similarProduct = ctDao.getSimilarProduct(product.getCategoryCode(), productCode, 6);
		
		    
		  
		    
//		    List<ProductSizeModel> productSize = ctDao.getProductSizesByProductCode(productCode);

		    req.setAttribute("product", product);
//		    req.setAttribute("productSize", productSize);
		    req.setAttribute("similarProduct", similarProduct);
		    req.getRequestDispatcher("/views/categoryDetail.jsp").forward(req, resp);
	
}
}
