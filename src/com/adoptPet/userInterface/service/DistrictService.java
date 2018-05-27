package com.adoptPet.userInterface.service;

import java.util.List;

import com.adoptPet.userInterface.entity.District;

public interface DistrictService {

	/**查询省、市、县*/
	List<District> querySSX() throws Exception;
	
	/**省*/
	List<District> queryPro()throws Exception;
	
	/**根据省查询市*/
	List<District> queryCity(String code) throws Exception;
	
	/**根据市查询县*/
	List<District> queryCounty(String code) throws Exception;

	
}
