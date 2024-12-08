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
import models.UserModel;

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
	public OrderModel getOrderById(int orderID) {
	    OrderModel order = null;
	    String sql = "SELECT o.OrderID, o.OrderDate, o.Status, o.UserID, u.FullName AS Fullname, u.Email " +
	             "FROM Orders o " +
	             "JOIN Users u ON o.UserID = u.UserID " +
	             "WHERE o.OrderID = ?";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setInt(1, orderID);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            order = new OrderModel();
	            order.setOrderID(rs.getInt("OrderID"));
	            order.setOrderDate(rs.getDate("OrderDate"));
	            order.setStatus(rs.getString("Status"));
	            order.setUserID(rs.getInt("UserID"));
	            
	            UserModel user = new UserModel();
	            user.setUserID(rs.getInt("UserID"));
	            user.setFullname(rs.getString("Fullname"));
	            user.setEmail(rs.getString("Email"));
	            
	            order.setUser(user);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return order;
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
	    String sql = "SELECT COUNT(*) AS TotalCancelledOrders FROM Orders WHERE Status = N'Huỷ'";
	    int totalCancelledOrders = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalCancelledOrders = rs.getInt("TotalCancelledOrders");
	            System.out.println("Total cancelled orders: " + totalCancelledOrders);
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
	
	public boolean updateOrderStatus(int orderID, String status) {
	    boolean success = false;
	    String sql = "UPDATE Orders SET Status = ? WHERE OrderID = ?";
	    
	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, status);
	        ps.setInt(2, orderID);
	        
	        int rowsUpdated = ps.executeUpdate();
	        if (rowsUpdated > 0) {
	            success = true; // Trạng thái đã được cập nhật thành công
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return success;
	}
	
	public List<OrderModel> getAllOrders() {
	    List<OrderModel> orders = new ArrayList<>();
	    String sql = "SELECT o.OrderID, u.FullName, o.OrderDate, o.Status, SUM(od.Quantity * p.Price) AS TotalAmount " +
	                 "FROM Orders o " +
	                 "INNER JOIN Users u ON o.UserID = u.UserID " +
	                 "INNER JOIN OrderDetails od ON o.OrderID = od.OrderID " +
	                 "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
	                 "GROUP BY o.OrderID, u.FullName, o.OrderDate, o.Status " +
	                 "ORDER BY o.OrderDate DESC ";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        while (rs.next()) {
	            OrderModel order = new OrderModel();
	            order.setOrderID(rs.getInt("OrderID"));
	            order.setFullName(rs.getString("FullName"));
	            order.setOrderDate(rs.getDate("OrderDate"));
	            order.setStatus(rs.getString("Status"));
	            order.setTotalAmount(rs.getDouble("TotalAmount"));
	            orders.add(order);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return orders;
	}
	
	public List<OrderModel> getOrdersByStatus(String status) {
	    List<OrderModel> orders = new ArrayList<>();
	    String sql = "SELECT o.OrderID, u.FullName, o.OrderDate, o.Status, SUM(od.Quantity * p.Price) AS TotalAmount " +
	                 "FROM Orders o " +
	                 "INNER JOIN Users u ON o.UserID = u.UserID " +
	                 "INNER JOIN OrderDetails od ON o.OrderID = od.OrderID " +
	                 "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
	                 "WHERE o.Status = ? " +
	                 "GROUP BY o.OrderID, u.FullName, o.OrderDate, o.Status";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, status);
	        
	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	                OrderModel order = new OrderModel();
	                order.setOrderID(rs.getInt("OrderID"));
	                order.setFullName(rs.getString("FullName"));
	                order.setOrderDate(rs.getDate("OrderDate"));
	                order.setStatus(rs.getString("Status"));
	                order.setTotalAmount(rs.getDouble("TotalAmount"));
	                orders.add(order);
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return orders;
	}
	
	public List<OrderModel> getOrdersByPaymentMethod(String paymentMethod) {
	    List<OrderModel> orders = new ArrayList<>();
	    String sql = "SELECT o.OrderID, u.FullName, o.OrderDate, o.Status, SUM(od.Quantity * p.Price) AS TotalAmount " +
	                 "FROM Orders o " +
	                 "INNER JOIN Users u ON o.UserID = u.UserID " +
	                 "INNER JOIN OrderDetails od ON o.OrderID = od.OrderID " +
	                 "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
	                 "WHERE o.PaymentMethod = ? " +
	                 "GROUP BY o.OrderID, u.FullName, o.OrderDate, o.Status";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, paymentMethod);
	        
	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	                OrderModel order = new OrderModel();
	                order.setOrderID(rs.getInt("OrderID"));
	                order.setFullName(rs.getString("FullName"));
	                order.setOrderDate(rs.getDate("OrderDate"));
	                order.setStatus(rs.getString("Status"));
	                order.setTotalAmount(rs.getDouble("TotalAmount"));
	                orders.add(order);
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return orders;
	}
	
	public List<OrderModel> getOrdersByStatusAndPayment(String status, String paymentMethod) {
	    List<OrderModel> orders = new ArrayList<>();
	    String sql = "SELECT o.OrderID, u.FullName, o.OrderDate, o.Status, SUM(od.Quantity * p.Price) AS TotalAmount " +
	                 "FROM Orders o " +
	                 "INNER JOIN Users u ON o.UserID = u.UserID " +
	                 "INNER JOIN OrderDetails od ON o.OrderID = od.OrderID " +
	                 "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
	                 "WHERE o.Status = ? AND o.PaymentMethod = ? " +
	                 "GROUP BY o.OrderID, u.FullName, o.OrderDate, o.Status";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setString(1, status);
	        ps.setString(2, paymentMethod);
	        
	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	                OrderModel order = new OrderModel();
	                order.setOrderID(rs.getInt("OrderID"));
	                order.setFullName(rs.getString("FullName"));
	                order.setOrderDate(rs.getDate("OrderDate"));
	                order.setStatus(rs.getString("Status"));
	                order.setTotalAmount(rs.getDouble("TotalAmount"));
	                orders.add(order);
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return orders;
	}
	
	public List<OrderModel> getOrdersByOrderID(String orderID) {
        List<OrderModel> orders = new ArrayList<>();
        String sql = "SELECT o.OrderID, u.FullName, o.OrderDate, o.Status, SUM(od.Quantity * p.Price) AS TotalAmount " +
                     "FROM Orders o " +
                     "INNER JOIN Users u ON o.UserID = u.UserID " +
                     "INNER JOIN OrderDetails od ON o.OrderID = od.OrderID " +
                     "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
                     "WHERE o.OrderID = ? " +
                     "GROUP BY o.OrderID, u.FullName, o.OrderDate, o.Status";
        
        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, orderID);
            
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    OrderModel order = new OrderModel();
                    order.setOrderID(rs.getInt("OrderID"));
                    order.setFullName(rs.getString("FullName"));
                    order.setOrderDate(rs.getDate("OrderDate"));
                    order.setStatus(rs.getString("Status"));
                    order.setTotalAmount(rs.getDouble("TotalAmount"));
                    orders.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }
	public List<OrderModel> getOrdersByCustomerName(String searchQuery) {
        List<OrderModel> orders = new ArrayList<>();
        String sql = "SELECT o.OrderID, u.FullName, o.OrderDate, o.Status, SUM(od.Quantity * p.Price) AS TotalAmount " +
                     "FROM Orders o " +
                     "INNER JOIN Users u ON o.UserID = u.UserID " +
                     "INNER JOIN OrderDetails od ON o.OrderID = od.OrderID " +
                     "INNER JOIN Products p ON od.ProductCode = p.ProductCode " +
                     "WHERE u.FullName LIKE ? " +
                     "GROUP BY o.OrderID, u.FullName, o.OrderDate, o.Status";
        
        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, "%" + searchQuery + "%");
            
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    OrderModel order = new OrderModel();
                    order.setOrderID(rs.getInt("OrderID"));
                    order.setFullName(rs.getString("FullName"));
                    order.setOrderDate(rs.getDate("OrderDate"));
                    order.setStatus(rs.getString("Status"));
                    order.setTotalAmount(rs.getDouble("TotalAmount"));
                    orders.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }
	public int getPendingOrderCountToday() {

	    String sql = "SELECT COUNT(*) AS TotalAmount " +
	                 "FROM Orders " +
	                 "WHERE Status = N'Đang xác nhận' " +
	                 "AND CAST(OrderDate AS DATE) = CAST(GETDATE() AS DATE)";
	    int totalAmount = 0;

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        if (rs.next()) {
	            totalAmount = rs.getInt("TotalAmount");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return totalAmount;
	}



	

	public static void main(String[] args) {
		OrderDao orderDao = new OrderDao();
		
		int totalAmount = orderDao.getPendingOrderCountToday();
		System.out.println("Tổng đơn hàng hôm nay: " + totalAmount);

		


	}
}
