package models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class ProductModel implements Serializable {

    private static final long serialVersionUID = 1L;

    private String productCode;
    private String productName;
    private String description;
    private double price;
    private String categoryCode;
    private String typeCategoryCode;
    private String brand;
    private String color;
    private String image;
    private String moreImage;
    private String status;
    private Date createDate;
    private Date updateDate;
    
    private String categoryName;
    private String typeCategoryName;
    
    public String getTypeCategoryName() {
		return typeCategoryName;
	}

	public void setTypeCategoryName(String typeCategoryName) {
		this.typeCategoryName = typeCategoryName;
	}

	private List<String> sizes;

    public List<String> getSizes() {
        return sizes;
    }

    public void setSizes(List<String> sizes) {
        this.sizes = sizes;
    }

    private List<ProductSizeModel> productSizes;
    
	public List<ProductSizeModel> getProductSizes() {
		return productSizes;
	}
	public void setProductSizes(List<ProductSizeModel> productSizes) {
		this.productSizes = productSizes;
	}
	
	public ProductModel(String productCode, String productName, String description, double price, String categoryCode,
			String typeCategoryCode, String brand, String color, String image, String moreImage, String status,
			Date createDate, Date updateDate, String categoryName) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.categoryCode = categoryCode;
		this.typeCategoryCode = typeCategoryCode;
		this.brand = brand;
		this.color = color;
		this.image = image;
		this.moreImage = moreImage;
		this.status = status;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.categoryName = categoryName;
	}
	public ProductModel() {
		super();
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getMoreImage() {
		return moreImage;
	}
	public void setMoreImage(String moreImage) {
		this.moreImage = moreImage;
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
	@Override
	public String toString() {
		return "ProductModel [productCode=" + productCode + ", productName=" + productName + ", description="
				+ description + ", price=" + price + ", categoryCode=" + categoryCode + ", typeCategoryCode="
				+ typeCategoryCode + ", brand=" + brand + ", color=" + color + ", image=" + image + ", moreImage="
				+ moreImage + ", status=" + status + ", createDate=" + createDate + ", updateDate=" + updateDate
				+ ", categoryName=" + categoryName + "]";
	}
	
	

	

   
}
