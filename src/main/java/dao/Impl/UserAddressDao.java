package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import configs.DBConnectSQL;
import models.UserAddressModel;

public class UserAddressDao {
	public UserAddressModel getAddressByUserId(int userId) {
        UserAddressModel address = null;
        String sql = "SELECT * FROM UserAddress WHERE UserID = ?";
        
        try (Connection conn = new DBConnectSQL().getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setInt(1, userId);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    address = new UserAddressModel();
                    address.setAddressID(rs.getInt("AddressID"));
                    address.setUserID(rs.getInt("UserID"));
                    address.setProvinceName(rs.getString("ProvinceName"));
                    address.setDistrictName(rs.getString("DistrictName"));
                    address.setSpecificAddress(rs.getString("SpecificAddress"));
                    address.setFullNameUA(rs.getString("FullNameUA"));
                    address.setEmailUA(rs.getString("EmailUA"));
                    address.setPhoneUA(rs.getString("PhoneUA"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return address; 
    }
}
