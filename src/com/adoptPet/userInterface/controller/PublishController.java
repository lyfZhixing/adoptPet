package com.adoptPet.userInterface.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.ApplyInfoEx;
import com.adoptPet.userInterface.entity.QueryMyApply;
import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.AdoptService;
import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/publish")
public class PublishController {
	
	@Autowired private AdoptService adoptService;
	@Autowired private HttpServletRequest request ;
	
	/**发布信息*/
	@RequestMapping("/publish")
	@ResponseBody
	public String publish(String uname,String type,String title,String detial,String address,String question1,String question2,String question3){
		String json = "false";
		try {
			int result = adoptService.insertAdopt(uname,type, title, detial, address, question1, question2, question3);
			if(result > 0){
				json = JSON.toJSONString(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**查看更多我的发布*/
	@RequestMapping("/toMyPublish")
	public String toMyPublish(){
		
		String view = "redirect:/index/index.action";
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null){
			view = "redirect:/index/index.action";
		}else{
			String uname = user.getUname();
			try {
				List<AdoptinfoEx> myPublishs = adoptService.queryMyPublish(uname);
				List<ApplyInfoEx> pubApplys = adoptService.querypubApplys(myPublishs);
				request.setAttribute("myPublishs", myPublishs);
				request.setAttribute("pubApplys", pubApplys);
				view = "personal/myPublish";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return view;
	}
	

	/**查看更多我的申请*/
	@RequestMapping("/toMyApply")
	public String toMyApply(){
		
		String view = "redirect:/index/index.action";
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null){
			view = "redirect:/index/index.action";
		}else{
			String uname = user.getUname();
			try {
				
				List<QueryMyApply> myApplys = adoptService.queryMyApplys(uname);
				request.setAttribute("myApplys", myApplys);
				view = "personal/myApply";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return view;
	}
	
}
