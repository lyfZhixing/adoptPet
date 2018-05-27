package com.adoptPet.userInterface.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.entity.UserEx;
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

	@Override
	public User findUserByUnamePassword(String uname, String upwd) throws Exception {
		User user = new User();
		user.setUname(uname);
		user.setUpwd(upwd);
		return userMapperEx.loginByUnamePassword(user);
	}

	@Override
	public int updateUname(String new_uname,String old_uname) throws Exception {
		
		UserEx userex = new UserEx();
		userex.setNew_uname(new_uname);
		userex.setUname(old_uname);
		return userMapperEx.updateUname(userex);
	}

	@Override
	public int updateAddress(String uname, String address) throws Exception {
		UserEx user = new UserEx();
		user.setUname(uname);
		user.setUaddress(address);
		return userMapperEx.updateAddress(user);
	}

	@Override
	public int updateEditTel(String uname, String tel) throws Exception {
		UserEx user = new UserEx();
		user.setUname(uname);
		user.setPhoneno(tel);
		return userMapperEx.updateEditTel(user);
	}

	@Override
	public int updatePwd(String uname, String pwd) throws Exception {
		UserEx user = new UserEx();
		user.setUname(uname);
		user.setUpwd(pwd);
		return userMapperEx.updatePwd(user);
	}

	@Override
	public String queryAddress(String uname) throws Exception {
		UserEx user = new UserEx();
		user.setUname(uname);
		return userMapperEx.queryAddress(user);
	}


}
