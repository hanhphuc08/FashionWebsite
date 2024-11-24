package models;

import java.io.Serializable;

public class DistrictModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int districtID;
	private String dname;
	private int provinceID;
	public DistrictModel(int districtID, String dname, int provinceID) {
		super();
		this.districtID = districtID;
		this.dname = dname;
		this.provinceID = provinceID;
	}
	
	public DistrictModel() {
		super();
	}

	public int getDistrictID() {
		return districtID;
	}
	public void setDistrictID(int districtID) {
		this.districtID = districtID;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getProvinceID() {
		return provinceID;
	}
	public void setProvinceID(int provinceID) {
		this.provinceID = provinceID;
	}

	@Override
	public String toString() {
		return "DistrictModel [districtID=" + districtID + ", name=" + dname + ", provinceID=" + provinceID + "]";
	}
	
	
	
}
