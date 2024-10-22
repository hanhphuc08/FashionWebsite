package models;

import java.io.Serializable;
import java.sql.Date;

public class UserModel implements Serializable {
	

 static final long serialVersionUID = 1L;
 	private int userID;
	private String fullname;
	private String email;
	private String phone;
	private String address;
	private String password;
	private String emailCode;
	private String roleID;
    private Date createDate;
    private Date updateDate;
	public UserModel() {
		super();
	}
	public UserModel(int userID, String fullname, String email, String phone, String address, String password,
			String emailCode, String roleID, Date createDate, Date updateDate) {
		super();
		this.userID = userID;
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.password = password;
		this.emailCode = emailCode;
		this.roleID = roleID;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailCode() {
		return emailCode;
	}
	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}
	public String getRoleID() {
		return roleID;
	}
	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "UserModel [userID=" + userID + ", fullname=" + fullname + ", email=" + email + ", phone=" + phone
				+ ", address=" + address + ", password=" + password + ", emailCode=" + emailCode + ", roleID=" + roleID
				+ ", createDate=" + createDate + ", updateDate=" + updateDate + "]";
	}
    
    
}