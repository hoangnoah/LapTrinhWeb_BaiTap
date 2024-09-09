package vn.iotstar.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.iotstar.configs.DBConnectMySQL;
import vn.iotstar.dao.IUserDao;
import vn.iotstar.models.User;

public class UserDao extends DBConnectMySQL implements IUserDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	@Override
	public List<User> findAll() {
		String sql = "SELECT * FROM users";
		List<User> users = new ArrayList<>();

		try {
			conn = super.getDatabaseConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				users.add(new User(rs.getInt("id"), rs.getString("username"), rs.getString("email"), rs.getString("fullname"),
						rs.getString("images"), rs.getString("password")));
			}
			return users;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public User findByEmail(String email) {
		String sql = "SELECT * FROM users WHERE email=?";
		try {
			conn = super.getDatabaseConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			
			if (rs.next()) {
				return new User(rs.getInt("id"), rs.getString("username"), rs.getString("email"), rs.getString("fullname"),
						rs.getString("images"), rs.getString("password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void insert(User user) {
		String sql = "INSERT INTO users(username, email, fullname, images, password) VALUES (?, ?, ?, ?, ?)";

		try {
			conn = super.getDatabaseConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getFullname());
			ps.setString(4, user.getImages());
			ps.setString(5, user.getPassword());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
	}

}
