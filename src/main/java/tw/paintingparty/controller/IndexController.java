package tw.paintingparty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.paintingparty.model.Member;
import tw.paintingparty.service.MemberService;

@Controller
public class IndexController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(path="/Index")
	public String goIndex(Model m) {
		
		Member mem1 = mService.showLoginUsername();
		m.addAttribute("member_name", mem1.getMember_name());
		
		return "/Index";
	}
}
