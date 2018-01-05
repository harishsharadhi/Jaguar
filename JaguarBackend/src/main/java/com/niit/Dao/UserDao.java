package com.niit.Dao;

import java.util.List;

import com.niit.model.User;

public interface UserDao {
	public void insertUser(User user);
	public List<User> getAllUsers();
	public void removeUser(int uid);
	public void modifyUser(User user);
}
