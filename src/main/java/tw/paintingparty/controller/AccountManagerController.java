package tw.paintingparty.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.paintingparty.model.Member;
import tw.paintingparty.service.AccountManagerService;
import tw.paintingparty.service.MemberService;

@Controller
public class AccountManagerController {

	@Autowired
	private AccountManagerService accountManagerService;
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(path="/backend/accountmanager", method=RequestMethod.GET)
	public String processAccountManager(HttpServletRequest request, Model m) {
		
		HttpSession session = request.getSession();
		int memOneId=(int) session.getAttribute("session_member_id");
		System.out.println("login="+memOneId);
		
		Member mem1 = mService.showLoginUsername();		  
		m.addAttribute("member_name", mem1.getMember_name());

		Member oneMem = accountManagerService.selectOne(memOneId);
		m.addAttribute("oneMemEmail", oneMem.getEmail());
		m.addAttribute("oneMenBank_account", oneMem.getBank_account());
		m.addAttribute("oneMemPixiv", oneMem.getPixiv());
		
		return "AccountManager";
	}
	
	@RequestMapping(path="/backend/accountmanagerchange", method=RequestMethod.POST)

	public String processAccountManagerChange(HttpServletRequest request, Model m) {
		
		HttpSession session = request.getSession();
		int memOneId=(int) session.getAttribute("session_member_id");
		
		Member mem1 = mService.showLoginUsername();		  
		m.addAttribute("member_name", mem1.getMember_name());
		
		System.out.println("login="+memOneId);
		
		String oneMemEmail=(String) request.getParameter("oneMemEmail");
		String oneMenBank_account=(String) request.getParameter("oneMenBank_account");
		String oneMemPixiv=(String) request.getParameter("oneMemPixiv");
		
		System.out.println(oneMemEmail+":"+oneMenBank_account+":"+oneMemPixiv);
		
		String result = accountManagerService.updateOne(memOneId, oneMemEmail, oneMenBank_account, oneMemPixiv);		
		System.out.println(result);
		
		m.addAttribute("oneMemEmail", oneMemEmail);
		m.addAttribute("oneMenBank_account", oneMenBank_account);
		m.addAttribute("oneMemPixiv", oneMemPixiv);
		
		return "AccountManager";
	}
	
	
}
