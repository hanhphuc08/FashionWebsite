package dao;

import java.util.List;

import models.UserModel;

public interface IUserDao {
	
	List<UserModel> findAll();
	
	UserModel findByID(int id);
	UserModel findByEmail(String email);
	UserModel findByPhone(String phone);
	
	void insert(UserModel user);
	void update(UserModel user);
	
	boolean checkExistEmail(String email);
	boolean checkExistPhone(String phone);

}
