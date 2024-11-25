package models;

import java.io.Serializable;

public class ProvinceModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int provinceID;
	private String pname;
	public ProvinceModel(int provinceID, String pname) {
		super();
		this.provinceID = provinceID;
		this.pname = pname;
	}
	public ProvinceModel() {
		super();
	}
	public int getProvinceID() {
		return provinceID;
	}
	public void setProvinceID(int provinceID) {
		this.provinceID = provinceID;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	@Override
	public String toString() {
		return "ProvinceModel [provinceID=" + provinceID + ", pname=" + pname + "]";
	}
	
	
}
