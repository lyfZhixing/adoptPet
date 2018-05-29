package com.adoptPet.userInterface.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adoptPet.userInterface.entity.Adoptinfo;
import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.ApplyInfoEx;
import com.adoptPet.userInterface.entity.QueryMyApply;
import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.AdoptService;
import com.adoptPet.userInterface.service.UserService;
import com.adoptPet.util.AddressUtil;
import com.alibaba.fastjson.JSON;




@Controller
@RequestMapping("/index")
public class IndexController {

	@Autowired private AdoptService adoptService;
	@Autowired private UserService userService;
	@Autowired private HttpServletRequest request ;
	
	/**首页*/
	@RequestMapping("/index")
	public String toIndex(String city){
		if(city == null || city.equals("")){
			city = "&&郑州&&";
		}
		try {
			//最新发布
			List<AdoptinfoEx> newPublishs = adoptService.queryNewPublish(city);
			List<AdoptinfoEx> dogs = adoptService.queryTypePublish("狗狗",city);
			List<AdoptinfoEx> cats = adoptService.queryTypePublish("猫咪",city);
			List<AdoptinfoEx> others = adoptService.queryTypePublish("其他",city);
			
			request.setAttribute("newPublishs", newPublishs);
			request.setAttribute("dogs", dogs);
			request.setAttribute("cats", cats);
			request.setAttribute("others", others);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index";
	}
	
	/**个人中心*/
	@RequestMapping("/personal")
	public String toPersonal(){
		
		String view = "index";
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null){
			view = "redirect:index.action";
		}else{
			String uname = user.getUname();
			try {
				List<AdoptinfoEx> myPublishs = adoptService.queryMyPublish(uname);
				List<ApplyInfoEx> pubApplys = adoptService.querypubApplys(myPublishs);
				request.setAttribute("myPublishs", myPublishs);
				request.setAttribute("pubApplys", pubApplys);
				List<QueryMyApply> myApplys = adoptService.queryMyApplys(uname);
				request.setAttribute("myApplys", myApplys);
				view = "personal/personal";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return view;
	}
	
	/**资料设置*/
	@RequestMapping("/settingDetial")
	public String toSettingDetial(){
		return "personal/settingDetial";
	}
	
	/**发布信息*/
	@RequestMapping("/publish")
	public String toPublish(){
		return "personal/publish";
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
	public String login(String uname ,String upwd ){
		String json = "false";
		try {
			User user = userService.findUserByUnamePassword(uname, upwd);
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
