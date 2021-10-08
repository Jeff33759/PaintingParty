package tw.paintingparty.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import tw.paintingparty.model.Member;
import tw.paintingparty.service.MemberService;
import tw.paintingparty.service.PersonContentService;

@Controller
public class PersonContentController {

	@Autowired
	private MemberService mService;
	
	@Autowired
	private PersonContentService personContentService;
	
	//初始頁面
	@RequestMapping(path="/backend/personcontent", method=RequestMethod.GET)
	public String processPersonContent(HttpServletRequest request, Model m) {
		
		HttpSession session = request.getSession();
		int memOneId=(int) session.getAttribute("session_member_id");
		
		m.addAttribute("id", memOneId);
		
		Member mem1 = mService.showLoginUsername();		  
		m.addAttribute("member_name", mem1.getMember_name());
		
		Member oneMem = personContentService.selectOne(memOneId);
				
		if(oneMem.getMember_status().equals("畫師")!=true) {
			m.addAttribute("memberStatusName", "委託者");
		}else {
			m.addAttribute("memberStatusName", "畫師");
			
			int tag1 = 1;
			int tag2 = 8;
					
			m.addAttribute("sTag1", "1");
			m.addAttribute("sTag2", "8");
			m.addAttribute("tagContent1", personContentService.tagSelectOne(tag1).getTag_content());
			m.addAttribute("tagContent2", personContentService.tagSelectOne(tag2).getTag_content());
			
			if(oneMem.getTag_personal().equals("")!=true) {
								
				String[] tagPersonal=oneMem.getTag_personal().split(",");
								
				tag1 = Integer.parseInt(tagPersonal[0]);
				tag2 = Integer.parseInt(tagPersonal[1]);
						
				m.addAttribute("sTag1", tagPersonal[0]);
				m.addAttribute("sTag2", tagPersonal[1]);
				m.addAttribute("tagContent1", personContentService.tagSelectOne(tag1).getTag_content());
				m.addAttribute("tagContent2", personContentService.tagSelectOne(tag2).getTag_content());
		
			}		
			
		}
		
		m.addAttribute("oneMemProfile_content", oneMem.getProfile_content());		
		return "PersonContent";
	}
	
	//painter身分切換
	@RequestMapping(path="/backend/personcontentpainterchange", method=RequestMethod.GET)
	public String processPersonContentPainterChange(HttpServletRequest request, Model m) {
		
		HttpSession session = request.getSession();
		int memOneId=(int) session.getAttribute("session_member_id");
		
		m.addAttribute("id", memOneId);
		
		Member mem1 = mService.showLoginUsername();		  
		m.addAttribute("member_name", mem1.getMember_name());

		personContentService.updateOneMemberStatus(memOneId);
		Member oneMem = personContentService.selectOne(memOneId);
		
		if(oneMem.getMember_status().equals("畫師")!=true) {
			m.addAttribute("memberStatusName", "委託者");
		}else {
			m.addAttribute("memberStatusName", "畫師");
			
			int tag1 = 1;
			int tag2 = 8;
					
			m.addAttribute("sTag1", "1");
			m.addAttribute("sTag2", "8");
			m.addAttribute("tagContent1", personContentService.tagSelectOne(tag1).getTag_content());
			m.addAttribute("tagContent2", personContentService.tagSelectOne(tag2).getTag_content());
			
			if(oneMem.getTag_personal().equals("")!=true) {
								
				String[] tagPersonal=oneMem.getTag_personal().split(",");
								
				tag1 = Integer.parseInt(tagPersonal[0]);
				tag2 = Integer.parseInt(tagPersonal[1]);
						
				m.addAttribute("sTag1", tagPersonal[0]);
				m.addAttribute("sTag2", tagPersonal[1]);
				m.addAttribute("tagContent1", personContentService.tagSelectOne(tag1).getTag_content());
				m.addAttribute("tagContent2", personContentService.tagSelectOne(tag2).getTag_content());
		
			}		
		m.addAttribute("oneMemProfile_content", oneMem.getProfile_content());
			
		}

		m.addAttribute("oneMemProfile_content", oneMem.getProfile_content());
		return "PersonContent";
	}
			
