package com.revature.dao;

import java.sql.SQLException;
import java.util.List;

import com.revature.model.User;

public interface UserDao {

	void save(User user);

	void update(String userId, User newUSer);

	void remove(String userId);

	User findUser(String userId, String userPass);

	List<User> allUsers() throws SQLException;

	User findUser(String userId);

}
