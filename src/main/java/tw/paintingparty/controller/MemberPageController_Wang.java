package tw.paintingparty.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.metrics.StartupStep.Tags;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.paintingparty.model.Cases;
import tw.paintingparty.model.EvaluationA2B;
import tw.paintingparty.model.EvaluationB2A;
import tw.paintingparty.model.Member;
import tw.paintingparty.model.PainterTag;
import tw.paintingparty.service.CasesService;
import tw.paintingparty.service.EvaluationA2BService;
import tw.paintingparty.service.EvaluationB2AService;
import tw.paintingparty.service.MemberService;
import tw.paintingparty.service.TagService;
import tw.paintingparty.util.DateFormat_forWang;

@Controller
public class MemberPageController_Wang {
	
	@Autowired
	private MemberService mService;
	@Autowired
	private CasesService caseService;
	@Autowired
	private TagService tagService;
	@Autowired
	private EvaluationA2BService evaluationA2BService;
	@Autowired
	private EvaluationB2AService evaluationB2AService;
	
//	@RequestMapping(path="/painterlist")
//	public String xxx() {
//		return "PainterList";
//	}

//	@RequestMapping(path="/memberpage/{id}",method = RequestMethod.POST)
//	public String sendAjax(@PathVariable("id") int memberId,@RequestParam(name="presentpage") String presentpage,Model m) {
//		//讀取委託中案件
//		List<Cases> cases = caseService.selectCaseIdByMemberId(memberId);
//				
//		JSONObject mapCase=new JSONObject();
//		ArrayList<JSONObject> caseArr = new ArrayList<JSONObject>();
//		int perPage=4; //每頁的筆數
//		int caseIdx = 0;
//		for(int i =0;i<cases.size();i++) {
//			String case_title = cases.get(i).getCase_title();
//			
//			Date upload_date1 = cases.get(i).getUpload_date();
//			String upload_date = new DateFormat_forWang().dateFormat(upload_date1); //把日期格式化
//			
//			String case_tag = cases.get(i).getCase_tag();
//			
//			JSONObject json = new JSONObject();
//			json.put("case_title", case_title);
//			json.put("upload_date", upload_date);
//			json.put("case_tag", strAdd(case_tag));
//			caseArr.add(json);
//			mapCase.put(Integer.toString(caseIdx), caseArr); // 每四個case一個陣列
//			if (caseArr.size() == perPage) { //因為==perpage 四個就滿了,所以要new一個新的ArrayList<JSONObject>()
//				caseArr = new ArrayList<JSONObject>();
//				caseIdx++;
//			} 
//		}
//		String xxx=presentpage;
//		m.addAttribute("mapCase", mapCase.getJSONArray(presentpage));
//		return "MemberPage";
//	}
	
	
	@RequestMapping(path="/memberpage/{id}")
	public String Memberpage(@PathVariable("id") int memberId,Model m,HttpServletRequest request) {
		//this for 右上角username
		Member mem1 = mService.showLoginUsername();
		m.addAttribute("member_name_login", mem1.getMember_name());
		//有可能我登入a帳號, 但拜訪b帳號的memberpage
		m.addAttribute("member_id",memberId ); //這是url傳送過來的id
		Member memberForVisited = mService.SelectMemberById(memberId); // 拜訪的member
		String member_name = memberForVisited.getMember_name();
		m.addAttribute("member_name",member_name);
		
		List<PainterTag> tagId = mService.selectTagIdByMemberId(memberId);
		Map<Integer,String > map = new HashMap<Integer,String>(); //將結果存入map
		for(int i=0;i<tagId.size();i++) {
			PainterTag painterTag=tagId.get(i);
			String tag_content = painterTag.getTagbean().getTag_content();
			map.put(i, tag_content);
		}
		m.addAttribute("map",map);
		m.addAttribute("tagIdSize", tagId.size());//for jsp 讀取長度
		
		
		//讀取空閒狀態
		String member_status = memberForVisited.getMember_status();
		String schedule = memberForVisited.getSchedule();
		m.addAttribute("member_status", member_status);
		m.addAttribute("schedule", schedule);

		//讀取自我介紹
		String profile_content = memberForVisited.getProfile_content();
		m.addAttribute("profile_content", profile_content);
		
		
		
		
		//讀取委託中案件
		List<Cases> cases = caseService.selectCaseIdByMemberId(memberId);
		
		JSONObject mapCase=new JSONObject();
		ArrayList<JSONObject> caseArr = new ArrayList<JSONObject>();
		int perPage=4; //每頁的筆數
		int caseIdx = 0;
		for(int i =0;i<cases.size();i++) {
			String case_title = cases.get(i).getCase_title();
			Integer case_id = cases.get(i).getCase_id();
			
			Date upload_date1 = cases.get(i).getUpload_date();
			String upload_date = new DateFormat_forWang().dateFormat(upload_date1); //把日期格式化
			
			String case_tag = cases.get(i).getCase_tag();
			
			JSONObject json = new JSONObject();
			json.put("case_title", case_title);
			json.put("case_id", case_id);
			json.put("upload_date", upload_date);
			json.put("case_tag", strAdd(case_tag));
			caseArr.add(json);
			mapCase.put(Integer.toString(caseIdx), caseArr); // 每四個case一個陣列
			if (caseArr.size() == perPage) { //因為==perpage 四個就滿了,所以要new一個新的ArrayList<JSONObject>()
				caseArr = new ArrayList<JSONObject>();
				caseIdx++;
			} 
		}

		m.addAttribute("mapCase", mapCase);
		
//		if(mapCase.length() != 0) {
//			m.addAttribute("mapCaseSize", mapCase.length());//for jsp 讀取長度			
//		}else {
//			m.addAttribute("mapCaseSize", 0);
//			
//		}
		
//		if(mapTag_content.size()!=0) {
//			m.addAttribute("mapTag_contentSize", mapTag_content.size()-1);			
//		}else {
//			m.addAttribute("mapTag_contentSize", 0);
//			
//			
//		}
//		m.addAttribute("mapTag_content", mapTag_content);
		
		
		
		Integer totalCount = caseService.countBymemberIdService(memberId); //某會員總委託筆數, 要寫防止0筆
		int totalPage=0;
		if(totalCount!=0) {
			
			if(totalCount%perPage==0) {
				totalPage =totalCount/perPage;
			}else {
				totalPage =(totalCount/perPage)+1;
			}
		}else {
			totalPage=1;
		}
		m.addAttribute("totalPage", totalPage);
		
		//-------------------------------------------
		//委託評價
		//被委託
		List<EvaluationA2B> evaBymember_id_r = evaluationA2BService.selectEvaluationA2BBymember_id_rService(memberId);
		JSONObject evaJson=new JSONObject();
		ArrayList<JSONObject> evaArr = new ArrayList<JSONObject>();
		
		int evaIdx=0;
		for(int i=0;i<evaBymember_id_r.size();i++) {
			String memNameS = evaBymember_id_r.get(i).getMemberbean_s().getMember_name();
			Integer memIdS = evaBymember_id_r.get(i).getMemberbean_s().getMember_id();
			String eva_content = evaBymember_id_r.get(i).getEvaluation_content();
			String evaluation_star = evaBymember_id_r.get(i).getEvaluation_star(); //讀取好評壞評
			
			
			JSONObject json=new JSONObject();
			json.put("memNameS", memNameS);
			json.put("eva_content", eva_content);
			json.put("memIdS", memIdS);
			json.put("evaluation_star", evaluation_star);
			
			evaArr.add(json);
			evaJson.put(Integer.toString(evaIdx) , evaArr);
			if(evaArr.size()==perPage) {
				evaArr=new ArrayList<JSONObject>();
				evaIdx++;
			}
		}
		m.addAttribute("evaJson",evaJson);
		
		Integer countByMemberIdR = evaluationA2BService.countByMemberIdR(memberId);
		int totalPageForEva=0;
		if(countByMemberIdR!=0) {
			
			if(countByMemberIdR%perPage==0) {
				totalPageForEva =countByMemberIdR/perPage;
			}else {
				totalPageForEva =(countByMemberIdR/perPage)+1;
			}
		}else {
			totalPageForEva=1;
		}
		m.addAttribute("totalPageForEva", totalPageForEva);
		
		
		
		
		//--------------------------------
		//讀取委託他人
		List<EvaluationB2A> evab2aBymember_id_s = evaluationB2AService.selectEvaluationB2ABymember_id_sService(memberId);
		JSONObject evab2aJson=new JSONObject();
		ArrayList<JSONObject> evab2aArr = new ArrayList<JSONObject>();
		
		int evab2aIdx=0;
		for(int i=0;i<evab2aBymember_id_s.size();i++) {
			String memNameR = evab2aBymember_id_s.get(i).getMemberbean_r().getMember_name();
			Integer memIdR = evab2aBymember_id_s.get(i).getMemberbean_r().getMember_id();
			Integer case_id = evab2aBymember_id_s.get(i).getCasesbean().getCase_id();
			String evaB2AContent = evab2aBymember_id_s.get(i).getEvaluation_content();
			//A2B的評價內容，狀況1: b2a先給評價,但 a2b未給評價會報錯
			
//			String evaA2BContent=null;
//			if(evaluationA2BService.evaluationA2BContentService(case_id)!=null) {
//				evaA2BContent = evaluationA2BService.evaluationA2BContentService(case_id);
//			}else {
//				evaA2BContent="尚未給評價";
//			}
			String evaA2BContent = evaluationA2BService.evaluationA2BContentService(case_id);
			//new 一個json放四個data
			JSONObject json=new JSONObject();
			json.put("memNameR", memNameR);
			json.put("memIdR", memIdR);
			json.put("evaB2AContent", evaB2AContent);
			json.put("evaA2BContent", evaA2BContent);
			
			evab2aArr.add(json);
			evab2aJson.put(Integer.toString(evab2aIdx),evab2aArr );
			if(evab2aArr.size()==perPage) {
				evab2aArr=new ArrayList<JSONObject>();
				evab2aIdx++;
			}
			
			
		}
		m.addAttribute("evab2aJson", evab2aJson);
		
		
		//---------------委託他人頁數
		Integer countByMemberIdS = evaluationB2AService.countByMemIdSservice(memberId);
		int totalPageForEvab2a=0;
		if(countByMemberIdS!=0) {
			
			if(countByMemberIdS%perPage==0) {
				totalPageForEvab2a =countByMemberIdS/perPage;
			}else {
				totalPageForEvab2a =(countByMemberIdS/perPage)+1;
			}
		}else {
			totalPageForEvab2a=1;
		}
		m.addAttribute("totalPageForEvab2a", totalPageForEvab2a);
		
		
		
		
		return "MemberPage";
		
	}
	
	private String strAdd(String tags) {
		String resultStr = "";
		String[] tokens = tags.split(","); // 拿到標籤,還需要split
		for(int j =0; j < tokens.length; j++) {								
			String tag_content = tagService.returnTagService(Integer.parseInt(tokens[j])).getTag_content();
			resultStr += tag_content + " ";
		}
		return resultStr;
	}
	
	
	@RequestMapping(path="/memberpageshowpic/{id}") 
	//從painterlist.和CasePage.和casemanage.jsp,傳來的id
	
	public void memberPageShowpic(@PathVariable("id") int memberId,Model m,HttpServletResponse response) throws IOException {

		
		//抓會員大頭貼
		Member mem1 = mService.SelectMemberById(memberId);
		String profile_pic_path = mem1.getProfile_pic_path();
		String profile_pic = mem1.getProfile_pic();
		String imagePath=profile_pic_path+"\\"+profile_pic;
//		m.addAttribute("imagePath", imagePath);
		
		FileInputStream in = new FileInputStream(new File(imagePath));
		IOUtils.copy(in, response.getOutputStream());
		
//		return "MemberPage";
	}
}
