package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.ProvinceModel;

public class ProvinceDao {
	
	public List<ProvinceModel> getAllProvinces() {
	    List<ProvinceModel> provinces = new ArrayList<>();
	    String sql = "SELECT ProvinceID, Pname FROM Province";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql);
	         ResultSet rs = ps.executeQuery()) {

	        while (rs.next()) {
	            ProvinceModel province = new ProvinceModel();
	            province.setProvinceID(rs.getInt("ProvinceID"));
	            province.setPname(rs.getString("Pname"));
	            provinces.add(province);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return provinces;
	}
}
