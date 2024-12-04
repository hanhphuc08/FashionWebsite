package models;

import java.util.Date;

public class OrderModel {
	 private int orderID;
	    private int userID;
	    private Date orderDate;
	    private double totalAmount;
	    private String status; // Đang xác nhận, Xác nhận, Huỷ
	    private String paymentMethod; // Tiền mặt, Chuyển khoản
	    private Date updateDate;
	    
	    private String fullName;
	    
	    private String totalAmountFormatted;

	    public String getTotalAmountFormatted() {
	        return totalAmountFormatted;
	    }

	    public void setTotalAmountFormatted(String totalAmountFormatted) {
	        this.totalAmountFormatted = totalAmountFormatted;
	    }
	    private String formattedTotalAmount;
	    
	    
	    public String getFormattedTotalAmount() {
			return formattedTotalAmount;
		}

		public void setFormattedTotalAmount(String formattedTotalAmount) {
			this.formattedTotalAmount = formattedTotalAmount;
		}

		public String getFullName() {
			return fullName;
		}

		public void setFullName(String fullName) {
			this.fullName = fullName;
		}

		// Constructor
	    public OrderModel() {}

	    public OrderModel(int orderID, int userID, Date orderDate, double totalAmount, String status, String paymentMethod, Date updateDate) {
	        this.orderID = orderID;
	        this.userID = userID;
	        this.orderDate = orderDate;
	        this.totalAmount = totalAmount;
	        this.status = status;
	        this.paymentMethod = paymentMethod;
	        this.updateDate = updateDate;
	    }

	    // Getters and Setters
	    public int getOrderID() {
	        return orderID;
	    }

	    public void setOrderID(int orderID) {
	        this.orderID = orderID;
	    }

	    public int getUserID() {
	        return userID;
	    }

	    public void setUserID(int userID) {
	        this.userID = userID;
	    }

	    public Date getOrderDate() {
	        return orderDate;
	    }

	    public void setOrderDate(Date orderDate) {
	        this.orderDate = orderDate;
	    }

	    public double getTotalAmount() {
	        return totalAmount;
	    }

	    public void setTotalAmount(double totalAmount) {
	        this.totalAmount = totalAmount;
	    }

	    public String getStatus() {
	        return status;
	    }

	    public void setStatus(String status) {
	        if (status.equals("Đang xác nhận") || status.equals("Xác nhận") || status.equals("Huỷ")) {
	            this.status = status;
	        } else {
	            throw new IllegalArgumentException("Trạng thái không hợp lệ.");
	        }
	    }

	    public String getPaymentMethod() {
	        return paymentMethod;
	    }

	    public void setPaymentMethod(String paymentMethod) {
	        if (paymentMethod.equals("Tiền mặt") || paymentMethod.equals("Chuyển khoản")) {
	            this.paymentMethod = paymentMethod;
	        } else {
	            throw new IllegalArgumentException("Phương thức thanh toán không hợp lệ.");
	        }
	    }

	    public Date getUpdateDate() {
	        return updateDate;
	    }

	    public void setUpdateDate(Date updateDate) {
	        this.updateDate = updateDate;
	    }

	    // toString method for debugging
	    @Override
	    public String toString() {
	        return "OrderModel{" +
	                "orderID=" + orderID +
	                ", userID=" + userID +
	                ", orderDate=" + orderDate +
	                ", totalAmount=" + totalAmount +
	                ", status='" + status + '\'' +
	                ", paymentMethod='" + paymentMethod + '\'' +
	                ", updateDate=" + updateDate +
	                '}';
	    }
}

