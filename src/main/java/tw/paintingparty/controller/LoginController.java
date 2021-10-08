package tw.paintingparty.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(path = "/login.message", method = RequestMethod.GET)
	public String loginmessage() {
		return "loginerrormessage";
	}
	
	@RequestMapping(path = "/login.successmessage", method = RequestMethod.GET)
	public String loginsuccessmessage() {
		return "loginsuccessmessage";
	}
}