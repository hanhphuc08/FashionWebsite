package controllers;

import java.io.IOException;
import java.util.List;

import dao.Impl.CategoryDao;
import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.CategoryModel;
import models.CategoryTypeModel;
import models.ProductModel;


@MultipartConfig(fileSizeThreshold = 1024 * 1024, 
			maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5 )

//@WebServlet(urlPatterns = {"/admin/categories", "/admin/category/add",
//		 "/admin/category/insert", "/admin/category/edit", "/admin/category/update",
//		 "/admin/category/delete", "/admin/category/search"})
//
@WebServlet(urlPatterns = {"/categories"})
public class CategoryController extends HttpServlet{

	private static final long serialVersionUID = 1L;
//	public ICategoryService cateService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String pageParam = req.getParameter("page");
	    String orderbyParam = req.getParameter("orderby");
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
		 List<ProductModel> products = dao.getAllProductsByPageAndOrder(page, pageSize, orderby);
		 int totalPages = dao.getTotalPages(pageSize);
	    
		 req.setAttribute("listP", products);
		 req.setAttribute("currentPage", page);
		 req.setAttribute("totalPages", totalPages); 
		 req.setAttribute("orderby", orderby); 

		 req.getRequestDispatcher("/views/category.jsp").forward(req, resp);
	    

	}
}