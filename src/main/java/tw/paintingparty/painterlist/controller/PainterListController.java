package tw.paintingparty.painterlist.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.paintingparty.model.Cases;
import tw.paintingparty.model.Member;
import tw.paintingparty.model.PainterTag;
import tw.paintingparty.painterlist.model.PainterListDAO;
import tw.paintingparty.painterlist.service.PainterListPageService;
import tw.paintingparty.painterlist.service.PainterListService;
import tw.paintingparty.service.MemberService;

@Controller
public class PainterListController {

	@Autowired
	private PainterListService plService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private PainterListPageService plpService;
	
	@RequestMapping(path = "/painterlist", method = RequestMethod.GET)
	public String painterListAction(Model m , HttpServletRequest request , HttpServletResponse response) {

//		Long Member = plpService.Pagetotal();
//
//		Long totalPages;
//
//		if (Member % 8 == 0) {
//			Long total = (Member / 8);
//			totalPages = total;
//		} else {
//			Long total = (Member / 8) + 1;
//			totalPages = total;
//		}
//
//		m.addAttribute("totalCases", Member);
//		m.addAttribute("totalPages", totalPages);
//		
		  Member mem1 = mService.showLoginUsername();
		  
		  m.addAttribute("member_name", mem1.getMember_name());

		return "PainterList";
	}

//	@RequestMapping(path = "/SelectAll", method = RequestMethod.POST)
//	@ResponseBody
//	public List<Member> SelectAllMember() {
//
//		return plService.SelectAllMember();

//	}
	


	@RequestMapping(path = "/queryPage/{pageNo}", method = RequestMethod.POST)
	@ResponseBody
	public List<Member> QueryPages(@PathVariable("pageNo") int pageNo) {

		return plpService.QueryPage(pageNo - 1);

	}

	@RequestMapping(path = "/painterimage/{memberId}", method = RequestMethod.GET)
	// 畫師照片顯示
	public void prosessPainterImgById(@PathVariable("memberId") int memberId , HttpServletRequest request, HttpServletResponse response, Model m)
			throws IOException {
		Member oneMem = plService.selectId(memberId);
		String profilePicPath = oneMem.getProfile_pic_path();
		String profilePic = oneMem.getProfile_pic();
		String imagePath = profilePicPath + "\\" + profilePic;
		


		InputStream in = new FileInputStream(new File(imagePath));
		IOUtils.copy(in, response.getOutputStream());
	}

	@RequestMapping("search")
	@ResponseBody
	// 具體方法
	public List<Member> getSearchResourcesProfiles(HttpServletRequest request) {
		String searchValue1 = request.getParameter("Select1");
		String searchValue2 = request.getParameter("Select2");
		List<Member> lstMember = plService.search(searchValue1, searchValue2);

		return lstMember;
	}
}
