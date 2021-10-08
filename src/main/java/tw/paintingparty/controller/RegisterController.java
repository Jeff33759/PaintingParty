package tw.paintingparty.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.paintingparty.util.Jdbc;
@Controller
public class RegisterController {
	@RequestMapping(path="register")
	public String returnRegister() {
		return "/register";
	}
	
	//當register.jsp 提交表單
	@RequestMapping(path="processRegister_memberAccount")
	public Map processRegister(HttpServletRequest request, HttpServletResponse response,Model model) throws SQLException {
//		String member_account=model.getAttribute("member_account").toString();
		//從前端jsp拿取data
		String member_account=request.getParameter("member_account"); 
		String password=request.getParameter("password"); 
		String member_name=request.getParameter("member_name"); 
		String phone=request.getParameter("phone"); 
		String member_status=request.getParameter("member_status"); 
		String email=request.getParameter("email"); 
	
		
		
		///new一個map,存放要傳回ajax的json data
		Map<String, Object> result=new HashMap<String, Object>();
		
		Connection con = new Jdbc().Jdbc_connection();
		String sql="select member_account from member where member_account=?";
		PreparedStatement prepareStatement = con.prepareStatement(sql);
		prepareStatement.setString(1, member_account);
//		prepareStatement.setString(2, email);
		ResultSet rs = prepareStatement.executeQuery();
		

		if(!rs.next()) { //帳號無人註冊,下一步是寫入sql
			result.put("result", true); 
						
			//進行寫入sql
			String sql_insert="INSERT INTO member(member_account, passwords, member_name,email,mobile,member_status, register_date)\r\n"
					+ "VALUES (?, ?, ?,?,?,?, GETDATE() );";
			PreparedStatement prepareStatementInsert = con.prepareStatement(sql_insert);
			prepareStatementInsert.setString(1, member_account);
			prepareStatementInsert.setString(2, password);
			prepareStatementInsert.setString(3, member_name);
			prepareStatementInsert.setString(4, email);
			prepareStatementInsert.setString(5, phone);
			prepareStatementInsert.setString(6, member_status);
			prepareStatementInsert.executeUpdate();
			
			rs.close();
			con.close();
			return result; //回傳map result, 讓前端跳轉頁面
			
		}
		else { //帳號已註冊
			result.put("result", false);
			
			rs.close();
			con.close();
			return result;
			
		}
	}
}
