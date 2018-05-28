package com.adoptPet.userInterface.mapper;

import java.util.List;

import com.adoptPet.userInterface.entity.Adoptinfo;
import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.ApplyInfoEx;

public interface AdoptinfoMapperEx {

	/**发布信息*/
	int insert(Adoptinfo adoptInfo)throws Exception;

	/**查询我的发布*/
	List<AdoptinfoEx> queryByUname(String uname)throws Exception;
	
	/**查询发布下的申请*/
	List<ApplyInfoEx> querypubApplys(String serialno)throws Exception;

	/**查询最新发布*/
	List<AdoptinfoEx> queryNewPublish()throws Exception;

	/**分类首页展示*/
	List<AdoptinfoEx> queryTypePublish(String type)throws Exception;

	/**计数*/
	List<ApplyInfoEx> queryCount(String serialno)throws Exception;

	/**查看信息详情*/
	AdoptinfoEx queryAdoptBySerialno(String serialno)throws Exception;

	/**修改发布状态*/
	int updateStatus(ApplyInfoEx apply)throws Exception;

	
}
