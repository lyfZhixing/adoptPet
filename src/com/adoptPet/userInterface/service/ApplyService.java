package com.adoptPet.userInterface.service;

import java.util.List;

public interface ApplyService<T> {

	/**提交申请*/
	int saveApply(T t)throws Exception;
	
	/**判断用户是否对同一领养信息提交多次申请*/
	boolean findApplyOnce(String uName,String serialNo2 )throws Exception;
	
	/**通过申请人用户名查找申请信息*/
	List<T> findApplyByUname(String uName)throws Exception;
	
	/**通过发布信息流水号查找申请信息*/
	List<T> findApplyBySerialNo2(String serialNo2)throws Exception;
	
	/***/
	
}
