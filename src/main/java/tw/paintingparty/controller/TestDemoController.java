//package tw.paintingparty.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import tw.paintingparty.model.Member;
//import tw.paintingparty.service.TestService;
//
//
//
//@Controller
//public class TestDemoController {
//	
//	@Autowired
//	private TestService tService;
//	
//	@RequestMapping(path = "/test", method = RequestMethod.GET)
//	public String test(Model m) {
//		//測試連資料庫
//		Member mem1 = tService.test();
//		m.addAttribute("userid", mem1.getMember_id());
//		m.addAttribute("username", mem1.getMember_name());
//		
//		return "/testDemo/testDemo";
//	}
//	
//
////	@RequestMapping(path = "/test2", method = RequestMethod.GET)
////	//測試前台的靜態資源引入
////	public String test2(Model m) {
////		return "MemberPage";
////	}
//
////	@RequestMapping(path = "/backend/test3", method = RequestMethod.GET)
////	//測試後台的靜態資源引入
////	public String test3(Model m) {
////		return "CaseManage";
////	}
//	
//	
//
//}
package tw.paintingparty.controller;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tw.paintingparty.model.Member;
import tw.paintingparty.service.TestService;



@Controller
public class TestDemoController {
	
	@Autowired
	private TestService tService;
	
	@RequestMapping(path = "/test", method = RequestMethod.GET)
	public String test(Model m) {
		//測試連資料庫
		Member mem1 = tService.test();
		m.addAttribute("userid", mem1.getMember_id());
		m.addAttribute("username", mem1.getMember_name());
		
		return "/testDemo/testDemo";
	}
	
	
	@RequestMapping(path = "/test2", method = RequestMethod.GET)
	//測試前台的靜態資源引入
	public String test2(Model m) {
		return "MemberPage";
	}

	@RequestMapping(path = "/backend/test3", method = RequestMethod.GET)
	//測試後台的靜態資源引入
	public String test3(Model m) {
		return "CaseManage";
	}
	

}
