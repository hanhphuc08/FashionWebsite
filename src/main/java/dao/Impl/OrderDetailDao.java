package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.CartModel;
import models.OrderDetailModel;

public class OrderDetailDao {
	public void addOrderDetails(List<CartModel> cartItems, int orderID) {
	    String sql = "INSERT INTO OrderDetails (UserID, ProductCode, OrderID, Quantity, Size) VALUES (?, ?, ?, ?, ?)";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        for (CartModel item : cartItems) {
	            ps.setInt(1, item.getUserID()); 
	            ps.setString(2, item.getProductCode());  
	            ps.setInt(3, orderID);  // OrderID
	            ps.setInt(4, item.getQuantity()); 
	            ps.setString(5, item.getSize());  
	            
	            ps.addBatch();  
	        }


	        ps.executeBatch();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	 
	 public List<OrderDetailModel> getOrderDetailsByOrderId(int orderID) {
		    List<OrderDetailModel> details = new ArrayList<>();

		    String sql = "SELECT DISTINCT od.OrderID, od.ProductCode, p.ProductName, p.Price, od.Quantity, p.Color, p.Image, od.Size, o.PaymentMethod " +
		             "FROM OrderDetails od " +
		             "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
		             "INNER JOIN Orders o ON od.OrderID = o.OrderID " +
		             "WHERE od.OrderID = ?";


		    
		    try (Connection conn = new DBConnectSQL().getConnection();
		         PreparedStatement ps = conn.prepareStatement(sql)) {

		        ps.setInt(1, orderID);
		        

		        ResultSet rs = ps.executeQuery();


		        while (rs.next()) { 
		            OrderDetailModel detail = new OrderDetailModel();

		            detail.setOrderID(rs.getInt("OrderID"));
		            detail.setProductCode(rs.getString("ProductCode"));
		            detail.setProductName(rs.getString("ProductName"));
		            detail.setPrice(rs.getDouble("Price"));
		            detail.setQuantity(rs.getInt("Quantity")); 
		            detail.setColor(rs.getString("Color"));
		            detail.setSize(rs.getString("Size"));  
		            detail.setImage(rs.getString("Image"));
		            detail.setPaymentMethod(rs.getString("PaymentMethod"));

		            
		            details.add(detail); 
		        }
		    } catch (Exception e) {
		        e.printStackTrace(); 
		    }
		    return details; 
		}


	 

}
