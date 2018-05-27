package com.adoptPet.userInterface.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adoptPet.userInterface.entity.District;
import com.adoptPet.userInterface.mapper.DistrictMapperEx;
import com.adoptPet.userInterface.service.DistrictService;

@Service
public class DistrictServiceImpl implements DistrictService {

	@Autowired
	private DistrictMapperEx districtMapperEx;
	@Override
	public List<District> querySSX() throws Exception {
		
		return districtMapperEx.queryPro();
	}
	@Override
	public List<District> queryCity(String code) throws Exception {
		
		return districtMapperEx.queryCity(code);
	}
	@Override
	public List<District> queryCounty(String code) throws Exception {
		// TODO Auto-generated method stub
		return districtMapperEx.queryCounty(code);
	}
	@Override
	public List<District> queryPro() throws Exception {
		// TODO Auto-generated method stub
		return districtMapperEx.queryPro();
	}

}
