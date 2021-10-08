package tw.paintingparty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tw.paintingparty.model.Member;
import tw.paintingparty.service.MemberService;



@Controller
public class HomeController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value={"/","/Index"} ,method = RequestMethod.GET)
	public String home(Model m) {
		
		Member mem1 = mService.showLoginUsername();
		m.addAttribute("member_name", mem1.getMember_name());
		
		return "Home";
	}
	
}
