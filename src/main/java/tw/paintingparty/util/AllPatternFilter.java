package tw.paintingparty.util;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AllPatternFilter extends HttpFilter {

	public void init() throws ServletException {
		
	}

	public AllPatternFilter() {
    	
    }

	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("=============Passed AllPatternFilter!!===============");

//		HttpServletRequest req = (HttpServletRequest)request;  
//		request.getSession().setAttribute("login", 0); //DEMO用，模擬1號會員登入中，沒登入就註解
		
		//驗證cookie
//		String username=null;
//		String password=null;
		
//		if(cookies!=null){
//			
//			for(int i=0;i<cookies.length;i++){
//				if("username".equals(cookies[i].getName())){
//					username=cookies[i].getValue();
//				}
//				else if("password".equals(cookies[i].getName())){
//					password=cookies[i].getValue();
//				}
//				
//			};
//		}
		//request.getSession().removeAttribute("login");
		//先驗證 session是否登入
		request.getSession().setAttribute("login", "0");
		String username_session=(String) request.getSession().getAttribute("username");
		String password_session=(String) request.getSession().getAttribute("password");
		if(username_session!=null && password_session!=null){
//			response.sendRedirect("request.getContextPath()/PaintPartyMvcProject/test2");
//			response.sendRedirect("request.getContextPath()");
//			return ;
			request.getSession().setAttribute("login", "1");
			
			
		}
		
		//2.session 沒有則驗證cookie, 如果cookie有member_id 則登入中
		Cookie[] cookies=request.getCookies();
		if(cookies!=null){
			
			for(int i=0;i<cookies.length;i++) {
				if("session_member_id".equals(cookies[i].getName())) {
					request.getSession().setAttribute("login", "1");
				}
				
			}
		}
		//提供member_id
		
		Integer member_id=null;
		try {
			if(request.getSession().getAttribute("session_member_id")!=null){
				member_id=Integer.parseInt(request.getSession().getAttribute("session_member_id").toString());
//				member_id=(Integer) request.getSession().getAttribute("member_id");
				request.getSession().setAttribute("session_member_id", member_id);
			}else { //如果session沒有member_id, 則從cookies讀member_id
//				Cookie[] cookies=request.getCookies();
				if(cookies!=null) {
					
					for(int i=0;i<cookies.length;i++) {
						if("session_member_id".equals(cookies[i].getName())) {
							member_id=Integer.parseInt(cookies[i].getValue());
							request.getSession().setAttribute("session_member_id", member_id);
						}
						
					}
				}else { //若session和cookie 皆無,則null
					member_id=null;
					request.getSession().setAttribute("session_member_id", member_id);
					
				}
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("沒有session,所以要讀cookie");
		}
		
		
		
		chain.doFilter(request, response);
		return ;
	
	}
	
	public void destroy() {
		
	}



}
