package com.adoptPet.userInterface.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adoptPet.userInterface.entity.District;
import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.DistrictService;
import com.adoptPet.userInterface.service.UserService;
import com.adoptPet.util.AddressUtil;
import com.alibaba.fastjson.JSON;

/**
 * 个人中心
 * @author lyf
 *
 */
@Controller
@RequestMapping("/personal")
public class PersonalController {
	
	@Autowired private DistrictService districtService;
	@Autowired private UserService userService;
	@Autowired private HttpServletRequest request ;
	
	/**跳转settingDetial页面*/
	@RequestMapping("/settingDetial")
	public String toSettingDetial(){
		try {
			//List<District> districtList = districtService.querySSX();
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			String address = userService.queryAddress(user.getUname());
			String[] address_arr = address.split("&&");
			String[] n_address = new String[4];
			if(address_arr.length < 4){
				n_address[0] = address_arr[0];
				n_address[1] = address_arr[1];
				n_address[2] = address_arr[2];
				n_address[3] = "请输入详细地址";
				request.setAttribute("address_arr", n_address);
			}else{
				request.setAttribute("address_arr", address_arr);
			}
			
			//request.setAttribute("districtList", districtList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "personal/settingDetial";
	}
	
	/**跳转publish页面*/
	@RequestMapping("/publish")
	public String toPublish(){
		try {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			String address = userService.queryAddress(user.getUname());
			String[] address_arr = address.split("&&");
			String[] n_address = new String[4];
			if(address_arr.length < 4){
				n_address[0] = address_arr[0];
				n_address[1] = address_arr[1];
				n_address[2] = address_arr[2];
				n_address[3] = "请输入详细地址";
				request.setAttribute("address_arr", n_address);
			}else{
				request.setAttribute("address_arr", address_arr);
			}
			
			//request.setAttribute("districtList", districtList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "personal/publish";
	}
	
	/**获取省名*/
	@RequestMapping("/getPro")
	@ResponseBody
	public String getPro(){
		String json = "";
		
		try {
			List<District> pros = districtService.queryPro();
			json = JSON.toJSONString(pros);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**获取市名*/
	@RequestMapping("/getCity")
	@ResponseBody
	public String getCity(String code){
		String json = "";
		if(code != null && !code.equals("")){
			code = code.substring(0, 2)+"%00";
		}
		try {
			List<District> citys = districtService.queryCity(code);
			json = JSON.toJSONString(citys);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**获取县名*/
	@RequestMapping("/getCounty")
	@ResponseBody
	public String getCounty(String code){
		String json = "";
		if(code != null && !code.equals("")){
			code = code.substring(0, 4)+"%";
		}
		try {
			List<District> countys = districtService.queryCounty(code);
			json = JSON.toJSONString(countys);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**修改用户名*/
	@RequestMapping("/editUname")
	@ResponseBody
	public String editUname(String old_uname,String new_uname ){
		String json = "";
		if(new_uname != null && !new_uname.equals("")){
			try {
				int result = userService.updateUname(new_uname,old_uname);
				if(result > 0){
					HttpSession session = request.getSession();
					User user = (User) session.getAttribute("user");
					user.setUname(new_uname);
					session.setAttribute("user", user);
					json = JSON.toJSONString(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			json = JSON.toJSONString(false);
		}
		return json;
	}

	/**修改用户地址*/
	@RequestMapping("/editAddress")
	@ResponseBody
	public String editAddress(String uname,String address ){
		String json = "";
		if(uname != null && !address.equals("")){
			try {
				int result = userService.updateAddress(uname,address);
				if(result > 0){
					json = JSON.toJSONString(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			json = JSON.toJSONString(false);
		}
		return json;
	}
	
	/**修改联系方式*/
	@RequestMapping("/editTel")
	@ResponseBody
	public String editTel(String uname,String tel ){
		String json = "";
		if(uname != null && !tel.equals("")){
			try {
				int result = userService.updateEditTel(uname,tel);
				if(result > 0){
					json = JSON.toJSONString(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			json = JSON.toJSONString(false);
		}
		return json;
	}
	
	/**修改密码*/
	@RequestMapping("/editPwd")
	@ResponseBody
	public String editPwd(String uname,String pwd ){
		String json = "";
		if(uname != null && !pwd.equals("")){
			try {
				int result = userService.updatePwd(uname,pwd);
				if(result > 0){
					json = JSON.toJSONString(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			json = JSON.toJSONString(false);
		}
		return json;
	}

	
}
