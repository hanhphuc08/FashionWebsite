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


@WebServlet(urlPatterns = {"/categories/detail", "/user/categories/detail"})
public class CategoryDetailController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		req.getRequestDispatcher("/views/user/categoryDetail.jsp").forward(req,  resp);

	}
}