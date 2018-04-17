package com.adoptPet.userInterface.mapper;

import com.adoptPet.userInterface.entity.User;

public interface UserMapperEx {

	/**登录判断*/
	User loginByPhonePassword(User user);
	/**注册用户*/
	int insert(User user);
}
