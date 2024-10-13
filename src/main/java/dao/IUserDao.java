package dao;

import java.util.List;

import models.UserModel;

public interface IUserDao {
	
	List<UserModel> findAll();
	
	UserModel findOne(int id);
	
	UserModel findByUsername(String username);
	
	void insert(UserModel user);
	boolean checkExistEmail(String email);
	boolean checkExistUsername(String username);
	boolean checkExistPhone(String phone);

}
