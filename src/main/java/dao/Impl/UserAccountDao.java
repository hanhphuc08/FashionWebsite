package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mindrot.jbcrypt.BCrypt;

import configs.DBConnectSQL;
import models.UserModel;

public class UserAccountDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	
	public UserModel getUserById(int userID) {
        String sql = "SELECT * FROM Users WHERE UserID = ?";
        UserModel user = null;

        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userID);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = new UserModel();
                    user.setUserID(rs.getInt("UserID"));
                    user.setFullname(rs.getString("Fullname"));
                    user.setEmail(rs.getString("Email"));
                    user.setPhone(rs.getString("Phone"));
                    user.setAddress(rs.getString("Address"));
                    user.setPassword(rs.getString("Password"));
                    user.setRoleID(rs.getString("RoleID"));
                    user.setCreateDate(rs.getDate("CreateDate"));
                    user.setUpdateDate(rs.getDate("UpdateDate"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean updateUserProfile(UserModel user) {
        String sql = "UPDATE Users SET Fullname = ?, Email = ?, Phone = ?, Address = ?, UpdateDate = GETDATE() WHERE UserID = ?";
        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, user.getFullname());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhone());
            ps.setString(4, user.getAddress());
            ps.setInt(5, user.getUserID());
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updatePassword(int userID, String newPassword) {
    	String hashedPassword = BCrypt.hashpw(newPassword, BCrypt.gensalt());
        String sql = "UPDATE Users SET Password = ?, UpdateDate = GETDATE() WHERE UserID = ?";
        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, hashedPassword);
            ps.setInt(2, userID);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
