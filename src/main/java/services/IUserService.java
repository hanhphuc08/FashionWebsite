package services;



import models.UserModel;

public interface IUserService {
	void insert(UserModel user);
	
	boolean register(String fullname, String email, String phone, String address, String password);
	
	UserModel login(String emailOrPhone, String password);
	boolean checkExistEmail(String email);
	boolean checkExistPhone(String phone);
	
	boolean sendCode(String email);
	boolean resetPassword(String email, String resetCode, String newPassword);
	
	UserModel findByEmail(String email);
	UserModel findByPhone(String phone);
	
}