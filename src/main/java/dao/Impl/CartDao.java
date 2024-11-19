package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.CartModel;

public class CartDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
    public boolean addToCart(CartModel cartItem) {
        String sql = "IF EXISTS (SELECT * FROM Cart WHERE UserID = ? AND ProductCode = ? AND Size = ?) " +
                     "BEGIN " +
                     "    UPDATE Cart SET Quantity = Quantity + ? WHERE UserID = ? AND ProductCode = ? AND Size = ? " +
                     "END " +
                     "ELSE " +
                     "BEGIN " +
                     "    INSERT INTO Cart (UserID, CategoryCode, ProductCode, Size, Quantity) VALUES (?, ?, ?, ?, ?) " +
                     "END";

        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            // Set parameters
            ps.setInt(1, cartItem.getUserID());
            ps.setString(2, cartItem.getProductCode());
            ps.setString(3, cartItem.getSize());
            ps.setInt(4, cartItem.getQuantity());
            ps.setInt(5, cartItem.getUserID());
            ps.setString(6, cartItem.getProductCode());
            ps.setString(7, cartItem.getSize());
            ps.setInt(8, cartItem.getUserID());
            ps.setString(9, cartItem.getCategoryCode());
            ps.setString(10, cartItem.getProductCode());
            ps.setString(11, cartItem.getSize());
            ps.setInt(12, cartItem.getQuantity());

            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Lấy danh sách giỏ hàng chi tiết
    public List<CartModel> getAllCartWithDetail(int userId) {
        List<CartModel> cartItems = new ArrayList<>();
        String sql = "SELECT c.*, p.ProductName, p.Price, ps.StockQuantity, p.Image " +
                     "FROM Cart c " +
                     "INNER JOIN Products p ON c.ProductCode = p.ProductCode " +
                     "INNER JOIN ProductSizes ps ON c.ProductCode = ps.ProductCode AND c.Size = ps.Size " +
                     "WHERE c.UserID = ?";

        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    CartModel item = new CartModel();
 //                   item.setCartID(rs.getInt("CartID"));
                    item.setUserID(rs.getInt("UserID"));
                    item.setCategoryCode(rs.getString("CategoryCode"));
                    item.setProductCode(rs.getString("ProductCode"));
                    item.setSize(rs.getString("Size"));
                    item.setQuantity(rs.getInt("Quantity"));
                    item.setProductName(rs.getString("ProductName"));
                    item.setPrice(rs.getDouble("Price"));
                    item.setQuantity(rs.getInt("StockQuantity"));
                    item.setImage(rs.getString("Image"));
                    cartItems.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItems;
    }

    // Xóa sản phẩm khỏi giỏ hàng
    public void removeFromCart(int userId, String productCode, String size) {
        String sql = "DELETE FROM Cart WHERE UserID = ? AND ProductCode = ? AND Size = ?";

        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userId);
            ps.setString(2, productCode);
            ps.setString(3, size);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public int getCartItemCount(int userId) {
        String sql = "SELECT SUM(Quantity) AS TotalQuantity FROM Cart WHERE UserID = ?";
        try {
            conn = new DBConnectSQL().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("TotalQuantity");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    
}
