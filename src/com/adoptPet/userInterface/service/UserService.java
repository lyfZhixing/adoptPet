package com.adoptPet.userInterface.service;

import com.adoptPet.userInterface.entity.User;

/**
 * 用户登录，注册，修改密码，上传头像等基本操作
 * @author lyf
 * @param <T>
 *
 */
public interface UserService {
	
	/**添加用户**/
	int saveUser(User user)throws Exception;

	/**验证用户名是否被注册**/
	User findUserByName(String name)throws Exception;
	
	/**验证用户手机号是否被注册**/
	User findUserByPhone(String phone)throws Exception;

	/**用来登录**/
	User findUserByPhonePassword(String phone,String password)throws Exception;

	/**检测用户名是否存在**/
	User getByUserName(String userName)throws Exception;


}
