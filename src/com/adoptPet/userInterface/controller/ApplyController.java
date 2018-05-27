package com.adoptPet.userInterface.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.ApplyInfoEx;
import com.adoptPet.userInterface.entity.User;
import com.adoptPet.userInterface.service.AdoptService;

@Controller
@RequestMapping("/apply")
public class ApplyController {

	@Autowired private AdoptService adoptService;
	@Autowired private HttpServletRequest request ;
	
	/**查看答案*/
	@RequestMapping("/toAnswer")
	public String toAnswer(String serialno,String serialno2 ,String answer1,String answer2,String answer3){
		
		String view = "redirect:/index/index.action";
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null){
			view = "redirect:/index/index.action";
		}else{
			
			ApplyInfoEx answers = new ApplyInfoEx();
			answers.setAnswer1(answer1);
			answers.setAnswer2(answer2);
			answers.setAnswer3(answer3);
			answers.setSerialno(serialno);
			answers.setSerialno2(serialno2);
			
			request.setAttribute("answers", answers);
			
			view = "personal/myAnswer";
			/*String pub_uname = user.getUname();
			try {
				List<AdoptinfoEx> myPublishs = adoptService.queryMyPublish(uname);
				List<ApplyInfoEx> pubApplys = adoptService.querypubApplys(myPublishs);
				request.setAttribute("myPublishs", myPublishs);
				request.setAttribute("pubApplys", pubApplys);
				view = "personal/myPublish";
			} catch (Exception e) {
				e.printStackTrace();
			}*/
		}
		
		return view;
	}
	
}
