package com.adoptPet.userInterface.service;

import com.adoptPet.userInterface.entity.User;

/**
 * 用户登录，注册，修改密码，上传头像等基本操作
 * @author lyf
 * @param <T>
 *
 */
public interface UserService<T> {
	
	/**添加用户**/
	int saveUser(User user)throws Exception;

	/**验证用户名是否被注册**/
	T findUserByName(String name)throws Exception;
	
	/**验证用户手机号是否被注册**/
	T findUserByPhone(String phone)throws Exception;

	/**用来登录**/
	int findUserByPhonePassword(String phone,String password)throws Exception;

	/**检测用户名是否存在**/
	T getByUserName(String userName)throws Exception;


}
