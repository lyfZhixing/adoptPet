package com.adoptPet.userInterface.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.UserService;



@Controller
public class IndexController {

	@Autowired
	private UserService<User> userService;
	
	@RequestMapping("/index")
	public String toIndex(){
		return "register";
	}
	
	
	@RequestMapping("/register")
	public String register(User user){
		String view = "fail";
		try {
			int flag = userService.saveUser(user);
			if(flag >= 1){
				view = "success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return view;
	}
	
}
