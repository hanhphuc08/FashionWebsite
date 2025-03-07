package services.Impl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.util.Base64;
import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;

import org.hibernate.generator.internal.GeneratedAlwaysGeneration;
import org.mindrot.jbcrypt.BCrypt;

import models.UserModel;
import services.IUserService;
import utils.Email;
import dao.IUserDao;
import dao.Impl.UserDao;

public class UserService implements IUserService {
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
		
		String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
		UserModel newUser = new UserModel();
		newUser.setFullname(fullname);
		newUser.setEmail(email);
		newUser.setPhone(phone);
		newUser.setAddress(address);
		newUser.setPassword(hashedPassword);
		userDao.insert(newUser);
		return true;
	}

	@Override
	public UserModel login(String emailOrPhone, String password) {
		 UserModel user = userDao.login(emailOrPhone, password);
		    if (user == null) {
		        System.out.println("Login failed: User not found.");
		    } else {
		        System.out.println("Login successful: " + user.toString());
		    }
		    return user;
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
	public boolean sendCode(String email, String code) {
		 boolean emailSent = sendEmailWithResetCode(email, code);
	        return emailSent;
	}
	@Override
    public boolean updateUser(UserModel user) {
		 try {
		        userDao.update(user); 
		        return true;
		    } catch (Exception e) {
		        e.printStackTrace();
		        return false; 
		    }
    }

    @Override
    public String hashPassword(String password) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(password.getBytes());
            return Base64.getEncoder().encodeToString(hash);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
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
	
	private boolean sendEmailWithResetCode(String to, String code) {
        String subject = "Mã xác nhận đặt lại mật khẩu";
        String body = "Mã xác nhận của bạn là: " + code;
        try {
            Email.sendEmail(to, subject, body);
            return true;
        } catch (MessagingException e) {
            System.err.println("Không thể gửi email: " + e.getMessage());
            return false; 
        }
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