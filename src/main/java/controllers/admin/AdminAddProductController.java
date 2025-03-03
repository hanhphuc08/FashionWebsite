package controllers.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.ProductModel;
import models.ProductSizeModel;
import models.UserModel;


@WebServlet(urlPatterns = { "/admin/addProducts" })
public class AdminAddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private ProductDao productDao;
	 @Override
	    public void init() throws ServletException {
	        productDao = new ProductDao();
	    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/admin/adminAddProduct.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    HttpSession session = req.getSession(false);
	    UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	    if (user == null) {
	        resp.sendRedirect(req.getContextPath() + "/login");
	        return;
	    }

	    try {
	        // Lấy dữ liệu từ form
	    	
	        String productCode = req.getParameter("productCode");
	        String productName = req.getParameter("productName");
	        String categoryCode = req.getParameter("categoryCode");
	        String color = req.getParameter("color");
	        String description = req.getParameter("description");
	        String image = req.getParameter("image");
	        double price = Double.parseDouble(req.getParameter("price"));

	        if (price <= 0) {
	            throw new IllegalArgumentException("Giá sản phẩm phải lớn hơn 0.");
	        }
	        if (categoryCode == null || categoryCode.isEmpty()) {
	            throw new IllegalArgumentException("Danh mục không được để trống.");
	        }

	        
	        if (productDao.isProductCodeExists(productCode)) {
	            req.setAttribute("error", "Mã sản phẩm đã tồn tại. Vui lòng nhập mã khác.");
	            req.getRequestDispatcher("/views/admin/adminAddProduct.jsp").forward(req, resp);
	            return;
	        }

	        // Kiểm tra số lượng kích thước
	        List<ProductSizeModel> productSizes = new ArrayList<>();
	        handleSizes(req, productSizes, productCode, new String[] { "S", "M", "L", "XL" });

	        if (productSizes.isEmpty()) {
	            throw new IllegalArgumentException("Phải có ít nhất một kích thước với số lượng lớn hơn 0.");
	        }

	        // Tạo đối tượng ProductModel
	        ProductModel product = new ProductModel();
	        product.setProductCode(productCode);
	        product.setProductName(productName);
	        product.setCategoryCode(categoryCode);
	        product.setColor(color);
	        product.setDescription(description);
	        product.setPrice(price);
	        product.setImage(image);
	        product.setStatus("in stock");

	        // Chèn sản phẩm và kích thước
	        boolean isInserted = productDao.insertProductWithSizes(product, productSizes);

	        if (isInserted) {
	            resp.sendRedirect(req.getContextPath() + "/admin/categories");
	        } else {
	            req.setAttribute("error", "Không thể thêm sản phẩm.");
	            req.getRequestDispatcher("/views/admin/adminAddProduct.jsp").forward(req, resp);
	        }

	    } catch (IllegalArgumentException e) {
	        req.setAttribute("error", e.getMessage());
	        req.getRequestDispatcher("/views/admin/adminAddProduct.jsp").forward(req, resp);
	    } catch (Exception e) {
	        e.printStackTrace();
	        req.setAttribute("error", "Đã xảy ra lỗi: " + e.getMessage());
	        req.getRequestDispatcher("/views/admin/adminAddProduct.jsp").forward(req, resp);
	    }
	}

	private void handleSizes(HttpServletRequest req, List<ProductSizeModel> productSizes, String productCode, String[] sizes) {
	    for (String size : sizes) {
	        String quantityParam = req.getParameter("quantity_" + size);
	        if (quantityParam != null && !quantityParam.isEmpty()) {
	            int stockQuantity = Integer.parseInt(quantityParam);
	            ProductSizeModel sizeModel = new ProductSizeModel(productCode, size, stockQuantity, "in stock");
	            productSizes.add(sizeModel);
	        }
	    }
	}
}


