package controllers.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import dao.Impl.CategoryDao;
import dao.Impl.CategoryDetailDao;
import dao.Impl.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import models.CategoryModel;
import models.ProductModel;
import models.ProductSizeModel;
import models.UserModel;
import jakarta.servlet.annotation.MultipartConfig;



@WebServlet(urlPatterns = { "/admin/manageCategory" })
@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
	    maxFileSize = 1024 * 1024 * 10,      // 10MB
	    maxRequestSize = 1024 * 1024 * 50    // 50MB
	)
public class AdminManageCategoryController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CategoryDetailDao categoryDetailDao = new CategoryDetailDao();
	private ProductDao productDao = new ProductDao();
	private CategoryDao categoryDao = new CategoryDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String productCode = req.getParameter("productCode");
	        if (productCode == null || productCode.isEmpty()) {
	            resp.sendRedirect(req.getContextPath() + "admin/categories");
	            return;
	        }
	        ProductModel product = categoryDetailDao.showProductDetail(productCode);
	        List<CategoryModel> categories = categoryDao.getAllCategory();
	        if (product == null) {
	            resp.sendRedirect(req.getContextPath() + "/404");
	            return;
	        }
	        req.setAttribute("product", product);
	        req.setAttribute("categories", categories);
	        
	        String uploadDir = "D:/Đồ án Web/Picture/";
	        List<String> availableImages = getImagesFromFolder(uploadDir);
	        req.setAttribute("availableImages", availableImages);

		
		req.getRequestDispatcher("/views/admin/adminManageCategory.jsp").forward(req, resp);
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
	        	 String action = req.getParameter("action");
	             if ("delete".equals(action)) {
	                 String productCode = req.getParameter("productCode");
	                 if (productCode != null && !productCode.isEmpty()) {
	                     boolean isDeleted = productDao.deleteProductByCode(productCode);
	                     if (isDeleted) {
	                         req.setAttribute("success", "Xóa sản phẩm thành công.");
	                         resp.sendRedirect(req.getContextPath() + "/admin/categories");
	                         return;
	                     } else {
	                         req.setAttribute("error", "Xóa sản phẩm thất bại.");
	                     }
	                 } else {
	                     req.setAttribute("error", "Mã sản phẩm không hợp lệ.");
	                 }
	                 req.getRequestDispatcher("/views/admin/adminManageCategory.jsp").forward(req, resp);
	                 return;
	             }
	            String productCode = req.getParameter("productCode");
	            String productName = req.getParameter("productName");
	            String categoryCode = req.getParameter("categoryCode");
	            String color = req.getParameter("color");
	            String description = req.getParameter("description");
	            double price = Double.parseDouble(req.getParameter("price"));
	            String image = req.getParameter("image");
	           
	            // Cập nhật thông tin sản phẩm
	            ProductModel updatedProduct = new ProductModel();
	            updatedProduct.setProductCode(productCode);
	            updatedProduct.setProductName(productName);
	            updatedProduct.setCategoryCode(categoryCode);
	            updatedProduct.setColor(color);
	            updatedProduct.setDescription(description);
	            updatedProduct.setPrice(price);
	            updatedProduct.setImage(image);
	            
	            boolean isProductUpdated = productDao.updateProduct(updatedProduct);
	            

	            if (isProductUpdated) {
	                List<ProductSizeModel> productSizes = new ArrayList<>();

	                if (categoryCode.startsWith("A") || categoryCode.startsWith("AK")) {
	                    handleSizes(req, productSizes, productCode, new String[] { "S", "M", "L", "XL" });
	                } else if (categoryCode.startsWith("Q")) {
	                    handleSizes(req, productSizes, productCode, new String[] { "29", "30", "31", "32", "33" });
	                }

	                boolean isSizeUpdated = productDao.updateProductSizes(productSizes);
	                if (isSizeUpdated) {
	                    resp.sendRedirect(req.getContextPath() + "/admin/categories");
	                } else {
	                    req.setAttribute("error", "Cập nhật số lượng size thất bại");
	                    req.getRequestDispatcher("/views/admin/adminManageCategory.jsp").forward(req, resp);
	                }
	            } else {
	                req.setAttribute("error", "Cập nhật sản phẩm thất bại");
	                req.getRequestDispatcher("/views/admin/adminManageCategory.jsp").forward(req, resp);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            req.setAttribute("error", "Có lỗi xảy ra, vui lòng thử lại.");
	            req.getRequestDispatcher("/views/admin/adminManageCategory.jsp").forward(req, resp);
	        }
	    }

	    private void handleSizes(HttpServletRequest req, List<ProductSizeModel> productSizes, String productCode, String[] sizes) {
	        for (String size : sizes) {
	            String quantityParam = req.getParameter("quantity_" + size);
	            if (quantityParam != null) {
	                int quantity = Integer.parseInt(quantityParam);
	                ProductSizeModel sizeModel = new ProductSizeModel();
	                sizeModel.setProductCode(productCode);
	                sizeModel.setSize(size);
	                sizeModel.setStockQuantity(quantity);
	                productSizes.add(sizeModel);
	            }
	        }
	    }	
	    private List<String> getImagesFromFolder(String folderPath) {
	        List<String> imageList = new ArrayList<>();
	        File folder = new File(folderPath);
	        if (folder.exists() && folder.isDirectory()) {
	            for (File file : folder.listFiles()) {
	                if (file.isFile() && (file.getName().endsWith(".jpg") || file.getName().endsWith(".png") || file.getName().endsWith(".jpeg"))) {
	                    imageList.add(file.getName()); // Chỉ lấy tên file
	                }
	            }
	        }
	        return imageList;
	    }

	
	
}
