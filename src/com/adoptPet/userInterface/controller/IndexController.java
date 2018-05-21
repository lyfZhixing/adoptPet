package com.adoptPet.userInterface.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.UserService;
import com.adoptPet.util.AddressUtil;
import com.alibaba.fastjson.JSON;




@Controller
@RequestMapping("/index")
public class IndexController {

	
	@Autowired private UserService userService;
	@Autowired private HttpServletRequest request ;
	
	/**首页*/
	@RequestMapping("/index")
	public String toIndex(){
		return "index";
	}
	
	/**个人中心*/
	@RequestMapping("/personal")
	public String toPersonal(){
		return "personal";
	}
	
	/**资料设置*/
	@RequestMapping("/settingDetial")
	public String toSettingDetial(){
		return "settingDetial";
	}
	
	/**发布信息*/
	@RequestMapping("/publish")
	public String toPublish(){
		return "publish";
	}
	
	/**获取地址*/
	@RequestMapping("/getAddress")
	@ResponseBody
	public String getAddress(HttpServletRequest request){
		//获取ip
		String ip = AddressUtil.getIpAddr(request);
		String address = "郑州";
		try {
			address = AddressUtil.getAddressByIP(ip);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return address;
	}
	
	
	/**注册*/
	@RequestMapping("/register")
	@ResponseBody
	public String register(User user){
		user.setUrole(1);//权限设值为1，普通用户
		user.setRegistertime(new Date());
		String json = "false";
		try {
			int flag = userService.saveUser(user);
			if(flag >= 1){
				json = JSON.toJSONString("success");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**登录*/
	@RequestMapping(value={"/login"},method={RequestMethod.POST})
	@ResponseBody
	public String login(String phoneno ,String upwd ){
		String json = "false";
		try {
			User user = userService.findUserByPhonePassword(phoneno, upwd);
			if(user != null){
				json = JSON.toJSONString("true");
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				session.setMaxInactiveInterval(60*20);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**退出登录*/
	@RequestMapping(value={"/logOff"},method={RequestMethod.POST})
	@ResponseBody
	public String logOff(){
		HttpSession session = request.getSession();
		session.invalidate();
		return "ojbk";
	}
}
