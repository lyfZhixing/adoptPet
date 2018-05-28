package com.adoptPet.userInterface.service;

import java.util.List;

import com.adoptPet.userInterface.entity.Adoptinfo;
import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.ApplyInfoEx;
import com.adoptPet.userInterface.entity.QueryMyApply;


/**
 * 领养业务
 * @author lyf
 *
 */
public interface AdoptService {

	/**发布（新增）领养*/
	int saveAdopt(Adoptinfo t)throws Exception;
	
	/**编辑（更新）领养*/
	int updateAdopt(Adoptinfo t)throws Exception;
	
	/**根据状态（发布中、已下架）查询领养信息*/
	List<Adoptinfo> findAdoptByStatus(int status)throws Exception;
	
	/**根据用户查找领养信息*/
	List<Adoptinfo> findAdoptByUname(String uName)throws Exception;
	
	/**根据地址查找领养信息*/
	//List<T> findAdoptByAddress(String...address)throws Exception;
	
	/**根据类型或地址查找领养信息*/
	List<Adoptinfo> findAdoptByTypeOrAddress(Integer type , String address)throws Exception;

	/**发布新领养
	 * @param adoptInfo */
	int insertAdopt(String uname,String type,String title,String detial,String address,String question1,String question2,String question3)throws Exception;

	/**查询我的发布*/
	List<AdoptinfoEx> queryMyPublish(String uname)throws Exception;

	/**查询发布下的申请*/
	List<ApplyInfoEx> querypubApplys(List<AdoptinfoEx> myPublishs)throws Exception;

	/**查询最新发布*/
	List<AdoptinfoEx> queryNewPublish()throws Exception;

	/**分类首页展示*/
	List<AdoptinfoEx> queryTypePublish(String type)throws Exception;

	/**查看信息详情*/
	AdoptinfoEx queryAdoptBySerialno(String serialno)throws Exception;

	/**新增申请*/
	int apply(String serialno2, String uname, String answer1, String answer2, String answer3)throws Exception;

	/**确认领养，改变两表状态*/
	int updateStatuses(String serialno, String serialno2)throws Exception;

	/**查找我的申请*/
	List<QueryMyApply> queryMyApplys(String uname)throws Exception;
	
	
	
	
}
