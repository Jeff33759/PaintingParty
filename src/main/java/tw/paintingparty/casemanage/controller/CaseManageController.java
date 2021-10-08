package tw.paintingparty.casemanage.controller;

import java.io.BufferedReader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import tw.paintingparty.casemanage.model.CaseBackStageBean;
import tw.paintingparty.casemanage.model.CaseManageDAO;
import tw.paintingparty.casemanage.model.CaseManageService;
import tw.paintingparty.casemanage.model.EvaluationA2BBean;
import tw.paintingparty.casemanage.model.EvaluationB2ABean;
import tw.paintingparty.casemanage.model.FileContentReceiveBeanB;
import tw.paintingparty.casemanage.model.FileContentSendBeanB;
import tw.paintingparty.casemanage.model.HeadShotBean;
import tw.paintingparty.casemanage.model.MyAppliedAllCasesBean;
import tw.paintingparty.casemanage.model.MyAppliedOrdersBean;
import tw.paintingparty.casemanage.model.MyPostedAllCasesBean;
import tw.paintingparty.casemanage.model.MyPostedOrdersBean;
import tw.paintingparty.casemanage.model.PayInfoBean;
import tw.paintingparty.casemanage.model.PayInfoIdBean;
import tw.paintingparty.model.CaseApply;
import tw.paintingparty.model.Member;
import tw.paintingparty.model.Product;
import tw.paintingparty.service.MemberService;
import tw.teamUtil.Util01;



@Controller
public class CaseManageController {
	
	@Autowired
	private CaseManageService cmService;
	
	@Autowired
	private MemberService mService;
	
	
	//--------------------------------------------------------
	
	@RequestMapping(path = "/backend/casemanage", method = RequestMethod.GET)
	//拜訪案件管理的頁面
	public String CaseManage(Model m) {
		Member mem1 = mService.showLoginUsername();
		
		m.addAttribute("member_name", mem1.getMember_name());
		
		return "CaseManage2";
		
	}
	
	//------------------------------
	
	
	@RequestMapping(path = "/backend/mypostedallcases", method = RequestMethod.GET) //.load用
	public String MyPostedAllCasesView( ) {
		
		return "MyPostedAllCases";
	}
	

	@PostMapping(path = "/backend/mypostedallcases2/{sort}/{condition}/{nowpage}") //AJAX請求處理，回應JSON，加上條件和排序
	@ResponseBody
	public List<MyPostedAllCasesBean> MyPostedAllCasesData(@PathVariable("sort") Integer sort ,@PathVariable("condition") Integer condition , @PathVariable("nowpage") Integer nowpage ,HttpServletRequest request ) throws ParseException {
		//	var myposted_sort = 1; //0=由舊到新、1=由新到舊 預設1
		//  var myposted_condition = 0; //0=全部、1=上架、2=下架 預設0
		
		Object myid = request.getSession().getAttribute("session_member_id");
		List<MyPostedAllCasesBean> selectMyPostedCases2 = cmService.selectMyPostedCases2( (Integer)myid ,sort , condition, nowpage);
		
		return selectMyPostedCases2 ;
	}
	
	
	
	
	
	
	@PostMapping(path = "/backend/casebackstage/{case_id}") //按下案件管理
	@ResponseBody
	public List<CaseBackStageBean> CaseBackStage(@PathVariable("case_id") Integer caseid ) {
//		System.out.println("接收成功!");
//		String welcom = "casebackstage: " + caseid;
//		System.out.println(welcom);
		List<CaseBackStageBean> caseBackStageManage = cmService.CaseBackStageManage( caseid );
		
		return caseBackStageManage;
		
	}
	

	

	@PostMapping(path = "/backend/hire/{case_id}/{bmember_id}/{price_expected}") //錄取畫師
	@ResponseBody
	public String Hire( @PathVariable("case_id") Integer caseid , @PathVariable("bmember_id") Integer bmemberid , @PathVariable("price_expected") Integer expected  ) {
//		System.out.println("接收成功!");
//		System.out.println("case:" + caseid);
//		System.out.println("bmemid:" + bmemberid);
//		System.out.println("price_expected:" + expected);

		cmService.hirePainter(caseid, bmemberid, expected);
		
		return "OK";
		
	}
	
