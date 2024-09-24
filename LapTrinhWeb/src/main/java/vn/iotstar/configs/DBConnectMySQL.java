package vn.iotstar.configs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import vn.iotstar.dao.impl.UserDao;
import vn.iotstar.models.User;

public class DBConnectMySQL {
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/ltweb";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "123456";

	public static Connection getDatabaseConnection() throws ClassNotFoundException {
		try {
			Class.forName(DRIVER);
			return DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		UserDao userDao = new UserDao();
//		User user = userDao.findByUserName("test");
//		System.out.println(user);

		List<User> users = userDao.findAll();
		for (User user : users) {
			System.out.println(user);
		}
		
//		User user = new User("huy","huy@mail","huy","","256");
//		userDao.insert(user);

	}
}
