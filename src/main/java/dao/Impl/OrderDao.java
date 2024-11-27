package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.OrderModel;
import models.ProductModel;

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
	                    generatedOrderID = rs.getInt(1); 
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
	
	public int getTotalOrders()
	{
		String sql = "select count(*) as ToTalOrders From Orders";
		int totalOrders = 0;
		try(Connection conn = new DBConnectSQL().getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()){
		 if(rs.next())
		 {
			 totalOrders = rs.getInt("TotalOrders");
		 }
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalOrders;
		
	}
	public int getTotalOrdersToday() {
	    String sql = "SELECT COUNT(*) AS TotalOrders FROM Orders WHERE CAST(OrderDate AS DATE) = CAST(GETDATE() AS DATE)";
	    int totalOrders = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalOrders = rs.getInt("TotalOrders");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalOrders;
	}
	public int getTotalOrdersThisMonth() {
	    String sql = "SELECT COUNT(*) AS TotalOrders FROM Orders WHERE YEAR(OrderDate) = YEAR(GETDATE()) AND MONTH(OrderDate) = MONTH(GETDATE())";
	    int totalOrders = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalOrders = rs.getInt("TotalOrders");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalOrders;
	}
	public int getTotalCancelledOrders() {
	    String sql = "SELECT COUNT(*) AS TotalCancelledOrders FROM Orders WHERE Status = 'Huỷ'";
	    int totalCancelledOrders = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalCancelledOrders = rs.getInt("TotalCancelledOrders");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalCancelledOrders;
	}
	public double getTotalAmount() {
	    String sql = "SELECT SUM(TotalAmount) AS TotalAmount FROM Orders WHERE Status != 'Huỷ'";
	    double totalAmount = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalAmount = rs.getDouble("TotalAmount");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalAmount;
	}

	
	public double getTotalAmountToday() {
	    String sql = "SELECT SUM(TotalAmount) AS TotalAmountToday FROM Orders WHERE Status != 'Huỷ' AND CAST(OrderDate AS DATE) = CAST(GETDATE() AS DATE)";
	    double totalAmount = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalAmount = rs.getDouble("TotalAmountToday");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalAmount;
	}
	
	public double getTotalAmountThisMonth() {
	    String sql = "SELECT SUM(TotalAmount) AS TotalAmount FROM Orders WHERE Status != 'Huỷ' AND YEAR(OrderDate) = YEAR(GETDATE()) AND MONTH(OrderDate) = MONTH(GETDATE())";
	    double totalAmount = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalAmount = rs.getDouble("TotalAmount");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalAmount;
	}

	public List<OrderModel> getTop5RecentOrders() {
	    List<OrderModel> recentOrders = new ArrayList<>();
	    String sql = "SELECT TOP 5 o.OrderID, o.UserID, u.FullName, o.OrderDate, o.TotalAmount " +
	                 "FROM Orders o " +
	                 "JOIN Users u ON o.UserID = u.UserID " +
	                 "ORDER BY o.OrderDate DESC";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        while (rs.next()) {
	            OrderModel order = new OrderModel();
	            order.setOrderID(rs.getInt("OrderID"));
	            order.setUserID(rs.getInt("UserID"));
	            order.setFullName(rs.getString("FullName"));
	            order.setOrderDate(rs.getDate("OrderDate"));
	            order.setTotalAmount(rs.getDouble("TotalAmount"));

	            recentOrders.add(order);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return recentOrders;
	}

	


	public static void main(String[] args) {
		OrderDao orderDao = new OrderDao();
		
		double totalAmount = orderDao.getTotalAmount();
		System.out.println("Tổng tiền đơn hàng hôm nay: " + totalAmount);

		double totalAmountToday = orderDao.getTotalAmountToday();
		System.out.println("Tổng tiền đơn hàng (không huỷ) hôm nay: " + totalAmountToday);

		// Tổng tiền các đơn hàng không bị huỷ trong tháng này
		double totalAmountThisMonth = orderDao.getTotalAmountThisMonth();
		System.out.println("Tổng tiền đơn hàng (không huỷ) trong tháng này: " + totalAmountThisMonth);


	}
}
