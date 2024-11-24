package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import configs.DBConnectSQL;
import models.UserAddressModel;

public class CheckOutPaymentDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	public int getUserIDByAddress(int userID) {
	    int retrievedUserID = 0;
	    String sql = "SELECT UserID FROM UserAddress WHERE UserID = ?";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setInt(1, userID);

	        try (ResultSet rs = ps.executeQuery()) {
	            if (rs.next()) {
	                retrievedUserID = rs.getInt("UserID");
	            }
	        }
	    } catch (Exception e) {
	        System.err.println("Error in getUserIDByAddress: " + e.getMessage());
	        e.printStackTrace();
	    }

	    return retrievedUserID;
	}

}
