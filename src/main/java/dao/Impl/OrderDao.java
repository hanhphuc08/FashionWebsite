package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.OrderModel;

public class OrderDao {
	
	public int addOrder(OrderModel order) {
	    String sql = "INSERT INTO Orders (UserID, OrderDate, TotalAmount, Status, PaymentMethod) VALUES (?, GETDATE(), ?, ?, ?)";
	    int generatedOrderID = -1;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

	        ps.setInt(1, order.getUserID());
	        ps.setDouble(2, order.getTotalAmount());
	        ps.setString(3, order.getStatus());
	        ps.setString(4, order.getPaymentMethod());

	        int affectedRows = ps.executeUpdate();
	        if (affectedRows > 0) {
	            try (ResultSet rs = ps.getGeneratedKeys()) {
	                if (rs.next()) {
	                    generatedOrderID = rs.getInt(1); // Lấy OrderID được tự động sinh
	                }
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return generatedOrderID;
	}

	public void updateOderStatus(int orderID, String status)
	{
		String sql = "Update ORDERS set Status = ? where orderID = ?";
		try(Connection conn = new DBConnectSQL().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql)){
				ps.setString(1, status);
				ps.setInt(2, orderID);
				ps.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
	public void updatePaymentMethod(int orderID, String paymentMethod) {
	    String sql = "UPDATE Orders SET PaymentMethod = ? WHERE OrderID = ?";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, paymentMethod);
	        ps.setInt(2, orderID);

	        ps.executeUpdate();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	public List<OrderModel> getOrdersByUserId(int userId) {
	    List<OrderModel> list = new ArrayList<>();
	    String sql = "SELECT * FROM Orders WHERE UserID = ?";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setInt(1, userId);
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	            OrderModel order = new OrderModel();
	            order.setOrderID(rs.getInt("OrderID"));
	            order.setUserID(rs.getInt("UserID"));
	            order.setOrderDate(rs.getTimestamp("OrderDate"));
	            order.setTotalAmount(rs.getDouble("TotalAmount"));
	            order.setStatus(rs.getString("Status"));
	            order.setPaymentMethod(rs.getString("PaymentMethod"));
	            order.setUpdateDate(rs.getTimestamp("UpdateDate"));
	            list.add(order);
	            
	            System.out.println("Order Fetched: " + order.getOrderID());
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	


	
	 
}
