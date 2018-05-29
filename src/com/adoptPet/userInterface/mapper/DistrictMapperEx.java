package com.adoptPet.userInterface.mapper;

import java.util.List;

import com.adoptPet.userInterface.entity.District;

public interface DistrictMapperEx {
	/**查询省、市、县*/
	List<District> querySSX();
	
	/**查询省*/
	List<District> queryPro();
	
	/**根据省查询市*/
	List<District> queryCity(String code) throws Exception;
	
	/**根据市查询县*/
	List<District> queryCounty(String code) throws Exception;

	/**查询区县*/
	List<District> selectCitys(String city)throws Exception;
}
