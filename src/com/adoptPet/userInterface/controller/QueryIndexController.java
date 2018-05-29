package com.adoptPet.userInterface.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.District;
import com.adoptPet.userInterface.service.AdoptService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/queryIndex")
public class QueryIndexController {
	
	@Autowired private AdoptService adoptService;
	@Autowired private HttpServletRequest request ;
	
	/**跳转showMore页面*/
	@RequestMapping("/showMore")
	public String toShowMore(String citycode,String city,String type,Integer pagenum,Integer pagesize){
		String view = "redirect:/index/index.action";
		if(citycode == null){
			citycode = "4101%";
		}else{
			citycode += "%";
		}
		try {
			PageInfo<AdoptinfoEx> pageinfo = adoptService.selectMore(city,type,pagenum,pagesize);
			List<District> citys = adoptService.selectCitys(citycode);
			request.setAttribute("pageinfo", pageinfo);
			request.setAttribute("citys", citys);
			request.setAttribute("ncity", city);
			view = "showMore";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return view;
	}
	
}
