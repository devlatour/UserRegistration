package com.github.devlatour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.devlatour.mappers.UserMapper;
import com.github.devlatour.model.User;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Transactional
	public void insertUser(User user) {
		userMapper.insertUser(user);
	}

	public boolean getUserByLogin(String email, String password) {
		User user = userMapper.getUserByEmail(email);
		
		if(user != null && user.getPassword().equals(password)) {
			return true;
		}
		
		return false;
	}

	public boolean getUserByEmail(String email) {
		User user = userMapper.getUserByEmail(email);
		
		if(user != null) {
			return true;
		}
		
		return false;
	}


}
