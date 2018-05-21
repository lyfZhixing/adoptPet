package com.adoptPet.userInterface.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.mapper.UserMapperEx;
import com.adoptPet.userInterface.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserMapperEx userMapperEx;
	
	@Override
	public int saveUser(User user) throws Exception {
		
		return userMapperEx.insert(user);
	}

	@Override
	public User findUserByName(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findUserByPhone(String phone) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findUserByPhonePassword(String phoneNo, String upwd) throws Exception {
		User user = new User();
		user.setPhoneno(phoneNo);
		user.setUpwd(upwd);
		return userMapperEx.loginByPhonePassword(user);
	}

	@Override
	public User getByUserName(String userName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


}
