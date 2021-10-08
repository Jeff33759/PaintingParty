package tw.paintingparty.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class BackendInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("=============Passed BackendInterceptor!!===============");
		Object session_member_id = request.getSession().getAttribute("session_member_id");
		
		if(session_member_id==null) {
			
			System.out.println("登入失敗，轉到登入頁面。");

			response.sendRedirect( request.getContextPath() + "/login.message");
			
			return false;
		}
			
			System.out.println("登入成功，進到後台。");
			return true;	
		
	}

}
