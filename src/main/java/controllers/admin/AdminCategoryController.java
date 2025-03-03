package controllers.admin;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import dao.Impl.CategoryDao;
import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.CategoryModel;
import models.CategoryTypeModel;
import models.ProductModel;

@WebServlet(urlPatterns = { "/admin/categories" })
public class AdminCategoryController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String formatCurrency(double amount) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(amount) + " VND";
    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String typeCategoryCode = req.getParameter("typeCategoryCode");
		String pageParam = req.getParameter("page");
	    String orderbyParam = req.getParameter("orderby");
	    String categoryCode = req.getParameter("categoryCode");
	    String searchQuery = req.getParameter("searchQuery");
	    
	    int page = 1; 
	    try {
	        if (pageParam != null) {
	            page = Integer.parseInt(pageParam.trim());
	        }
	    } catch (NumberFormatException e) {
	        page = 1; 
	    }
	    int pageSize = 12; 
	    int orderby = (orderbyParam != null && !orderbyParam.trim().isEmpty()) ? Integer.parseInt(orderbyParam.trim()) : 0;
		

		CategoryDao daoC = new CategoryDao();
		List<CategoryModel> listC = daoC.getAllCategory();
		List<CategoryTypeModel> listType = daoC.getAllCategoryType();
		req.setAttribute("listC", listC);
		req.setAttribute("listType", listType);
		

		ProductDao dao = new ProductDao();
	    List<ProductModel> products;
	    int totalPages;
		 if(searchQuery != null && !searchQuery.trim().isEmpty())
		 {
			 totalPages = dao.getTotalPagesBySearch(searchQuery,categoryCode, pageSize);
		     products = dao.getAllProductBySearch(searchQuery,categoryCode, page, pageSize, orderby);
		 }
		 else if(typeCategoryCode != null && !typeCategoryCode.trim().isEmpty())
		 {
			 totalPages = dao.getTotalPagesByTypeCategoryCode(typeCategoryCode, pageSize);
		     products = dao.getAllProductsByTypeCategoryCode(typeCategoryCode, page, pageSize, orderby);
		 }
		 else if(categoryCode != null && !categoryCode.trim().isEmpty())
		 {
			 totalPages = dao.getTotalPagesByCategoryCode(categoryCode, pageSize);
			 products = dao.getAllProductsByCategoryCode(categoryCode, page, pageSize, orderby);
		 }
		 else 
		 {
			 totalPages = dao.getTotalPages(pageSize);
		     products = dao.getAllProductsByPageAndOrder(page, pageSize, orderby);
		 }
		 for (ProductModel product : products) {
		        product.setPriceFormatted(formatCurrency(product.getPrice()));
		    }
		 req.setAttribute("listP", products);
		 req.setAttribute("currentPage", page);
		 req.setAttribute("totalPages", totalPages); 
		 req.setAttribute("orderby", orderby); 
		 req.setAttribute("typeCategoryCode", typeCategoryCode);
		 req.setAttribute("categoryCode", categoryCode);
		 req.setAttribute("searchQuery", searchQuery);
		 req.getRequestDispatcher("/views/admin/adminCategory.jsp").forward(req, resp);
	}
	
}