	@PostMapping(path = "/backend/offthiscase/{offcase_id}") //錄取畫師
	@ResponseBody
	public void OffThisCase( @PathVariable("offcase_id") Integer offcaseid  ) {
//		System.out.println("接收成功!");
//		System.out.println("case:" + caseid);
//		System.out.println("bmemid:" + bmemberid);
//		System.out.println("price_expected:" + expected);
		cmService.OffThisCase(offcaseid);
		
		
		
	}
	
	
	
	//-----------------------------------------------
	@RequestMapping(path = "/backend/mypostedorders", method = RequestMethod.GET) //.load用
	public String MyPostedOrdersView( ) {

		return "MyPostedOrders";
	}
	
	
	
	@PostMapping(path = "/backend/mypostedorders2/{sort}/{condition}/{nowpage}") 
	@ResponseBody
	public List<MyPostedOrdersBean> MyPostedOrdersData( @PathVariable("sort") Integer sort ,@PathVariable("condition") Integer condition , @PathVariable("nowpage") Integer nowpage , HttpServletRequest request ) throws ParseException {
		
		Object myid = request.getSession().getAttribute("session_member_id");
		List<MyPostedOrdersBean> selectMyPostedOrders2 = cmService.selectMyPostedOrders2( (Integer)myid , sort , condition, nowpage );
		
		return selectMyPostedOrders2 ;
	}
	
	
	@PostMapping(path = "/backend/passthestage/{orderid}") //過稿
	public String PassTheStage(@PathVariable("orderid") String orderid  ) {
		
		int orderInt = Integer.parseInt(orderid);
		
		cmService.PassTheStage(orderInt);
		
		
			return "CaseManage2" ;
		
	}
	
	
	
	
	
	@PostMapping(path = "/backend/cancelorder/{orderid}") //終止交易
	public String CancelOrder(@PathVariable("orderid") String orderid ) {
		
		int orderInt = Integer.parseInt(orderid);
		
		cmService.CancelTheOrder(orderInt);
		
		return "CaseManage2" ;
	}
	
	
	@PostMapping(path = "/backend/evaluationa2b") //給評價A給B
	public void EvaluationA2B(@RequestBody EvaluationA2BBean evaa2b ) {
		
		cmService.EvaluationA2B(evaa2b);
		
	}
	
	@PostMapping(path = "/backend/payInfo") //查看對方的匯款資訊
	@ResponseBody
	public PayInfoBean PayInfo(@RequestBody PayInfoIdBean pmemid ) {
		
//		System.out.println(pbmemid.getPmemid());
		PayInfoBean getBmemberPayInfo = cmService.GetBmemberPayInfo(pmemid.getPmemid());
		
		return getBmemberPayInfo;
		
	}
	
	@GetMapping(path = "/backend/headshotdownloader/{memid}")
	public void HeadShotDownloader(@PathVariable("memid") Integer memberid , HttpServletRequest request, HttpServletResponse response) throws IOException {
//		System.out.println(memberid);
		HeadShotBean headShotDownloader = cmService.HeadShotDownloader(memberid);
		String filePath = headShotDownloader.getProfile_pic_path() + "\\" + headShotDownloader.getProfile_pic();
		FileInputStream fis = new FileInputStream(filePath);
		IOUtils.copy(fis, response.getOutputStream()); //由IOUtils來幫我們讀寫，會自己幫我們用暫存、關串流，但檔案超出2G還5G似乎會出事(?)
		
	}
	
	//-------------------------------------------------
	
	@RequestMapping(path = "/backend/myappliedallcases", method = RequestMethod.GET) //.load用
	public String MyAppliedAllCasesView()  {

		
		return "MyAppliedAllCases";
	}
	
	
	
