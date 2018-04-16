package com.adoptPet.userInterface.controller;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.UserService;
import com.alibaba.fastjson.JSON;




@Controller
@RequestMapping("/index")
public class IndexController {

	@Autowired
	private UserService<User> userService;
	
	@RequestMapping("/index")
	public String toIndex(){
		return "index";
	}
	
	
	@RequestMapping("/register")
	public void register(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		String phoneno = (String)request.getParameter("phoneno");
		String upwd = (String)request.getParameter("upwd");
		String uname = (String)request.getParameter("uname");
		User user = new User();
		user.setPhoneno(phoneno);
		user.setUname(uname);
		user.setUpwd(upwd);
		user.setUrole(1);
		user.setRegistertime(new Date());
		try {
			PrintWriter out = response.getWriter();
			String json = null;
			int flag = userService.saveUser(user);
			if(flag >= 1){
				json = JSON.toJSONString("success");
			}else{
				json = JSON.toJSONString("false");
			}
			out.println(json);
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("/login")
	public void login(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		String phoneno = (String)request.getParameter("phoneno");
		String upwd = (String)request.getParameter("upwd");
		try {
			PrintWriter out = response.getWriter();
			String json = null;
			int count = userService.findUserByPhonePassword(phoneno, upwd);
			if(count > 0){
				json = JSON.toJSONString("true");
			}else{
				json = JSON.toJSONString("false");
			}
			out.println(json);
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
