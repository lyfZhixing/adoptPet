package com.adoptPet.userInterface.mapper;

import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.entity.UserEx;

public interface UserMapperEx {

	/**登录判断*/
	User loginByPhonePassword(User user);
	User loginByUnamePassword(User user)throws Exception;
	
	/**注册用户*/
	int insert(User user);
	
	/**修改用户名*/
	int updateUname(UserEx userex);
	
	/**修改用户地址*/
	int updateAddress(User user);
	
	/**修改电话*/
	int updateEditTel(UserEx user);
	
	/**修改密码*/
	int updatePwd(UserEx user);
	
	/**查找地址*/
	String queryAddress(UserEx user);
}