	@PostMapping(path = "/backend/myappliedallcases2/{sort}/{nowpage}") 
	@ResponseBody
	public List<MyAppliedAllCasesBean> MyAppliedAllCasesData(@PathVariable("sort") Integer sort , @PathVariable("nowpage") Integer nowpage , HttpServletRequest request ) throws ParseException {
		
		Object myid = request.getSession().getAttribute("session_member_id");
		List<MyAppliedAllCasesBean> selectMyAppliedAllCases2 = cmService.selectMyAppliedAllCases2( (Integer)myid , sort , nowpage );
		
		return selectMyAppliedAllCases2 ;
	}
	
	
	
	//-------------------------------------------------
	
	
	
	
	
	@RequestMapping(path = "/backend/myappliedorders", method = RequestMethod.GET) //.load用
	public String MyAppliedOrdersView( ) {
		
		return "MyAppliedOrders";
	}
	
	
	

	
	@PostMapping(path = "/backend/myappliedorders2/{sort}/{condition}/{nowpage}") //代做
	@ResponseBody
	public List<MyAppliedOrdersBean> MyAppliedOrdersData( @PathVariable("sort") Integer sort ,@PathVariable("condition") Integer condition , @PathVariable("nowpage") Integer nowpage , HttpServletRequest request ) throws ParseException {
		
		Object myid = request.getSession().getAttribute("session_member_id");
		List<MyAppliedOrdersBean> selectMyAppliedOrders2 = cmService.selectMyAppliedOrders2((Integer)myid ,sort , condition, nowpage );
		
		return selectMyAppliedOrders2 ;
	}
	
	
	
	@PostMapping(path = "/backend/evaluationb2a") //給評價A給B
	public void EvaluationB2A(@RequestBody EvaluationB2ABean evab2a ) {
		
		cmService.EvaluationB2A(evab2a);
		
	}
	
	
	
	@PostMapping(path = "/backend/productuploader") //上傳檔案
	@ResponseBody
	public void ProductUploader(@RequestParam(value="productupload") MultipartFile file,@RequestParam(value="proorderid") Integer orderid,@RequestParam(value="procomment") String comments) throws IOException {
		
		Util01 util01 = new Util01();
		String fileName = util01.fileNameUtil( file.getOriginalFilename());
		String savePath = "C:\\PaintingImg\\Product";
		String finalPath = savePath + "\\" + fileName;
		
		
		//儲存圖片至硬碟
		File saveFile = new File(finalPath);
//		System.out.println("savePath:" + finalPath);
		if (fileName != null && fileName.length() != 0) { 
			file.transferTo(saveFile);
		 }
		
		Product product = new Product();
		product.setOrder_id(orderid);
		product.setProduct_name(fileName);
		product.setProduct_path(savePath);
		product.setPainter_message(comments);
		
		cmService.ProductUpload(product);
		
//		System.out.println(fileName);
//		System.out.println(file);
//		System.out.println(orderid);
//		System.out.println(comments);
		
//		System.out.println("接收成功");
		
		
		
	}
	
	
	@PostMapping(path = "/backend/filecontentb") //檔案內容(AB方共用)
	@ResponseBody
	public List<FileContentSendBeanB> FileContent(@RequestBody FileContentReceiveBeanB fcrbb) {
		
		//System.out.println("接收成功");
//		System.out.println(fcrbb.getOrder_id());
//		System.out.println(fcrbb.getBmember_id());
		List<FileContentSendBeanB> fileContentB = cmService.FileContentB(fcrbb);
		
		return fileContentB;
	}
	
	
	//**************************
	
	@GetMapping(path = "/backend/productimg/{imgfilename}") //檔案內容的圖片(AB共用)
	@ResponseBody
	public void ProductImg(@PathVariable("imgfilename") String imgFileName , HttpServletRequest request, HttpServletResponse response ) throws IOException {
		
//		System.out.println(imgFileName);
		String filePath = "C:\\PaintingImg\\Product" + "\\" + imgFileName;
	
		FileInputStream fis = new FileInputStream(filePath);
		IOUtils.copy(fis, response.getOutputStream()); //由IOUtils來幫我們讀寫，會自己幫我們用暫存、關串流，但檔案超出2G還5G似乎會出事(?)
		
	}
	
	
	

	

	
	
	
	
	
	

	
	
}
