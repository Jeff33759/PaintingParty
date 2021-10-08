package tw.paintingparty.chatroom.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.paintingparty.casemanage.model.MyPostedAllCasesBean;
import tw.paintingparty.chatroom.model.ChatRoomDAO;
import tw.paintingparty.chatroom.model.ChatRoomService;
import tw.paintingparty.chatroom.model.MeAndWhoChatHistoryBean;
import tw.paintingparty.chatroom.model.MyChatConnBean;
import tw.paintingparty.model.ChatConn;
import tw.paintingparty.model.Member;
import tw.paintingparty.service.MemberService;
import tw.teamUtil.Util01;

@Controller
public class ChatRoomController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private ChatRoomService crService;
	
	@GetMapping(path = "/backend/chatroom") 
	public String ChatRoom(Model m) {
		Member mem1 = mService.showLoginUsername();
		m.addAttribute("member_name", mem1.getMember_name());
		
		return "ChatRoom" ;
	}
	
	
	@GetMapping(path = "/backend/gotochat/{toid}") //按下思訓，建立連結
	public void GoToChat( @PathVariable("toid") Integer toid , HttpServletRequest request , HttpServletResponse response) throws IOException, ParseException {
		
		Util01 util01 = new Util01();
		Member mem1 = mService.showLoginUsername();
		Object myid = request.getSession().getAttribute("session_member_id");
		util01.insertNewConnToDBToMe( (Integer) myid, toid);
		
		

		response.sendRedirect( request.getContextPath() + "/backend/chatroom");
		
	}
	
	
	@PostMapping(path = "/backend/chatconnlist") 
	@ResponseBody
	public List<MyChatConnBean> ChatConnList( HttpServletRequest request ) { //得到我與誰連接
		
		
		Object myid = request.getSession().getAttribute("session_member_id");
		List<MyChatConnBean> selectAllMyConn = crService.selectAllMyConn( (Integer)myid );
		
		return selectAllMyConn ;
	}
	
	
	@PostMapping(path = "/backend/chathistory/{toid}") 
	@ResponseBody
	public List<MeAndWhoChatHistoryBean> ChatHistory( @PathVariable("toid") Integer toid , HttpServletRequest request ) { //得到我與那個連接者的歷史訊息
		
		Object myid = request.getSession().getAttribute("session_member_id");
		
		List<MeAndWhoChatHistoryBean> selectChatHistory = crService.selectChatHistory( (Integer)myid , toid );
		
		return selectChatHistory ;
	}
	
	
	@PostMapping(path = "/backend/deletechatconnhavenotchat/{toid}") 
	@ResponseBody
	public void deleteChatConnHaveNotChat( @PathVariable("toid") Integer toid , HttpServletRequest request ) { 
		//當外面點下思訓按鈕，會建立一個連結，但若彼此都沒說過話，那就在關掉WS十，刪除此連結，避免一直狂點，連結越來越長，但都是沒用的連結。
		//不能寫在WS的ON CLOSE方法哩，因為我們一連近來，還沒跟任何人建立斯療時，TOID是0，但資料庫根本沒這資料，會造成錯誤，因此在前端ONCLOSER十，用AJAX呼叫此方法
		//**暫無用到**
		Util01 util01 = new Util01();
		
		Object myid = request.getSession().getAttribute("session_member_id");
		util01.deleteChatConnNotChat((Integer)myid, toid);
		
	}
	
	//----------
	
	//下載大頭照的URL:/backend/headshotdownloader/{memid}，在CASEMANAGE的控制器
	
	//----------
	

}
