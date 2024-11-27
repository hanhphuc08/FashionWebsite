package dao;

import java.util.List;

import models.UserModel;

public interface IUserDao {
	
	List<UserModel> findAll();
	
	UserModel findByID(int id);
	UserModel findByEmail(String email);
	UserModel findByPhone(String phone);
	UserModel login(String emailOrPhone, String password);
	
	void insert(UserModel user);
	
	
	boolean checkExistEmail(String email);
	boolean checkExistPhone(String phone);

	void delete(List<Integer> ids);

	void update(UserModel user);

}
