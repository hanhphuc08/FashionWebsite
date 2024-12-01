package models;

import java.io.Serializable;

public class UserAddressModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int addressID;
	private int userID;
	private int provinceID;
	private int districtID;
	private String specificAddress;
	private String fullNameUA;
	private String phoneUA;
	private String emailUA;
	private String provinceName;
	private String districtName;
	private Integer orderID;
	
	
	public Integer getOrderID() {
		return orderID;
	}
	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}
	public String getFullNameUA() {
		return fullNameUA;
	}
	public void setFullNameUA(String fullNameUA) {
		this.fullNameUA = fullNameUA;
	}
	public String getPhoneUA() {
		return phoneUA;
	}
	public void setPhoneUA(String phoneUA) {
		this.phoneUA = phoneUA;
	}
	public String getEmailUA() {
		return emailUA;
	}
	public void setEmailUA(String emailUA) {
		this.emailUA = emailUA;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	
	public UserAddressModel(int addressID, int userID, int provinceID, int districtID, String specificAddress,
			String fullNameUA, String phoneUA, String emailUA, String provinceName, String districtName) {
		super();
		this.addressID = addressID;
		this.userID = userID;
		this.provinceID = provinceID;
		this.districtID = districtID;
		this.specificAddress = specificAddress;
		this.fullNameUA = fullNameUA;
		this.phoneUA = phoneUA;
		this.emailUA = emailUA;
		this.provinceName = provinceName;
		this.districtName = districtName;
	}
	public UserAddressModel() {
		super();
	}
	public int getAddressID() {
		return addressID;
	}
	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getProvinceID() {
		return provinceID;
	}
	public void setProvinceID(int provinceID) {
		this.provinceID = provinceID;
	}
	public int getDistrictID() {
		return districtID;
	}
	public void setDistrictID(int districtID) {
		this.districtID = districtID;
	}
	public String getSpecificAddress() {
		return specificAddress;
	}
	public void setSpecificAddress(String specificAddress) {
		this.specificAddress = specificAddress;
	}
	@Override
	public String toString() {
		return "UserAddressModel [addressID=" + addressID + ", userID=" + userID + ", provinceID=" + provinceID
				+ ", districtID=" + districtID + ", specificAddress=" + specificAddress + ", orderID="+ orderID + "]";
	}
	
	

}
