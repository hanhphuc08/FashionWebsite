package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.ProductModel;
import models.ProductSizeModel;

public class ProductDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	
	public List<ProductModel> getAllProduct()
	{
		List<ProductModel> list = new ArrayList<>();
		String sql = "select * from Products";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				 ProductModel product = new ProductModel();
		            product.setProductCode(rs.getString("productCode"));      
		            product.setProductName(rs.getString("productName"));     
		            product.setDescription(rs.getString("description"));     
		            product.setPrice(rs.getDouble("price"));                 
		            product.setCategoryCode(rs.getString("categoryCode"));       
		            product.setBrand(rs.getString("brand"));                  
		            product.setColor(rs.getString("color"));                 
		            product.setImage(rs.getString("image"));                  
		            product.setMoreImage(rs.getString("moreImages"));       
		            product.setStatus(rs.getString("status"));               
		            product.setCreateDate(rs.getDate("createDate"));         
		            product.setUpdateDate(rs.getDate("updateDate"));   
		            
		  
		            list.add(product);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<ProductModel> getAllProductsByPageAndOrder(int page, int pageSize, int orderby) {
	    List<ProductModel> list = new ArrayList<>();
	    String sql = "SELECT p.*, c.CategoryName FROM Products p inner join Categories c on p.CategoryCode = c.CategoryCode";

	    switch (orderby) {
	        case 1: 
	            sql += " ORDER BY createDate DESC";
	            break;
	        case 2: 
	            sql += " ORDER BY price DESC";
	            break;
	        case 3:
	            sql += " ORDER BY price ASC";
	            break;
	        default:
	            sql += " ORDER BY productCode";
	    }

	    sql += " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

	    try {
	        conn = new DBConnectSQL().getConnection();
	        ps = conn.prepareStatement(sql);
	        ps.setInt(1, (page - 1) * pageSize); 
	        ps.setInt(2, pageSize);
	        rs = ps.executeQuery();

	        while (rs.next()) {
	            ProductModel product = new ProductModel();
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
	            list.add(product);
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
	    return list;
	}
	public int getTotalPages(int pageSize) {
	    int total = 0;
	    String sql = "SELECT COUNT(*) FROM Products";
	    
	    try {
	        conn = new DBConnectSQL().getConnection();
	        ps = conn.prepareStatement(sql);
	        rs = ps.executeQuery();
	        
	        if (rs.next()) {
	            total = rs.getInt(1);
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
	    
	    return (int) Math.ceil((double) total / pageSize);
	}
	public List<ProductModel> getAllProductsByTypeCategoryCode(String typeCategoryCode,int page, int pageSize, int orderby) {
	    List<ProductModel> list = new ArrayList<>();
	    String sql = "SELECT p.*, c.CategoryName, ct.TypeCategoryCode "
	    		+ "FROM Products p inner join Categories c on p.CategoryCode = c.CategoryCode "
	    		+ "inner join CategoryType ct on ct.TypeCategoryCode = c.TypeCategoryCode "
	    		+ "where ct.TypeCategoryCode = ?";

	    switch (orderby) {
	        case 1: 
	            sql += " ORDER BY p.createDate DESC";
	            break;
	        case 2: 
	            sql += " ORDER BY p.price DESC";
	            break;
	        case 3:
	            sql += " ORDER BY p.price ASC";
	            break;
	        default:
	            sql += " ORDER BY p.productCode";
	    }

	    sql += " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

	    try {
	        conn = new DBConnectSQL().getConnection();
	        ps = conn.prepareStatement(sql);
	        ps.setString(1, typeCategoryCode);
	        ps.setInt(2, (page - 1) * pageSize); 
	        ps.setInt(3, pageSize);
	        rs = ps.executeQuery();

	        while (rs.next()) {
	            ProductModel product = new ProductModel();
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
	            list.add(product);
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
	    return list;
	}

	public int getTotalPagesByTypeCategoryCode(String typeCategoryCode, int pageSize) {
	    int total = 0;
	    String sql = "SELECT COUNT(*) AS total FROM Products p INNER JOIN Categories c ON p.CategoryCode = c.CategoryCode INNER JOIN CategoryType ct ON c.TypeCategoryCode = ct.TypeCategoryCode  WHERE ct.TypeCategoryCode = ?";

	    try {
	        conn = new DBConnectSQL().getConnection();
	        ps = conn.prepareStatement(sql);
	        ps.setString(1, typeCategoryCode);
	        rs = ps.executeQuery();

	        if (rs.next()) {
	            total = rs.getInt("total");
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

	    return (int) Math.ceil((double) total / pageSize);
	}
	
	public List<ProductModel> getAllProductsByCategoryCode(String categoryCode,int page, int pageSize, int orderby) {
	    List<ProductModel> list = new ArrayList<>();
	    String sql = "SELECT p.*, c.CategoryName,c.TypeCategoryCode FROM Products p INNER JOIN Categories c ON p.CategoryCode = c.CategoryCode WHERE c.CategoryCode = ?";

	    switch (orderby) {
	        case 1: 
	            sql += " ORDER BY p.createDate DESC";
	            break;
	        case 2: 
	            sql += " ORDER BY p.price DESC";
	            break;
	        case 3:
	            sql += " ORDER BY p.price ASC";
	            break;
	        default:
	            sql += " ORDER BY p.productCode";
	    }

	    sql += " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

	    try {
	        conn = new DBConnectSQL().getConnection();
	        ps = conn.prepareStatement(sql);
	        ps.setString(1, categoryCode);
	        ps.setInt(2, (page - 1) * pageSize); 
	        ps.setInt(3, pageSize);
	        rs = ps.executeQuery();

	        while (rs.next()) {
	            ProductModel product = new ProductModel();
	            product.setProductCode(rs.getString("productCode"));
	            product.setProductName(rs.getString("productName"));
	            product.setDescription(rs.getString("description"));
	            product.setPrice(rs.getDouble("price"));
	            product.setCategoryCode(rs.getString("categoryCode"));
	            product.setTypeCategoryCode(rs.getString("TypeCategoryCode"));
	            product.setCategoryName(rs.getString("categoryName"));
	            product.setBrand(rs.getString("brand"));
	            product.setColor(rs.getString("color"));
	            product.setImage(rs.getString("image"));
	            product.setMoreImage(rs.getString("moreImages"));
	            product.setStatus(rs.getString("status"));
	            product.setCreateDate(rs.getDate("createDate"));
	            product.setUpdateDate(rs.getDate("updateDate"));
	            list.add(product);
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
	    return list;
	}

	public int getTotalPagesByCategoryCode(String categoryCode, int pageSize) {
	    int total = 0;
	    String sql = "SELECT COUNT(*) AS total FROM Products p INNER JOIN Categories c ON p.CategoryCode = c.CategoryCode WHERE c.CategoryCode = ?";

	    try {
	        conn = new DBConnectSQL().getConnection();
	        ps = conn.prepareStatement(sql);
	        ps.setString(1, categoryCode);
	        rs = ps.executeQuery();

	        if (rs.next()) {
	            total = rs.getInt("total");
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

	    return (int) Math.ceil((double) total / pageSize);
	}
	public List<ProductModel> getAllProductBySearch(String searchQuery, String categoryCode, int page, int pageSize, int orderby)
	{
		List<ProductModel> list = new ArrayList<>();
		String sql = "select p.*, c.CategoryName, ct.TypeCategoryName from Products p inner join Categories c on p.CategoryCode = c.CategoryCode inner join CategoryType ct on c.TypeCategoryCode = ct.TypeCategoryCode where ct.TypeCategoryName like ? or c.CategoryName like ? or p.ProductName like ? ";

		if (categoryCode != null && !categoryCode.trim().isEmpty()) {
	        sql += " AND c.CategoryCode = ?";
	    }
		 switch (orderby) {
	        case 1:
	            sql += " ORDER BY p.createDate DESC";
	            break;
	        case 2:
	            sql += " ORDER BY p.price DESC";
	            break;
	        case 3:
	            sql += " ORDER BY p.price ASC";
	            break;
	        default:
	            sql += " ORDER BY p.productCode";
	    }
		sql += " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + searchQuery + "%");
			ps.setString(2, "%" + searchQuery + "%");
			ps.setString(3, "%" + searchQuery + "%");
			ps.setInt(4, (page - 1) * pageSize);
		    ps.setInt(5, pageSize);
		    rs = ps.executeQuery();
			while(rs.next())
			{
				 ProductModel product = new ProductModel();
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
		            list.add(product);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public int getTotalPagesBySearch(String searchQuery,String categoryCode, int pageSize) {
	    int total = 0;
	    String sql = "SELECT COUNT(*) AS total " +
	                 "FROM Products p " +
	                 "INNER JOIN Categories c ON p.CategoryCode = c.CategoryCode " +
	                 "INNER JOIN CategoryType ct ON c.TypeCategoryCode = ct.TypeCategoryCode " +
	                 "WHERE ct.TypeCategoryName LIKE ? OR c.CategoryName LIKE ? OR p.ProductName LIKE ?";
	    if (categoryCode != null && !categoryCode.trim().isEmpty()) {
	        sql += " AND c.CategoryCode = ?";
	    }

	    try {
	        conn = new DBConnectSQL().getConnection();
	        ps = conn.prepareStatement(sql);
	        ps.setString(1, "%" + searchQuery + "%");
	        ps.setString(2, "%" + searchQuery + "%");
	        ps.setString(3, "%" + searchQuery + "%");
	        rs = ps.executeQuery();

	        if (rs.next()) {
	            total = rs.getInt("total");
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

	    return (int) Math.ceil((double) total / pageSize);
	}
	public List<ProductModel> getLatestProductsWithCategory(int limit) {
	    String sql = "SELECT p.ProductCode, p.ProductName, p.Image, p.Description, p.Price, p.CreateDate, c.CategoryName, ct.TypeCategoryName " +
	                 "FROM Products p " +
	                 "INNER JOIN Categories c ON p.CategoryCode = c.CategoryCode " +
	                 "INNER JOIN CategoryType ct ON ct.TypeCategoryCode = c.TypeCategoryCode " +
	                 "ORDER BY p.CreateDate DESC " +
	                 "OFFSET 0 ROWS FETCH NEXT ? ROWS ONLY";

	    List<ProductModel> latestProducts = new ArrayList<>();
	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {
	        ps.setInt(1, limit);

	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	                ProductModel product = new ProductModel();
	                product.setProductCode(rs.getString("ProductCode"));
	                product.setProductName(rs.getString("ProductName"));
	                product.setImage(rs.getString("Image"));
	                product.setDescription(rs.getString("Description"));
	                product.setPrice(rs.getDouble("Price"));
	                product.setCreateDate(rs.getDate("CreateDate"));
	                product.setCategoryName(rs.getString("CategoryName"));
	                product.setTypeCategoryCode(rs.getString("TypeCategoryName"));
	                latestProducts.add(product);
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return latestProducts;
	}

	public List<ProductModel> getTop5BestSellingProducts() {
	    String sql = "SELECT TOP 5 " +
	                 "p.ProductCode, p.ProductName, p.Price, p.Color, " +
	                 "SUM(od.Quantity) AS TotalQuantity, " +
	                 "SUM(od.Quantity * p.Price) AS TotalAmount " +
	                 "FROM OrderDetails od " +
	                 "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
	                 "GROUP BY p.ProductCode, p.ProductName, p.Price, p.Color " +
	                 "ORDER BY TotalQuantity DESC";

	    List<ProductModel> topProducts = new ArrayList<>();

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        while (rs.next()) {
	            ProductModel product = new ProductModel();
	            product.setProductCode(rs.getString("ProductCode"));
	            product.setProductName(rs.getString("ProductName"));
	            product.setPrice(rs.getDouble("Price"));
	            product.setColor(rs.getString("Color"));
	            product.setTotalQuantity(rs.getInt("TotalQuantity"));
	            product.setTotalAmount(rs.getDouble("TotalAmount"));
	            topProducts.add(product);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return topProducts;
	}

	public boolean updateProduct(ProductModel product) {
	    String sql = "UPDATE Products SET ProductName = ?, Price = ?, CategoryCode = ?, Color = ?, Description = ?, Image = ?, UpdateDate = GETDATE() WHERE ProductCode = ?";
	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, product.getProductName());
	        ps.setDouble(2, product.getPrice());
	        ps.setString(3, product.getCategoryCode());
	        ps.setString(4, product.getColor());
	        ps.setString(5, product.getDescription());
	        ps.setString(6, product.getImage());
	        ps.setString(7, product.getProductCode());

	        int result = ps.executeUpdate();
	        return result > 0;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}

	
	public boolean updateProductSizes(List<ProductSizeModel> productSizes) {
	    String sql = "MERGE INTO ProductSizes AS target " +
	                 "USING (SELECT ? AS ProductCode, ? AS Size, ? AS StockQuantity) AS source " +
	                 "ON target.ProductCode = source.ProductCode AND target.Size = source.Size " +
	                 "WHEN MATCHED THEN UPDATE SET StockQuantity = source.StockQuantity " +
	                 "WHEN NOT MATCHED THEN INSERT (ProductCode, Size, StockQuantity) VALUES (source.ProductCode, source.Size, source.StockQuantity);";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        for (ProductSizeModel sizeModel : productSizes) {
	            ps.setString(1, sizeModel.getProductCode());
	            ps.setString(2, sizeModel.getSize());
	            ps.setInt(3, sizeModel.getStockQuantity());
	            ps.addBatch();
	        }

	        int[] results = ps.executeBatch();
	        return results.length > 0;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	
	public boolean updateProductImage(String productCode, String imagePath) {
	    String sql = "UPDATE Products SET Image = ?, UpdateDate = GETDATE() WHERE ProductCode = ?";
	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, imagePath);
	        ps.setString(2, productCode);

	        int rowsUpdated = ps.executeUpdate();
	        return rowsUpdated > 0;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	
	public boolean insertProductWithSizes(ProductModel product, List<ProductSizeModel> sizes) {
	    String productSql = "INSERT INTO Products (ProductCode, ProductName, Description, Price, CategoryCode, Brand, Color, Image, MoreImages, Status, CreateDate, UpdateDate) " +
	                        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE())";
	    String sizeSql = "INSERT INTO ProductSizes (ProductCode, Size, StockQuantity, Status, CreateDate, UpdateDate) " +
	                     "VALUES (?, ?, ?, ?, GETDATE(), GETDATE())";

	    Connection conn = null;
	    PreparedStatement productStmt = null;
	    PreparedStatement sizeStmt = null;

	    try {
	        // Mở kết nối và bắt đầu giao dịch
	        conn = new DBConnectSQL().getConnection();
	        conn.setAutoCommit(false); // Tắt chế độ auto-commit

	        // Chèn sản phẩm
	        productStmt = conn.prepareStatement(productSql);
	        productStmt.setString(1, product.getProductCode());
	        productStmt.setString(2, product.getProductName());
	        productStmt.setString(3, product.getDescription());
	        productStmt.setDouble(4, product.getPrice());
	        productStmt.setString(5, product.getCategoryCode());
	        productStmt.setString(6, product.getBrand());
	        productStmt.setString(7, product.getColor());
	        productStmt.setString(8, product.getImage());
	        productStmt.setString(9, product.getMoreImage());
	        productStmt.setString(10, product.getStatus());
	        productStmt.executeUpdate();

	        // Chèn kích thước sản phẩm
	        sizeStmt = conn.prepareStatement(sizeSql);
	        for (ProductSizeModel size : sizes) {
	            sizeStmt.setString(1, size.getProductCode());
	            sizeStmt.setString(2, size.getSize());
	            sizeStmt.setInt(3, size.getStockQuantity());
	            sizeStmt.setString(4, size.getStatus());
	            sizeStmt.addBatch();
	        }
	        sizeStmt.executeBatch();

	        // Commit giao dịch
	        conn.commit();
	        return true;
	    } catch (Exception e) {
	        e.printStackTrace();
	        try {
	            if (conn != null) {
	                conn.rollback(); // Rollback nếu có lỗi xảy ra
	            }
	        } catch (Exception rollbackEx) {
	            rollbackEx.printStackTrace();
	        }
	        return false;
	    } finally {
	        // Đóng tài nguyên
	        try {
	            if (sizeStmt != null) sizeStmt.close();
	            if (productStmt != null) productStmt.close();
	            if (conn != null) conn.setAutoCommit(true); // Bật lại auto-commit
	            if (conn != null) conn.close();
	        } catch (Exception closeEx) {
	            closeEx.printStackTrace();
	        }
	    }
	}
	
	public boolean isProductCodeExists(String productCode) {
	    String sql = "SELECT COUNT(*) FROM Products WHERE ProductCode = ?";
	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {
	        ps.setString(1, productCode);
	        try (ResultSet rs = ps.executeQuery()) {
	            if (rs.next()) {
	                return rs.getInt(1) > 0; // Trả về true nếu tồn tại
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	
	public boolean deleteProductByCode(String productCode) {
	    String deleteProductSql = "DELETE FROM Products WHERE ProductCode = ?";
	    String deleteProductSizeSql = "DELETE FROM ProductSizes WHERE ProductCode = ?";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement deleteSizeStmt = conn.prepareStatement(deleteProductSizeSql);
	         PreparedStatement deleteProductStmt = conn.prepareStatement(deleteProductSql)) {


	        deleteSizeStmt.setString(1, productCode);
	        deleteSizeStmt.executeUpdate();


	        deleteProductStmt.setString(1, productCode);
	        int rowsAffected = deleteProductStmt.executeUpdate();

	        return rowsAffected > 0;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}


	public static void main(String[] args) {
		 ProductDao dao = new ProductDao();
		    List<ProductModel> products = dao.getLatestProductsWithCategory(8);
		    for (ProductModel product : products) {
		        System.out.println(product);
		    }
	}
}
