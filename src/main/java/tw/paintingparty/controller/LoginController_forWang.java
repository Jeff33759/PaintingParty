package tw.paintingparty.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.paintingparty.util.Jdbc;

@Controller
public class LoginController_forWang {
	@RequestMapping(path="login2")
	public String processlogin() {
		return "/login2";
		
	}
	
	@RequestMapping(path="validateLogin", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> validateLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//從login.jsp得到帳密
		 String u=request.getParameter("username");
		 String p=request.getParameter("password");
		

		Map<String,Object> result = new HashMap<String, Object>();
		//從sql讀data
		try {
			
			Connection con =new Jdbc().Jdbc_connection();
			
			String sql="select * from member where member_account=? and passwords=?";
			PreparedStatement prepareStatement = con.prepareStatement(sql);
			prepareStatement.setString(1, u);
			prepareStatement.setString(2, p);
			ResultSet rs = prepareStatement.executeQuery();
			
			if(!rs.next()) {

				rs.close();
				prepareStatement.close();
				result.put("success", false);
				result.put("msg", "��甇斤�");
//				result.put("msg", "白癡");
//				response.setStatus(500); //自己模擬ajax 回傳到error
				con.close();
				return result;
			}
			else {
				
					//store member_id in session, so need to get member_id  from sql
					
				
					String member_id = rs.getString(1);

					String member_status = rs.getString(7);

//					String member_status = rs.getString(7);

					
					
					request.getSession().setAttribute("username", request.getParameter("username"));
					request.getSession().setAttribute("password", request.getParameter("password"));
					request.getSession().setAttribute("session_member_id", member_id);

					request.getSession().setAttribute("session_member_status", member_status);

//					request.getSession().setAttribute("session_member_status", member_status);
					

					
				
					String keep =request.getParameter("keep");

					if(keep.equals("true")) {
						//建立cookie
						Cookie cookie1=new Cookie("username",u);
						Cookie cookie2=new Cookie("password",p);
						Cookie cookie3=new Cookie("session_member_id",member_id);
						//設定關聯路徑
						cookie1.setPath(request.getContextPath());
						cookie2.setPath(request.getContextPath());
						cookie3.setPath(request.getContextPath());
						//cookie存活期限
						cookie1.setMaxAge(2*7*24*60*60);
						cookie2.setMaxAge(2*7*24*60*60);
						cookie3.setMaxAge(2*7*24*60*60);
						//response 給瀏覽器
						response.addCookie(cookie1);
						response.addCookie(cookie2);
						response.addCookie(cookie3);
						
						rs.close();
						prepareStatement.close();
						result.put("success", true);
						con.close();
						return result;
					}
//					response.sendRedirect("welcome.jsp?uname="+u+"&password="+p);
					else {
						//沒記住我
						rs.close();
						prepareStatement.close();
						result.put("success", true);
						con.close();
						return result;
					}
				}
//			}
		} catch (SQLException e) {
			e.printStackTrace();
			result.put("success", false);
			result.put("msg", "Server has Error!!!");
			return result;
		}
	}
}
