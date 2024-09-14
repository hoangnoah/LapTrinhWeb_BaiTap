package vn.iotstar.services;

import java.sql.Date;

import vn.iotstar.models.User;

public interface IUserService {
	User login(String username, String password);
	User findByUserName(String username);
	
	void insert(User user);
	public boolean register(String username,String email,String fullname,String images,String password,String phone);
	boolean checkExistEmail(String email);
	boolean checkExistUsername(String username);
	boolean checkExistPhone(String phone);
}
