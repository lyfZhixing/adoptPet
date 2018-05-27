package com.adoptPet.userInterface.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.AdoptService;
import com.adoptPet.util.AddressUtil;
import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/adopt")
public class AdoptController {

	@Autowired private AdoptService adoptService;
	@Autowired private HttpServletRequest request ;
	
	/**查看领养信息详情*/
	@RequestMapping("/info")
	public String publish(String serialno){
		String view = "redirect:/index/index.action";
		try {
			AdoptinfoEx info = adoptService.queryAdoptBySerialno(serialno);
			request.setAttribute("info", info);
			view = "adopt/adoptInfo";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return view;
	}
	
	/**申请领养*/
	//2018-5-26 提交申请前需要先登录
	@RequestMapping("/apply")
	@ResponseBody
	public String apply(String serialno2, String answer1 , String answer2 , String answer3){
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null){
			
		}
		String json = JSON.toJSONString(false);
		try {
			int result = adoptService.apply(serialno2,user.getUname(),answer1,answer2,answer3);
			if(result > 0){
				json = JSON.toJSONString(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return json;
	}
	
	
	
}
