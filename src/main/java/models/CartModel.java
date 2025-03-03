package models;

import java.io.Serializable;

public class CartModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int cartID;
	private int userID;
	private String categoryCode;
	private String productCode;
	private String size;
	private int quantity;
	private String productName;
	private double price;
	private String image;
	private String color;
	private int stockQuantity;
	
	private String priceFormatted;
	private String totalPriceFormatted;

	public String getPriceFormatted() {
	    return priceFormatted;
	}

	public void setPriceFormatted(String priceFormatted) {
	    this.priceFormatted = priceFormatted;
	}

	public String getTotalPriceFormatted() {
	    return totalPriceFormatted;
	}

	public void setTotalPriceFormatted(String totalPriceFormatted) {
	    this.totalPriceFormatted = totalPriceFormatted;
	}
	public int getStockQuantity() {
		return stockQuantity;
	}

	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	// Getters và Setters
	public String getProductName() {
	    return productName;
	}

	public void setProductName(String productName) {
	    this.productName = productName;
	}

	public double getPrice() {
	    return price;
	}

	public void setPrice(double price) {
	    this.price = price;
	}

	public String getImage() {
	    return image;
	}

	public void setImage(String image) {
	    this.image = image;
	}
	public CartModel(int cartID, int userID, String categoryCode, String productCode, String size, int quantity) {
		super();
		this.cartID = cartID;
		this.userID = userID;
		this.categoryCode = categoryCode;
		this.productCode = productCode;
		this.size = size;
		this.quantity = quantity;
	}
	public CartModel() {
		super();
	}
	public int getCartID() {
		return cartID;
	}
	public void setCartID(int cartID) {
		this.cartID = cartID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "CartModel [cartID=" + cartID + ", userID=" + userID + ", categoryCode=" + categoryCode
				+ ", productCode=" + productCode + ", size=" + size + ", quantity=" + quantity + "]";
	}
	
	

}
