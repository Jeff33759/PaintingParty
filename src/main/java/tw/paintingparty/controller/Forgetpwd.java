package tw.paintingparty.controller;

import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import tw.paintingparty.model.Member;
import tw.paintingparty.service.MemberService;
import tw.paintingparty.util.JavaMail;
import tw.paintingparty.util.Md5;

@Controller
public class Forgetpwd {
	@Autowired
	private MemberService mService;
	
	@RequestMapping(path = "/forgetpwd", method = RequestMethod.GET)
	public String test(Model m) {
		//測試連資料庫
//		Member mem1 = tService.test();
//		m.addAttribute("userid", mem1.getMember_id());
//		m.addAttribute("username", mem1.getMember_name());
		
		return "/forgetpwd";
	}
	
	
	
//	@PostMapping("/forgetpwd.controller")
	@RequestMapping(path="/forgetpwd.controller",method = RequestMethod.GET)
	public Map<String,String> forgetPass(HttpServletRequest requset,Model m,@RequestParam ("emailgetpwd") String emailgetpwd) {
		Map<String,String> map=new HashMap<String, String>();
		String msg="";
		//從資料庫讀取email是否存在
		Member mem = mService.selectEmail(emailgetpwd);
		String email = mem.getEmail();

		
		if(email==null) {//無此會員
			msg="無此會員";
			map.put("msg", msg);
			return map;
		}
		String secretKey = UUID.randomUUID().toString();
		Timestamp outDate = new Timestamp(System.currentTimeMillis()+30*60*1000); //設定30分鐘後過期
//		String outDateString = new Timestamp(System.currentTimeMillis()+30*60*1000).toString(); //設定30分鐘後過期
		long date = outDate.getTime()/1000*1000; //忽略毫秒數
		//將Validatacode存至sql
//		mem.setValidatacode(secretKey);
//		mem.setOutdate(outDateString);
		mService.updateValidatacodeAndOutdate(secretKey, outDate, email);
//		String key=email.getMember_id()+"$"+date+"$"+secretKey;
		String key=mem.getMember_id()+"$"+date+"$"+secretKey;
		
//		String digitalSignature = MD5.MD5Encode(key); //数字签名
		String digitalSignature =null;
		try {
			digitalSignature = new Md5().md5String(key); //数字签名
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		JavaMail javaMail = new JavaMail(); //new一個javamail

		String subject = "匯聚-密碼重設"; // 標題
		String resetPassHref="http://localhost:1337/PaintPartyMvcProject/resetpassword?sid="+digitalSignature+"&memberId="+mem.getMember_id();
		String txt = "點擊連結,重設密碼<br/><a href="+resetPassHref +" target='_BLANK'>點我重新設置密碼</a>" +
                "<br/>請於30分鐘內重設密碼'"+"<br/>若連結無效請手動點擊下當網址<br/>"+
                "<span style='color:#F00; font-weight:bold'>"+resetPassHref+"<span>";; // 內容
		
		javaMail.SendMail(txt,subject);
		msg="已成功發送密碼至您的信箱，請在30分鐘內重設";
		map.put("msg", msg);
		return map;
		
		
		
	}
	@RequestMapping("/resetpassword")
	public String checkResultLink(@RequestParam("sid") String sid,@RequestParam("memberId") int memberId,Model m,HttpServletRequest requset) throws NoSuchAlgorithmException {
		String msg="";
        if(sid.equals("")){
            msg="sid驗證錯誤";
            m.addAttribute("msg",msg);
            return "findPwdError";
        }
        Member mem = mService.SelectMemberById(memberId);
        Date outDate = mem.getOutdate();
        if(outDate.getTime() <= System.currentTimeMillis()){         //表示已經過期
            msg = "已過期,請重新申請密碼";
            m.addAttribute("msg",msg) ;
            return "findPwdError";
        }
        
        String key = memberId+"$"+outDate.getTime()/1000*1000+"$"+mem.getValidatacode();          //數字簽名
        String digitalSignature = new Md5().md5String(key); //確認和剛剛的encode key 是否相同
//        System.out.println(key+"\t"+digitalSignature);
        if(!digitalSignature.equals(sid)) {
            msg = "與sid不符";
            m.addAttribute("msg",msg);
            return "findPwdError";
        }
        
        m.addAttribute("memId",mem.getMember_id());
//        request.getSession().setAttribute("session_member_id", member_id);
//        requset.getSession().setAttribute("memId", mem.getMember_id());

        return "resetpage";
		
		
	}
	@RequestMapping("/resetpwd")
	public String resetpwd(HttpServletRequest request, HttpServletResponse response,Model m) {
		String password = request.getParameter("password");
		int memId =  Integer.parseInt(request.getParameter("idfromEmail"));
		
//		int memId = Integer.parseInt( request.getSession().getAttribute("idfromEmail").toString());
//		int memId = Integer.parseInt(m.getAttribute("memId").toString());
		mService.updatepwdbyId(memId, password);
		return "ok";
	}
	
}
