package com.adoptPet.userInterface.mapper;

import com.adoptPet.userInterface.entity.ApplyInfoEx;

public interface ApplyinfoMapperEx {

	/**新增申请*/
	int insert(ApplyInfoEx apply)throws Exception;

	/**查询是否重复申请*/
	ApplyInfoEx queryApplyByserialno2Uname(ApplyInfoEx apply)throws Exception;
}
