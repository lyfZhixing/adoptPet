package com.adoptPet.userInterface.mapper;

import java.util.List;

import com.adoptPet.userInterface.entity.Adoptinfo;
import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.ApplyInfoEx;

public interface AdoptinfoMapperEx {

	/**发布信息*/
	int insert(Adoptinfo adoptInfo);

	/**查询我的发布*/
	List<AdoptinfoEx> queryByUname(String uname);
	
	/**查询发布下的申请*/
	List<ApplyInfoEx> querypubApplys(String serialno);

	/**查询最新发布*/
	List<AdoptinfoEx> queryNewPublish();

	/**分类首页展示*/
	List<AdoptinfoEx> queryTypePublish(String type);

	/**计数*/
	List<ApplyInfoEx> queryCount(String serialno);

	/**查看信息详情*/
	AdoptinfoEx queryAdoptBySerialno(String serialno);

	
}
