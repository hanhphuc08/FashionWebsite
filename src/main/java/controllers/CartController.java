package controllers;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@MultipartConfig(fileSizeThreshold = 1024 * 1024, 
			maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5 )

@WebServlet(urlPatterns = {"/cart"})
public class CartController extends HttpServlet{

	private static final long serialVersionUID = 1L;
//	public ICategoryService cateService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		req.getRequestDispatcher("/views/cart.jsp").forward(req,  resp);

	}
}