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
	User findUserByUnamePassword(String uname,String password)throws Exception;

	/**检测用户名是否存在**/
	User getByUserName(String userName)throws Exception;

	/**修改用户名*/
	int updateUname(String uname ,String old_uname)throws Exception;
	
	/**修改用户地址*/
	int updateAddress(String uname, String address)throws Exception;

	/**修改电话*/
	int updateEditTel(String uname, String tel)throws Exception;

	/**修改密码*/
	int updatePwd(String uname, String pwd)throws Exception;

	/**查找地址*/
	String queryAddress(String uname)throws Exception;

}
