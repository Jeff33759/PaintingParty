package tw.paintingparty.controller;

import java.io.IOException;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController extends HttpServlet {
	@RequestMapping("/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		if(request.getSession().getAttribute("login")!=null) {
			request.getSession().invalidate();
		}
		
		Cookie cookie1=new Cookie("username",null);
		Cookie cookie2=new Cookie("password",null);
		Cookie cookie3=new Cookie("session_member_id",null);
		//設定關聯路徑,要跟建立的path一樣才能清除
		cookie1.setPath(request.getContextPath());
		cookie2.setPath(request.getContextPath());
		cookie3.setPath(request.getContextPath());
		//設定cookie的存活期限
		cookie1.setMaxAge(0);
		cookie2.setMaxAge(0);
		cookie3.setMaxAge(0);
		//把cookie資訊給瀏覽器
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		response.addCookie(cookie3);
//		String contextPath = request.getContextPath();
//		System.out.println("有"+contextPath);
		response.sendRedirect(request.getContextPath()+"/login");
	}
}
