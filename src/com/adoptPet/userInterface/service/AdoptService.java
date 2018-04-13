package com.adoptPet.userInterface.service;

import java.util.List;


/**
 * 领养业务
 * @author lyf
 *
 */
public interface AdoptService<T> {

	/**发布（新增）领养*/
	int saveAdopt(T t)throws Exception;
	
	/**编辑（更新）领养*/
	int updateAdopt(T t)throws Exception;
	
	/**根据状态（发布中、已下架）查询领养信息*/
	List<T> findAdoptByStatus(int status)throws Exception;
	
	/**根据用户查找领养信息*/
	List<T> findAdoptByUname(String uName)throws Exception;
	
	/**根据地址查找领养信息*/
	//List<T> findAdoptByAddress(String...address)throws Exception;
	
	/**根据类型或地址查找领养信息*/
	List<T> findAdoptByTypeOrAddress(Integer type , String address)throws Exception;
	
	
}
