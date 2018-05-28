package com.adoptPet.userInterface.mapper;

import java.util.List;

import com.adoptPet.userInterface.entity.ApplyInfoEx;
import com.adoptPet.userInterface.entity.QueryMyApply;

public interface ApplyinfoMapperEx {

	/**新增申请*/
	int insert(ApplyInfoEx apply)throws Exception;

	/**查询是否重复申请*/
	ApplyInfoEx queryApplyByserialno2Uname(ApplyInfoEx apply)throws Exception;

	/**修改状态 0-1 审核中-通过*/
	int updateStatus(ApplyInfoEx apply)throws Exception;

	/**查询申请，三表联查*/
	List<QueryMyApply> queryMyApplys(String uname)throws Exception;
}
