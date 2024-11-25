package services.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import dao.Impl.CategoryDetailDao;
import models.ProductModel;
import models.ProductSizeModel;

public class UserCategoryDetalDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	
	public ProductModel showProductDetail(String productCode)
	{
		 ProductModel product = null;
		String sql = "select p.*, ps.Size, ps.StockQuantity, ps.Status, c.CategoryName from Products p inner join ProductSizes ps on p.ProductCode = ps.ProductCode inner join Categories c on p.CategoryCode = c.CategoryCode where p.ProductCode = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, productCode);
			rs = ps.executeQuery();
			while(rs.next())
			{
				if(product == null)
				{
					product = new ProductModel();
	                product.setProductCode(rs.getString("productCode"));
	                product.setProductName(rs.getString("productName"));
	                product.setDescription(rs.getString("description"));
	                product.setPrice(rs.getDouble("price"));
	                product.setCategoryCode(rs.getString("categoryCode"));
	                product.setCategoryName(rs.getString("categoryName"));
	                product.setBrand(rs.getString("brand"));
	                product.setColor(rs.getString("color"));
	                product.setImage(rs.getString("image"));
	                product.setMoreImage(rs.getString("moreImages"));
	                product.setStatus(rs.getString("status"));
	                product.setCreateDate(rs.getDate("createDate"));
	                product.setUpdateDate(rs.getDate("updateDate"));
	                product.setProductSizes(new ArrayList<>());
				}
				 ProductSizeModel size = new ProductSizeModel();
		         size.setSize(rs.getString("size"));
		         size.setStockQuantity(rs.getInt("stockQuantity"));
		         size.setStatus(rs.getString("status"));
		         product.getProductSizes().add(size);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return product;
	}
	
	public List<ProductModel> getSimilarProduct(String categoryCode, String currentProductCode, int limit)
	{
		List<ProductModel> similarProducts = new ArrayList<>();
		 String sql = "SELECT TOP (?) p.ProductCode, p.ProductName, p.Price, p.Image, c.CategoryName " +
                 "FROM Products p inner join Categories c on p.CategoryCode = c.CategoryCode " +
                 "WHERE p.CategoryCode = ? AND p.ProductCode != ?";
		 try {
		        conn = new DBConnectSQL().getConnection();
		        ps = conn.prepareStatement(sql);
		        ps.setInt(1, limit);
		        ps.setString(2, categoryCode);
		        ps.setString(3, currentProductCode);
		        rs = ps.executeQuery();

		        while (rs.next()) {
		            ProductModel product = new ProductModel();
		            product.setProductCode(rs.getString("ProductCode"));
		            product.setProductName(rs.getString("ProductName"));
		            product.setPrice(rs.getDouble("Price"));
		            product.setImage(rs.getString("Image"));
		            product.setCategoryName(rs.getString("categoryName"));
		            similarProducts.add(product);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        try {
		            if (rs != null) rs.close();
		            if (ps != null) ps.close();
		            if (conn != null) conn.close();
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
		
		return similarProducts;
	}
	 public static void main(String[] args) {
	        CategoryDetailDao dao = new CategoryDetailDao();

	        // Nhập ProductCode để kiểm tra
	        String testProductCode = "APL1"; // Thay bằng mã sản phẩm thực tế trong cơ sở dữ liệu
	        
	        // Gọi phương thức showProductDetail
	        ProductModel product = dao.showProductDetail(testProductCode);

	        // Kiểm tra và hiển thị kết quả
	        if (product != null) {
	            System.out.println("Product Details:");
	            System.out.println("Product Code: " + product.getProductCode());
	            System.out.println("Product Name: " + product.getProductName());
	            System.out.println("Description: " + product.getDescription());
	            System.out.println("Price: " + product.getPrice());
	            System.out.println("Category Code: " + product.getCategoryCode());
	            System.out.println("Category Name: " + product.getCategoryName());
	            System.out.println("Brand: " + product.getBrand());
	            System.out.println("Color: " + product.getColor());
	            System.out.println("Image: " + product.getImage());
	            System.out.println("More Images: " + product.getMoreImage());
	            System.out.println("Status: " + product.getStatus());
	            System.out.println("Create Date: " + product.getCreateDate());
	            System.out.println("Update Date: " + product.getUpdateDate());

	            System.out.println("\nProduct Sizes:");
	            if (product.getProductSizes() != null && !product.getProductSizes().isEmpty()) {
	                for (ProductSizeModel size : product.getProductSizes()) {
	                    System.out.println("- Size: " + size.getSize() +
	                                       ", Stock Quantity: " + size.getStockQuantity() +
	                                       ", Status: " + size.getStatus());
	                }
	            } else {
	                System.out.println("No sizes available for this product.");
	            }
	        } else {
	            System.out.println("Product not found for ProductCode: " + testProductCode);
	        }
	    }
}