	//圖檔上傳
	@RequestMapping(path="/backend/personcontentchange", method=RequestMethod.POST)
	public String processPersonContentChange(@RequestParam("headShot") MultipartFile mf, @ModelAttribute("oneMemProfile_content") String oneMemProfile_content,HttpServletRequest request, Model m) throws IOException {
		
		//取得連線與JavaBean
		HttpSession session = request.getSession();
		int memOneId=(int) session.getAttribute("session_member_id");
		
		m.addAttribute("id", memOneId);
		
		Member mem1 = mService.showLoginUsername();		  
		m.addAttribute("member_name", mem1.getMember_name());

		Member oneMem = personContentService.selectOne(memOneId);
		
		//判斷身分
		if(oneMem.getMember_status().equals("畫師")!=true) {
			m.addAttribute("memberStatusName", "委託者");
		}else {
			m.addAttribute("memberStatusName", "畫師");
		}

		//取得old大頭貼存檔路徑與檔案
		String odirPath = oneMem.getProfile_pic_path();
		String oFileName= oneMem.getProfile_pic();
		String ofilePath=odirPath+"\\"+oFileName;
		
		System.out.println("oFileName="+oFileName);
		
		//日期轉換成字串
		Date date = new Date();
	    DateFormat dateformat = new SimpleDateFormat("yyyyMMddHHmmss");
	    String dateString = dateformat.format(date).toString();
	    
	    //定義存放路徑與檔案名稱並存檔
	    String fileName = mf.getOriginalFilename();
	    System.out.println("fileName="+fileName);
	    
	    if(fileName!="") {
		    String dirPath="C:\\PaintingImg\\HeadShot";
		    String updateFileName=dateString+fileName;
			String filePath=dirPath+"\\"+updateFileName;
			File imageHeadShot = new File(filePath);		
			mf.transferTo(imageHeadShot);
			
			//將存放路徑與檔案名稱update至資料庫
			personContentService.updateOneProfilePic(memOneId, updateFileName);
			personContentService.updateOneProfilePicPath(memOneId, dirPath);
			
			//刪除資料夾舊檔
			if(oFileName.equals("default.jpg")!=true) {
				File oimageHeadShot = new File(ofilePath);
				oimageHeadShot.delete();
			}
	    }
		
        //自我簡介變動	
		personContentService.updateOneProfileContent(memOneId, oneMemProfile_content);
		m.addAttribute("oneProfile_content", oneMemProfile_content);
				
		//畫家自定義標籤
		
		if(oneMem.getMember_status().equals("畫師")==true) {
									
			String sTag1=request.getParameter("tag1");
			String sTag2=request.getParameter("tag2");
			String tagPersonal=sTag1+","+sTag2;
			
			int tag1 = Integer.parseInt(request.getParameter("tag1"));
			int tag2 = Integer.parseInt(request.getParameter("tag2"));
					
			m.addAttribute("sTag1", sTag1);
			m.addAttribute("sTag2", sTag2);
			m.addAttribute("tagContent1", personContentService.tagSelectOne(tag1).getTag_content());
			m.addAttribute("tagContent2", personContentService.tagSelectOne(tag2).getTag_content());
			
			//Update tagPersonal from member table
			personContentService.updateTagPersonal(memOneId, tagPersonal);
			
			//delete painter_tag where memOneId
			personContentService.deletePainterTag(memOneId);
			
			//insert painter_tag where memOneId
			personContentService.insertPainterTag(memOneId, tag1);
			personContentService.insertPainterTag(memOneId, tag2);
		}
								
		return "PersonContent";
	}
	
	//抓取圖檔與圖檔顯示
	@RequestMapping(path="/backend/personcontentpersoncontentimage", method = RequestMethod.GET)
	public void processResponseImg(HttpServletRequest request, HttpServletResponse response, Model m) throws IOException {
		HttpSession session = request.getSession();
		int memOneId=(int) session.getAttribute("session_member_id");
		
		m.addAttribute("id", memOneId);
		
		Member mem1 = mService.showLoginUsername();		  
		m.addAttribute("member_name", mem1.getMember_name());
		
		Member oneMem = personContentService.selectOne(memOneId);
		String profilePicPath=oneMem.getProfile_pic_path();
		String profilePic=oneMem.getProfile_pic();		
		String imagePath=profilePicPath+"\\"+profilePic;
		
		InputStream in = new FileInputStream(new File(imagePath));
		IOUtils.copy(in, response.getOutputStream());
	}
	
}
