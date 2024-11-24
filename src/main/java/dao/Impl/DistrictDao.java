package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import configs.DBConnectSQL;
import models.DistrictModel;

public class DistrictDao {
	public List<DistrictModel> getDistrictsByProvinceID(int provinceID) {
	    List<DistrictModel> districts = new ArrayList<>();
	   
	    String sql = "SELECT DistrictID, Dname FROM District WHERE ProvinceID = ?";

	    try (Connection conn = new DBConnectSQL().getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {

	        ps.setInt(1, provinceID);
	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	                DistrictModel district = new DistrictModel();
	                district.setDistrictID(rs.getInt("DistrictID"));
	                district.setDname(rs.getString("Dname"));
	                districts.add(district);
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return districts;
	}
	public static void main(String[] args) {
		DistrictDao dao = new DistrictDao();
		List<DistrictModel> dis = dao.getDistrictsByProvinceID(1);
		for (DistrictModel districtModel : dis) {
			System.out.println(districtModel);
		}
	}
}
