package com.adoptPet.userInterface.controller;

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
	
	/**登录验证码*/
	@RequestMapping(value={"/loginVcode"},method={RequestMethod.POST})
	@ResponseBody
	public String loginVcode(String vcode){
		String json = "false";
		HttpSession session = request.getSession();
		String vcode_session = (String) session.getAttribute("validateCode");
		if(vcode.equals(vcode_session)){
			json = JSON.toJSONString("true");
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
