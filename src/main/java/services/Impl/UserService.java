package services.Impl;

import java.sql.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.generator.internal.GeneratedAlwaysGeneration;

import models.UserModel;
import services.IUserService;
import dao.IUserDao;
import dao.Impl.UserDao;

public class UserService implements IUserService {
	@Override
	public void delete(int id) {
		userDao.delete(id);
		
	}

	@Override
	public List<UserModel> findAll() {
		
		return userDao.findAll();
	}

	IUserDao userDao = new UserDao();

	@Override
	public void insert(UserModel user) {
		userDao.insert(user);
		
	}

	@Override
	public boolean register(String fullname, String email, String phone, String address, String password) {
		if(userDao.checkExistEmail(email))
		{
			return false;
		}
		if(userDao.checkExistPhone(phone))
		{
			return false;
		}
		UserModel newUser = new UserModel();
		newUser.setFullname(fullname);
		newUser.setEmail(email);
		newUser.setPhone(phone);
		newUser.setAddress(address);
		newUser.setPassword(password);
		userDao.insert(newUser);
		return true;
	}

	@Override
	public UserModel login(String emailOrPhone, String password) {
		UserModel user = userDao.login(emailOrPhone, password);
		if(user != null)
		{
			return user;
		}
		return null;
	}

	@Override
	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}

	@Override
	public boolean checkExistPhone(String phone) {
		return userDao.checkExistPhone(phone);
	}

	@Override
	public boolean sendCode(String email) {
		UserModel user = userDao.findByEmail(email);
		if(user == null)
		{
			return false;
		}
		String resetCode = genarateResetCode();
		
		user.setEmailCode(resetCode);
		userDao.update(user);
		
		sendEmail(user.getEmail(), "Password reset : ", "Your code : " + resetCode);
		
		return true;
	}

	@Override
	public boolean resetPassword(String email, String resetCode, String newPassword) {
		UserModel user = userDao.findByEmail(email);
		if(user == null || !user.getEmailCode().equals(resetCode))
		{
			return false;
		}
		
		user.setPassword(newPassword);
		user.setEmailCode(null);
		userDao.update(user);
		return true;
	}
	private String genarateResetCode()
	{
		Random random = new Random();
		int code = 100000 + random.nextInt(900000);
		return String.valueOf(code);
	}
	
	private void sendEmail(String to, String subject, String body) {
		//Vi du thui nhaaaaaaaaaaa
        System.out.println("Gửi email tới: " + to);
        System.out.println("Subject: " + subject);
        System.out.println("Body: " + body);
    }

	@Override
	public UserModel findByEmail(String email) {
		return userDao.findByEmail(email);
	}

	@Override
	public UserModel findByPhone(String phone) {
		return userDao.findByPhone(phone);
	}

	

	
}