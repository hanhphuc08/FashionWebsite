package services;



import java.util.List;

import models.UserModel;

public interface IUserService {
	void insert(UserModel user);
	void delete(int id);
	List<UserModel> findAll();
	boolean register(String fullname, String email, String phone, String address, String password);
	
	UserModel login(String emailOrPhone, String password);
	boolean checkExistEmail(String email);
	boolean checkExistPhone(String phone);
	
	boolean sendCode(String email);
	boolean resetPassword(String email, String resetCode, String newPassword);
	
	UserModel findByEmail(String email);
	UserModel findByPhone(String phone);
	
}