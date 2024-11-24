package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.DistrictModel;
import models.ProvinceModel;
import models.UserAddressModel;


public class CheckOutAddressDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	
	public UserAddressModel getCheckOutAddress(int userID) {
        UserAddressModel userAddress = null;
        String sql = "SELECT ua.ProvinceName, ua.DistrictName, ua.SpecificAddress, " +
                     "ua.FullNameUA, ua.EmailUA, ua.PhoneUA " +
                     "FROM UserAddress ua " +
                     "WHERE ua.UserID = ?";

        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, userID);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    userAddress = new UserAddressModel();
                    userAddress.setFullNameUA(rs.getString("FullNameUA"));
                    userAddress.setEmailUA(rs.getString("EmailUA"));
                    userAddress.setPhoneUA(rs.getString("PhoneUA"));
                    userAddress.setProvinceName(rs.getString("ProvinceName"));
                    userAddress.setDistrictName(rs.getString("DistrictName"));
                    userAddress.setSpecificAddress(rs.getString("SpecificAddress"));
                }
            }
        } catch (Exception e) {
            System.err.println("Error in getCheckOutAddress: " + e.getMessage());
            e.printStackTrace();
        }
        return userAddress;
    }


	 public boolean addCheckOutAddress(UserAddressModel address) {
	        String sql = "INSERT INTO UserAddress (UserID, FullNameUA, EmailUA, PhoneUA, ProvinceName, DistrictName, SpecificAddress) " +
	                     "VALUES (?, ?, ?, ?, ?, ?, ?)";

	        try (Connection conn = new DBConnectSQL().getConnection();
	             PreparedStatement ps = conn.prepareStatement(sql)) {

	            ps.setInt(1, address.getUserID());
	            ps.setString(2, address.getFullNameUA());
	            ps.setString(3, address.getEmailUA());
	            ps.setString(4, address.getPhoneUA());
	            ps.setString(5, address.getProvinceName());
	            ps.setString(6, address.getDistrictName());
	            ps.setString(7, address.getSpecificAddress());

	            return ps.executeUpdate() > 0;
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.err.println("Error in addCheckOutAddress: " + e.getMessage());
	            return false;
	        }
	    }

	 public boolean updateCheckOutAddress(UserAddressModel address) {
	        String sql = "UPDATE UserAddress " +
	                     "SET FullNameUA = ?, EmailUA = ?, PhoneUA = ?, ProvinceName = ?, DistrictName = ?, SpecificAddress = ? " +
	                     "WHERE UserID = ?";

	        try (Connection conn = new DBConnectSQL().getConnection();
	             PreparedStatement ps = conn.prepareStatement(sql)) {

	            ps.setString(1, address.getFullNameUA());
	            ps.setString(2, address.getEmailUA());
	            ps.setString(3, address.getPhoneUA());
	            ps.setString(4, address.getProvinceName());
	            ps.setString(5, address.getDistrictName());
	            ps.setString(6, address.getSpecificAddress());
	            ps.setInt(7, address.getUserID());

	            return ps.executeUpdate() > 0;
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.err.println("Error in updateCheckOutAddress: " + e.getMessage());
	            return false;
	        }
	}


}
