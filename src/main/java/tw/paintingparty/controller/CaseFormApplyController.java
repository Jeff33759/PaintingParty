package tw.paintingparty.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tw.paintingparty.model.CaseTag;
import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Example;
import tw.paintingparty.model.Member;
import tw.paintingparty.service.CaseFormService;
import tw.paintingparty.service.CaseTagService;
import tw.paintingparty.service.MemberService;

@Controller
public class CaseFormApplyController {
	
@Autowired
private MemberService mService;
	
	@RequestMapping(path = "/backend/CaseFormApplyPage",method = RequestMethod.GET)
	public String processCaseFromPage(HttpSession session,Model m) {
		Member mem1 = mService.showLoginUsername();
		m.addAttribute("member_name", mem1.getMember_name());
	  
		return "CaseForm";
	}
	
	@Autowired
	private CaseFormService cfService;
	
	@Autowired
	private CaseTagService ctService;
	
	
	@RequestMapping(path = "/addform.controller" , method = RequestMethod.POST)
	public void processCaseFormInsertAction(@RequestParam("inputCaseName") String inputcaseName,
			@RequestParam("inputLowBudget")Integer inputLowBudget,
			@RequestParam("inputHighBudget")Integer inputHighBudget,
			@RequestParam("commissionExplain")String commissionExplain,
			@RequestParam("categorySelect")Integer categorySelect,
			@RequestParam("styleSelect")Integer styleSelect,
			@RequestParam("examplePic") MultipartFile mf,
			HttpSession session,HttpServletResponse response,HttpServletRequest request) throws IllegalStateException, IOException  {
			
		
		int memberid = (int) session.getAttribute("session_member_id");
		

		
		System.out.println("顯示執行表單送出時的memberid: "+ memberid);	
		System.out.println("成功接收");
		System.out.println("inputCaseName：" + inputcaseName);
		System.out.println("inputLowBudget：" + inputLowBudget);
		System.out.println("inputHighBudget：" + inputHighBudget);
		
		
		
		Cases cf1 = new Cases();
		while(inputcaseName != null) {
			if(inputcaseName.equals("")) {
//				return null;
			}	
		cf1.setCase_title(inputcaseName);	
		break;
		}
		
		
		while(commissionExplain != null) {
			if(commissionExplain.equals("")) {	
//				return null;
			}	
		cf1.setDemand(commissionExplain);	
		break;
		}
		
		while(inputLowBudget != null) {
			if(inputLowBudget >= inputHighBudget) {	
//				return null;
			}	
		cf1.setPrice_min(inputLowBudget);	
		break;
		}
		
		while(inputHighBudget != null) {
			if(inputHighBudget <= inputLowBudget) {	
//				return null;
			}	
		cf1.setPrice_max(inputHighBudget);	
		break;
		}
		
		
		
		cf1.setCase_tag(categorySelect + "," + styleSelect);
		
		cf1.setMember_id(memberid);
		
		//將util.Date轉成sql.Date
		Date utilDate = new Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		cf1.setUpload_date(sqlDate);
		//由於還沒法抓到這是第幾個member根第幾個case
		

		cfService.addForm(cf1);
		
		Cases caseId = cfService.getNewCasebyCasesId();
		  Integer newId = caseId.getCase_id();
		  
		  
		  Date date = new Date();
		    DateFormat dateformat = new SimpleDateFormat("yyyyMMddHHmmss");
		    String dateString = dateformat.format(date).toString();
		    
		    String fileName = mf.getOriginalFilename();
		if(fileName!="") {
		  String dirPath="C:\\PaintingImg\\Example";
		  String updateFileName= dateString + fileName;
		  String allex = dirPath + "\\" + updateFileName;
		  File imageHeadShot = new File(allex);	
		  mf.transferTo(imageHeadShot);
		  
		  Example e1 = new Example();
		  e1.setCase_id(newId);
		  e1.setExample_name(updateFileName);
		  e1.setExample_path("C:\\PaintingImg\\Example");
		  cfService.addExamplePic(e1);
		} 


		CaseTag ct1 = new CaseTag();
		ct1.setCase_id(newId);
		ct1.setCase_tad_id(categorySelect);
		
		CaseTag ct2 = new CaseTag();
		ct2.setCase_id(newId);
		ct2.setCase_tad_id(styleSelect);
		
		ctService.insertTagWithCaseId(ct1);
		ctService.insertTagWithCaseId(ct2);
	
				
		response.sendRedirect(request.getContextPath() + "/caselistpage.controller");					
//		return "success";
	}

	
	
	@RequestMapping(method = RequestMethod.POST)
	public String getSearchResourcesProfiles(HttpServletResponse response,@PathVariable("listCases")String lstCases) {
		String searchValue1 = ((ServletRequest) response).getParameter("Select1");
		String searchValue2 = ((ServletRequest) response).getParameter("Select2");
		String sv = (searchValue1 + "," + searchValue2 );
		System.out.println(sv);
		Cases cf2 = new Cases();
		cf2.setCase_tag(sv);
		return lstCases;
	}
	
}


//測試
//String publics = (String) session.getAttribute("publics");
//String demand = (String) session.getAttribute("demand");
//String case_tag = (String) session.getAttribute("case_tag");

//String strlow = Integer.toString(inputLowBudget);
//String strhigh = Integer.toString(inputHighBudget);
//int lowlen = strlow.length();
//while(strlow!= null) {
//	if(strlow.equals("")) {
//		return null;
//	}else()
//}
//cf1.setCase_title(inputcaseName);
//cf1.setPrice_min(inputLowBudget);
//cf1.setPrice_max(inputHighBudget);

//cf1.setDemand(commissionExplain);

//String exname = e1.getExample_name();
//String expath = e1.getExample_path();

//測試
//cf1.setPublics("是");
//cf1.setDemand("長頭髮");
//cf1.setCase_tag("1,8");

//	@RequestMapping(method = RequestMethod.POST)
//	public String getPictrueNamePath(@RequestParam("examplePic") MultipartFile mf,HttpSession session,@PathVariable("addExamplePic")int addExamplePic) throws IOException {
//		
//		
//		String addExPic = (String)session.getAttribute("addExamplePic");
//		
//		Example e1 = new Example();
//		  
//		  String exname = e1.getExample_name();
//		  String expath = e1.getExample_path();
//		  String allex = exname + "\\" + expath;
//		  String fileName = mf.getOriginalFilename();
//		  String dirPath="C:\\PaintingImg\\HeadShot";
//		  String updateFileName= fileName;
//		  File imageHeadShot = new File(allex);		
//		  mf.transferTo(imageHeadShot);
//		  
//		  CaseFormService.addExamplePic(addExPic, updateFileName);
//		  CaseFormService.addExamplePic(addExPic, dirPath);
//		  
//		  File oimageHeadShot = new File(allex);
//		  oimageHeadShot.delete();
//			
//		Example ExPic = CaseFormService.add(addExPic);
		
		
		
//	public String getPictrueNamePath(HttpServletRequest request) {
		
//		HttpSession session = request.getSession();
//		
//		Example memOneId = (Example)session.getAttribute("session_member_id");
//		
//		CaseFormService.addExamplePic(memOneId);
//		return null;
		
		
	
	
	


	
	
	
	
	
	
//	測試連線網頁用
//	@RequestMapping(path = "/quotation1",method = RequestMethod.GET)
//	public String quotation1() {
//		return "Quotation";
//	}
//	
//	@RequestMapping(path = "/quotation2",method = RequestMethod.GET)
//	public String quotation2() {
//		return "Quotation2";
//	}

