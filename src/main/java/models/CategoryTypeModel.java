package models;

import java.io.Serializable;
import java.util.Date;

public class CategoryTypeModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String typeCategoryCode;
	private String typeCategoryName;
	private Date createDate;
	private Date updateDate;
	public CategoryTypeModel(String typeCategoryCode, String typeCategoryName, Date createDate, Date updateDate) {
		super();
		this.typeCategoryCode = typeCategoryCode;
		this.typeCategoryName = typeCategoryName;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public CategoryTypeModel() {
		super();
	}
	
	public CategoryTypeModel(String typeCategoryCode, String typeCategoryName) {
		super();
		this.typeCategoryCode = typeCategoryCode;
		this.typeCategoryName = typeCategoryName;
	}
	public String getTypeCategoryCode() {
		return typeCategoryCode;
	}
	public void setTypeCategoryCode(String typeCategoryCode) {
		this.typeCategoryCode = typeCategoryCode;
	}
	public String getTypeCategoryName() {
		return typeCategoryName;
	}
	public void setTypeCategoryName(String typeCategoryName) {
		this.typeCategoryName = typeCategoryName;
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
		return "CategoryTypeModel [typeCategoryCode=" + typeCategoryCode + ", typeCategoryName=" + typeCategoryName
				+ ", createDate=" + createDate + ", updateDate=" + updateDate + "]";
	}
	
	

	
}
