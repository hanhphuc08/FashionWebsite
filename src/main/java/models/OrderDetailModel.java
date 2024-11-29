package models;

public class OrderDetailModel {
	private int orderDetailID;
    private int userID;
    private String productCode;
    private int orderID;
    
    private String productName;
    private String size;
    private String color;
    private Double price;
    private int quantity;
    private String image;
    

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	// Constructor
    public OrderDetailModel() {}

    public OrderDetailModel(int orderDetailID, int userID, String productCode, int orderID) {
        this.orderDetailID = orderDetailID;
        this.userID = userID;
        this.productCode = productCode;
        this.orderID = orderID;
    }

    // Getters and Setters
    public int getOrderDetailID() {
        return orderDetailID;
    }

    public void setOrderDetailID(int orderDetailID) {
        this.orderDetailID = orderDetailID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        if (productCode != null && !productCode.isEmpty()) {
            this.productCode = productCode;
        } else {
            throw new IllegalArgumentException("Mã sản phẩm không hợp lệ.");
        }
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    // toString method for debugging
    @Override
    public String toString() {
        return "OrderDetailModel{" +
                "orderDetailID=" + orderDetailID +
                ", userID=" + userID +
                ", productCode='" + productCode + '\'' +
                ", orderID=" + orderID +
                '}';
    }
}
