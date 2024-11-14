package models;

import java.io.Serializable;
import java.util.Date;

public class CategoryModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	 private String categoryCode;
	 private String categoryName;
	 private String typeCategoryCode;
	 private Date createDate;
	 private Date updateDate;
	public CategoryModel(String categoryCode, String categoryName, String typeCategoryCode, Date createDate,
			Date updateDate) {
		super();
		this.categoryCode = categoryCode;
		this.categoryName = categoryName;
		this.typeCategoryCode = typeCategoryCode;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	
	public CategoryModel() {
		super();
	}

	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getTypeCategoryCode() {
		return typeCategoryCode;
	}
	public void setTypeCategoryCode(String typeCategoryCode) {
		this.typeCategoryCode = typeCategoryCode;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "CategoryModel [categoryCode=" + categoryCode + ", categoryName=" + categoryName + ", typeCategoryCode="
				+ typeCategoryCode + ", createDate=" + createDate + ", updateDate=" + updateDate + "]";
	}
	
	 
}
