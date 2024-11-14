package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.ProductModel;

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

	

	public static void main(String[] args) {
		 ProductDao dao = new ProductDao();
		    List<ProductModel> products = dao.getAllProduct();
		    for (ProductModel product : products) {
		        System.out.println(product);
		    }
	}
}
