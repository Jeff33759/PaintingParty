package tw.paintingparty.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.paintingparty.model.CaseApply;
import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Example;
import tw.paintingparty.model.Member;
import tw.paintingparty.service.CasePageDisplayService;
import tw.paintingparty.service.MemberService;
import tw.paintingparty.util.CaseByTags;

@Controller
public class CasePageDisplayController {
	
	@Autowired
	private CasePageDisplayService capdService;
	
	@Autowired
	 private MemberService mService;
	
//	@RequestMapping(path="/casepagemainpage.controller",method = RequestMethod.GET)
//	public String processDisplayCasePage(Model m) {
//		
//		Cases c1 = capdService.getCases(2);
//		m.addAttribute("lowBudget",c1.getPrice_min());
//		m.addAttribute("highBudget",c1.getPrice_max());
//		m.addAttribute("caseTitle",c1.getCase_title());
//		m.addAttribute("demand",c1.getDemand());
//		
//		
//		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
//		
//		String datestr = sdf.format(c1.getUpload_date());
//		
//		m.addAttribute("uploadDate",datestr);
//		
//		return "CasePage";
//	}
	
	@RequestMapping(path="/casepagemainpage.controller/{caseid}",method = RequestMethod.GET)
	public String  processQueryCasesById(@PathVariable("caseid")int caseid,Model m,HttpSession session) throws IOException {
		
		String attr = (String) session.getAttribute("session_member_status");
		m.addAttribute("attr",attr);
		session.setAttribute("caseid", caseid);
		Cases c1 = capdService.getCasesById(caseid);
		m.addAttribute("lowBudget",c1.getPrice_min());
		m.addAttribute("highBudget",c1.getPrice_max());
		m.addAttribute("caseTitle",c1.getCase_title());
		m.addAttribute("demand",c1.getDemand());
		
		//由caseID 取得此member的資料
		Member m1 = capdService.getMemberByCaseId(caseid);
		int memId =(int)m1.getMember_id();
		m.addAttribute("caseOwner", m1.getMember_name());//m1[0]
		m.addAttribute("memId",memId);
		
		//抓取tag數字  透過CaseByTags 轉換成中文回傳並印在螢幕上
		String[] tags = c1.getCase_tag().split(",");
		CaseByTags cTag = new CaseByTags();
		
		String tagid1 = cTag.ToGetTheTagName(tags[1]);
		String tagid0 = cTag.ToGetTheTagName(tags[0]);
		m.addAttribute("style",tagid1);
		m.addAttribute("type",tagid0);
		
		
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		
		String datestr = sdf.format(c1.getUpload_date());
		
		m.addAttribute("uploadDate",datestr);
		
		
		
		
		
		//判斷Session的member_id  以登入之會員的ID
		Member mem1 = mService.showLoginUsername();
		m.addAttribute("member_name", mem1.getMember_name());
		m.addAttribute("member_id",mem1.getMember_id());
		
		//判斷有對這之Case做Apply的應徵表
		if(mem1.getMember_id()!=null) {
			CaseApply ca1 = capdService.getCaseApplyByCaseId(caseid,mem1.getMember_id());
			if(ca1!=null) {
				m.addAttribute("whoApply",mem1.getMember_id());
			}
		}
		
		
		
		return "CasePage";
		
	}
	
	@RequestMapping(path="/casepagedisplaymemId", method = RequestMethod.GET)
	public void processResponseImg(HttpSession session, HttpServletResponse response) throws IOException {
		int caseid = (int) (session.getAttribute("caseid"));
	
		
//		String picPath = m1.getProfile_pic_path();
//		String pic = m1.getProfile_pic();
//		String imagePath = picPath+"\\"+pic;
		//由這個路徑下去抓取圖片
//		InputStream in = new FileInputStream(new File(imagePath));
//		IOUtils.copy(in, response.getOutputStream());
		
		Member m1 = capdService.getMemberByCaseId(caseid);
		String profilePicPath=m1.getProfile_pic_path();
		String profilePic=m1.getProfile_pic();		
		String imagePath=profilePicPath+"\\"+profilePic;
		
		InputStream in = new FileInputStream(new File(imagePath));
		IOUtils.copy(in, response.getOutputStream());
	}
	
	@RequestMapping(path = "/casepagedisplayexImg",method = RequestMethod.GET)
	
	public void processResponseExImg(HttpSession session, HttpServletResponse response) throws IOException {
		int caseid = (int) (session.getAttribute("caseid"));
		Example ex = capdService.getExampleByCaseId(caseid);
		
		if(ex!=null) {
			String exPath = ex.getExample_path();
			String exPic = ex.getExample_name();
			String exImgPath = exPath + "\\" + exPic;
			
			InputStream in = new FileInputStream(new File(exImgPath));
			IOUtils.copy(in, response.getOutputStream());
		
		}else {
			InputStream in = new FileInputStream(new File("C:\\PaintingImg\\Example\\noimage.jpg"));
			IOUtils.copy(in, response.getOutputStream());
		}
		
		
	}
	
}
