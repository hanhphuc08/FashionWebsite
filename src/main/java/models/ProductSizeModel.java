package models;

import java.io.Serializable;
import java.util.Date;

public class ProductSizeModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 private int productSizeId;
	 private String productCode;
	 private String size;
	 private int stockQuantity;
	 private String status;
	 private Date createDate;
	 private Date updateDate;
	public ProductSizeModel(int productSizeId, String productCode, String size, int stockQuantity, String status,
			Date createDate, Date updateDate) {
		super();
		this.productSizeId = productSizeId;
		this.productCode = productCode;
		this.size = size;
		this.stockQuantity = stockQuantity;
		this.status = status;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public ProductSizeModel(String productCode, String size, int stockQuantity, String status, Date createDate,
			Date updateDate) {
		super();
		this.productCode = productCode;
		this.size = size;
		this.stockQuantity = stockQuantity;
		this.status = status;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public ProductSizeModel() {
		super();
	}
	public int getProductSizeId() {
		return productSizeId;
	}
	public void setProductSizeId(int productSizeId) {
		this.productSizeId = productSizeId;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getStockQuantity() {
		return stockQuantity;
	}
	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
		return "ProductSizeModel [productSizeId=" + productSizeId + ", productCode=" + productCode + ", size=" + size
				+ ", stockQuantity=" + stockQuantity + ", status=" + status + ", createDate=" + createDate
				+ ", updateDate=" + updateDate + "]";
	}
	 
	 

}
