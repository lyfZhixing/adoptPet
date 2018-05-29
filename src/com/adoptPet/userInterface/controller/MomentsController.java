package com.adoptPet.userInterface.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MomentsController {

	@RequestMapping("/shareMoment")
	@ResponseBody
	public String shareMoment(String moment,String uname,String img1,String img2,String img3,String img4){
		String json = "";
		
		return json;
		
	}
}
