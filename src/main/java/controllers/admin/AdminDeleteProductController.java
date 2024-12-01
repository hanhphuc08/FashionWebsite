package controllers.admin;

import java.io.IOException;

import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/admin/deleteProduct"})

public class AdminDeleteProductController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ProductDao productDao;

	@Override
    public void init() throws ServletException {
        productDao = new ProductDao();
    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("AdminDeleteProductController doGet called");
		String productCode = req.getParameter("productCode");
		 System.out.println("Product code: " + productCode);
		 if (productCode == null || productCode.isEmpty()) {
	            req.getSession().setAttribute("error", "Mã sản phẩm không hợp lệ.");
	            resp.sendRedirect(req.getContextPath() + "/admin/categories");
	            return;
	        }

	        boolean isDeleted = productDao.deleteProductByCode(productCode);

	        if (isDeleted) {
	            req.getSession().setAttribute("success", "Sản phẩm đã được xóa thành công.");
	        } else {
	            req.getSession().setAttribute("error", "Không thể xóa sản phẩm. Vui lòng thử lại.");
	        }

	        resp.sendRedirect(req.getContextPath() + "/admin/categories");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String productCode = req.getParameter("productCode");

	        if (productCode == null || productCode.isEmpty()) {
	            req.getSession().setAttribute("error", "Mã sản phẩm không hợp lệ.");
	            resp.sendRedirect(req.getContextPath() + "/admin/manageCategory?productCode=" + productCode);
	            return;
	        }

	        boolean isDeleted = productDao.deleteProductByCode(productCode);

	        if (isDeleted) {
	            req.getSession().setAttribute("success", "Sản phẩm đã được xóa thành công.");
	            resp.sendRedirect(req.getContextPath() + "/admin/categories");
	        } else {
	            req.getSession().setAttribute("error", "Không thể xóa sản phẩm. Vui lòng thử lại.");
	            resp.sendRedirect(req.getContextPath() + "/admin/manageCategory?productCode=" + productCode);
	        }
	}
}
