package controllers;

import java.io.IOException;
import java.util.List;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


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
//		String url = req.getRequestURI();
//		req.setCharacterEncoding("UTF-8");
//		resp.setCharacterEncoding("UTF-8");
//		
//		if(url.contains("categories")) {
//			
//			List<CategoryModel> list = cateService.findAll();
//			req.setAttribute("listcate", list);
//			req.getRequestDispatcher("/views/admin/categoryList.jsp").forward(req,  resp);	
//		} else if(url.contains("add")){
//			req.getRequestDispatcher("/views/admin/categoryAdd.jsp").forward(req,  resp);	
//		}else if(url.contains("edit")){
//			int id = Integer.parseInt(req.getParameter("id"));
//			
//			CategoryModel category = cateService.findById(id);
//			
//			req.setAttribute("cate", category);
//			req.getRequestDispatcher("/views/admin/categoryEdit.jsp").forward(req,  resp);	
//		} else if(url.contains("delete")) {
//			String id = req.getParameter("id");
//			cateService.delete(Integer.parseInt(id));
//			resp.sendRedirect(req.getContextPath() + "/admin/categories");
//		}

		req.getRequestDispatcher("/views/category.jsp").forward(req,  resp);

	}
}