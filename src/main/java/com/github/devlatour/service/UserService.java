package com.github.devlatour.service;

import com.github.devlatour.model.User;

public interface UserService {
	void insertUser(User user);
	boolean getUserByLogin(String email, String password);
	boolean getUserByEmail(String email);
}
