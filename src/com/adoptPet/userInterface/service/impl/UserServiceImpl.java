package com.adoptPet.userInterface.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adoptPet.userInterface.mapper.UserMapper;
import com.adoptPet.userInterface.service.UserService;

@Service
public class UserServiceImpl<T> implements UserService<T> {

	@Autowired
	private UserMapper<T> userMapper;
	
	@Override
	public int saveUser(T t) throws Exception {
		
		return userMapper.insert(t);
	}

	@Override
	public T findUserByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T findUserByPhone(String phone) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T findUserByPhonePassword(String phone, String password) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T getByUserName(String userName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


}
