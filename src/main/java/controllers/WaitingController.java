package controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.UserModel;

@WebServlet(urlPatterns = { "/waiting" })
public class WaitingController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
	    if (session != null && session.getAttribute("account") != null) {
	        UserModel user = (UserModel) session.getAttribute("account");
	        req.setAttribute("username", user.getFullname()); 

	        if ("Admin".equals(user.getRoleID())) {
	            resp.sendRedirect(req.getContextPath() + "/admin/home"); 
	        } else if ("Customer".equals(user.getRoleID())) {
	            resp.sendRedirect(req.getContextPath() + "/home"); 
	        } else {
	            resp.sendRedirect(req.getContextPath() + "/login");
	        }
	    } else {
	        resp.sendRedirect(req.getContextPath() + "/login");
	    }
	}
}
