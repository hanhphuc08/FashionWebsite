package services.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import dao.Impl.CategoryDao;
import models.CategoryModel;
import models.CategoryTypeModel;

public class UserCategoryDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	
	public List<CategoryTypeModel> getAllCategoryType()
	{
		List<CategoryTypeModel> list = new ArrayList<>();
		String sql = "select * from CategoryType";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				list.add(new CategoryTypeModel(rs.getString("typeCategoryCode"),
						rs.getString("typeCategoryName"),
						rs.getDate("createDate"),
						rs.getDate("updateDate")));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public List<CategoryModel> getAllCategory()
	{
		List<CategoryModel> list = new ArrayList<>();
		String sql = "select Categories.TypeCategoryCode, CategoryType.TypeCategoryName, Categories.CategoryCode, Categories.CategoryName from Categories inner join CategoryType on Categories.TypeCategoryCode = CategoryType.TypeCategoryCode";
		
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next())
			{
				 CategoryModel category = new CategoryModel();
				 
				 category.setTypeCategoryCode(rs.getString("typeCategoryCode"));
				 category.setCategoryCode(rs.getString("categoryCode"));
				 category.setCategoryName(rs.getString("categoryName"));
				 list.add(category);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static void main(String[] args) {
		CategoryDao dao = new CategoryDao();
	    
	    System.out.println("Danh sách Category:");
	    List<CategoryModel> categoryList = dao.getAllCategory();
	    for (CategoryModel category : categoryList) {
	        System.out.println("Category Code: " + category.getCategoryCode() + 
	                           ", Category Name: " + category.getCategoryName() +
	                           "Category Type: " + category.getTypeCategoryCode());
	    }

	    System.out.println("\nDanh sách CategoryType:");
	    List<CategoryTypeModel> categoryTypeList = dao.getAllCategoryType();
	    for (CategoryTypeModel categoryType : categoryTypeList) {
	        System.out.println("TypeCategory Code: " + categoryType.getTypeCategoryCode() + 
	                           ", TypeCategory Name: " + categoryType.getTypeCategoryName() +
	                           ", Create Date: " + categoryType.getCreateDate() +
	                           ", Update Date: " + categoryType.getUpdateDate());
	    }
	    
	}
}
