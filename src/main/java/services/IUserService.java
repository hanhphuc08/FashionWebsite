package services;

import models.UserModel;

public interface IUserService {
	void insert(UserModel user);

	boolean register(String email, String password, String username, String fullname, String phone);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);

	UserModel login(String username, String password);

	UserModel findByUsername(String username);
}