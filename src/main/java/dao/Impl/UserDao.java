package dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import configs.DBConnectSQL;
import dao.IUserDao;
import models.UserModel;

public class UserDao implements IUserDao {

	@Override

	public void delete(List<Integer> ids) {
		if (ids == null || ids.isEmpty()) {
			throw new IllegalArgumentException("No IDs provided for deletion.");
		}

		String placeholders = String.join(",", Collections.nCopies(ids.size(), "?"));
		String sql = "DELETE FROM Users WHERE userID IN (" + placeholders + ")";

		try (Connection conn = new DBConnectSQL().getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {

			for (int i = 0; i < ids.size(); i++) {
				ps.setInt(i + 1, ids.get(i));
			}

			int rowsDeleted = ps.executeUpdate();
			System.out.println(rowsDeleted + " users deleted.");
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Error deleting users: " + e.getMessage());
		}
	}

	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	@Override
	public List<UserModel> findAll() {
		String query = "SELECT * FROM Users WHERE roleID = ?";
		List<UserModel> list = new ArrayList<>();
		try (Connection conn = new DBConnectSQL().getConnection();
				PreparedStatement ps = conn.prepareStatement(query)) {

			ps.setString(1, "Customer"); // Set roleID parameter
			try (ResultSet rs = ps.executeQuery()) {
				while (rs.next()) {
					UserModel user = new UserModel(rs.getInt("userID"), rs.getString("fullname"), rs.getString("email"),
							rs.getString("phone"), rs.getString("address"), rs.getString("password"),
							rs.getString("emailCode"), rs.getString("roleID"), rs.getDate("createDate"),
							rs.getDate("updateDate"));
					list.add(user);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; // Return the list (empty if no data found)
	}

	@Override
	public UserModel findByID(int id) {
		String query = "Select * from Users where userID = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				UserModel user = new UserModel();
				user.setUserID(rs.getInt("userID"));
				user.setFullname(rs.getString("fullname"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setRoleID(rs.getString("roleID"));
				user.setCreateDate(rs.getDate("createDate"));
				user.setUpdateDate(rs.getDate("updateDate"));
				return user;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserModel findByEmail(String email) {
		String query = "Select * from Users where Email = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				UserModel user = new UserModel();
				user.setUserID(rs.getInt("userID"));
				user.setFullname(rs.getString("fullname"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setRoleID(rs.getString("roleID"));
				user.setCreateDate(rs.getDate("createDate"));
				user.setUpdateDate(rs.getDate("updateDate"));
				return user;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserModel findByPhone(String phone) {
		String query = "Select * from Users where Phone = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, phone);
			rs = ps.executeQuery();
			if (rs.next()) {
				UserModel user = new UserModel();
				user.setUserID(rs.getInt("userID"));
				user.setFullname(rs.getString("fullname"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setRoleID(rs.getString("roleID"));
				user.setCreateDate(rs.getDate("createDate"));
				user.setUpdateDate(rs.getDate("updateDate"));
				return user;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void insert(UserModel user) {
		String query = "Insert into Users (fullname, email, phone, address, password, emailCode, roleID) VALUES (?,?,?,?,?,?,?)";
		try {
			if (user.getRoleID() == null) {
				user.setRoleID("Customer");
			}

			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);

			ps.setString(1, user.getFullname());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhone());
			ps.setString(4, user.getAddress());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getEmailCode());
			ps.setString(7, user.getRoleID());

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public void update(UserModel user) {
		String query = "UPDATE Users SET fullname = ?, email = ?, phone = ?, address = ?, password = ?, updateDate = CURRENT_TIMESTAMP WHERE userID = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);

			ps.setString(1, user.getFullname());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhone());
			ps.setString(4, user.getAddress());
			ps.setString(5, user.getPassword());
			ps.setInt(6, user.getUserID());

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public UserModel login(String emailOrPhone, String password) {
		String query = "SELECT * FROM Users WHERE (email = ? OR phone = ?) AND password = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);

			ps.setString(1, emailOrPhone);
			ps.setString(2, emailOrPhone);
			ps.setString(3, password);

			rs = ps.executeQuery();

			if (rs.next()) {
				UserModel user = new UserModel();
				user.setUserID(rs.getInt("userID"));
				user.setFullname(rs.getString("fullname"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
				user.setPassword(rs.getString("password"));
				user.setRoleID(rs.getString("roleID"));
				user.setCreateDate(rs.getDate("createDate"));
				user.setUpdateDate(rs.getDate("updateDate"));
				return user;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return null;
	}

	@Override
	public boolean checkExistEmail(String email) {
		boolean duplicate = false;
		String query = "SELECT COUNT(*) FROM Users WHERE email = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, email);

			rs = ps.executeQuery();
			if (rs.next()) {
				int count = rs.getInt(1);
				duplicate = count > 0;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return duplicate;
	}

	@Override
	public boolean checkExistPhone(String phone) {
		boolean duplicate = false;
		String query = "SELECT COUNT(*) FROM Users WHERE phone = ?";
		try {
			conn = new DBConnectSQL().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, phone);

			rs = ps.executeQuery();
			if (rs.next()) {
				int count = rs.getInt(1);
				duplicate = count > 0;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return duplicate;
	}

	public static void main(String[] args) {
		UserDao userDao = new UserDao();

		/*
		 * UserModel newUser = new UserModel(); newUser.setFullname("Nguyen Van A");
		 * newUser.setEmail("nguyenvana@example.com"); newUser.setPhone("0123456789");
		 * newUser.setAddress("123 Đường ABC"); newUser.setPassword("password123");
		 * newUser.setEmailCode("abc123");
		 * 
		 * userDao.insert(newUser);
		 * System.out.println("Người dùng đã được thêm thành công.");
		 */

		boolean emailExists = userDao.checkExistEmail("nguyenvana@example.com");
		System.out.println("Email tồn tại: " + emailExists);

		boolean phoneExists = userDao.checkExistPhone("0123456789");
		System.out.println("Điện thoại tồn tại: " + phoneExists);

		UserModel user = userDao.findByID(1);
		if (user != null) {
			System.out.println("Thông tin người dùng:");
			System.out.println("Họ tên: " + user.getFullname());
			System.out.println("Email: " + user.getEmail());
			System.out.println("Điện thoại: " + user.getPhone());
		} else {
			System.out.println("Không tìm thấy người dùng.");
		}

		/*
		 * if (user != null) { user.setFullname("Nguyen Van C"); userDao.update(user);
		 * System.out.println("Thông tin người dùng đã được cập nhật."); }
		 */
		/*
		 * List<UserModel> users = userDao.findAll(); for (UserModel user1 : users) {
		 * System.out.println(user1.getFullname() + " - " + user1.getEmail()); }
		 */
		UserModel user1 = userDao.login("nguyenvana@example.com", "password123");
		if (user1 != null) {
			System.out.println("Login thanh cong");
		}
	}

}
