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
import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.AdoptService;
import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping("/apply")
public class ApplyController {

	@Autowired private AdoptService adoptService;
	@Autowired private HttpServletRequest request ;
	
	/**确认领养人
	 * 1.领养信息状态值为3 已下架
	 * 2.申请信息状态值为1 申请通过
	 * */
	@RequestMapping("/confirmApply")
	@ResponseBody
	public String confirmApply(String serialno,String serialno2){
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		String json = "";
		if(user == null){
			json = JSON.toJSONString(false);
		}else{
			try {
				int result = adoptService.updateStatuses(serialno,serialno2);
				if(result > 0){
					json = JSON.toJSONString(true);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return json;
	}
	
}
